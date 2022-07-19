using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using P225Allup.DAL;
using P225Allup.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace P225Allup.Hubs
{
    public class ChatHub : Hub
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly AppDbContext _context;

        public ChatHub(UserManager<AppUser> userManager, AppDbContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        public override Task OnConnectedAsync()
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                AppUser appUser = _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.UserName == Context.User.Identity.Name).Result;

                if (appUser != null)
                {
                    appUser.ConnectionId = Context.ConnectionId;
                    appUser.ConnectedAt = null;

                    IdentityResult ıdentityResult = _userManager.UpdateAsync(appUser).Result;

                    Clients.All.SendAsync("online", appUser.Id);
                }
            }

            return base.OnConnectedAsync();
        }

        public override Task OnDisconnectedAsync(Exception exception)
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                AppUser appUser = _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.UserName == Context.User.Identity.Name).Result;

                if (appUser != null)
                {
                    appUser.ConnectionId = null;
                    appUser.ConnectedAt = DateTime.UtcNow.AddHours(4);

                    IdentityResult ıdentityResult = _userManager.UpdateAsync(appUser).Result;

                    Clients.All.SendAsync("ofline", appUser.Id);
                }
            }

            return base.OnDisconnectedAsync(exception);
        }

        public async Task SendMessage(string recieverId, string msg)
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                AppUser sender = await _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.UserName == Context.User.Identity.Name);

                if (sender != null)
                {
                    AppUser reciever = await _userManager.Users.FirstOrDefaultAsync(u => !u.IsAdmin && u.Id == recieverId);

                    if (reciever != null )
                    {
                        Message message = new Message
                        {
                            Content = msg,
                            CreatedAt = DateTime.UtcNow.AddHours(4),
                            IsDeleted = false,
                            IsRead = false,
                            RecieverId = reciever.Id,
                            SenderId = sender.Id
                        };

                        await _context.Messages.AddAsync(message);
                        await _context.SaveChangesAsync();

                        if (reciever.ConnectionId != null)
                        {
                            await Clients.Client(reciever.ConnectionId).SendAsync("privatemessage", msg, sender.Id);
                        }
                    }
                }
            }
        }
    }
}
