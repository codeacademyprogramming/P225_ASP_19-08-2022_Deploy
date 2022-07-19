using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using P225Allup.DAL;
using P225Allup.Models;
using P225Allup.ViewModels.Home;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace P225Allup.Controllers
{
    public class HomeController : Controller
    {
        private readonly AppDbContext _context;
        private readonly UserManager<AppUser> _userManager;

        public HomeController(AppDbContext context, UserManager<AppUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            HomeVM homeVM = new HomeVM
            {
                Sliders = await _context.Sliders.ToListAsync(),
                Categories = await _context.Categories.Where(c => c.IsMain).ToListAsync(),
                BestSeller = await _context.Products.Where(p=>p.IsBestSeller).ToListAsync(),
                Feature = await _context.Products.Where(p => p.IsFeature).ToListAsync(),
                NewArrival = await _context.Products.Where(p => p.IsNewArrivel).ToListAsync()
            };

            return View(homeVM);
        }

        [Authorize(Roles ="Member")]
        public async Task<IActionResult> Chat()
        {
            List<AppUser> users = await _userManager.Users.Where(u => !u.IsAdmin && u.UserName != User.Identity.Name).ToListAsync();

            return View(users);
        }

        [Authorize(Roles ="Member")]
        public async Task<IActionResult> GetMessages(string userId)
        {
            if (string.IsNullOrWhiteSpace(userId))
            {
                return BadRequest();
            }

            if (!await _userManager.Users.AnyAsync(u=>u.Id == userId))
            {
                return NotFound();
            }

            AppUser sender = await _userManager.FindByNameAsync(User.Identity.Name);

            List<Message> messages = await _context.Messages
                .Include(m=>m.Sender)
                .Where(m => !m.IsDeleted && (m.SenderId == sender.Id || m.RecieverId == sender.Id) && (m.SenderId == userId || m.RecieverId == userId))
                .OrderBy(m => m.Id)
                .ToListAsync();

            return PartialView("_MessageListPartial",messages);
        }

        //public IActionResult CreateCoockie()
        //{
        //    HttpContext.Response.Cookies.Append("p225", "Hello World P225 Coockie");

        //    return RedirectToAction("index");
        //}

        //public IActionResult GetCoockie()
        //{
        //    string coockiecontent = HttpContext.Request.Cookies["p225"];

        //    return Content(coockiecontent);
        //}

        //public async Task<IActionResult> CreateSession()
        //{
        //    HttpContext.Session.SetString("p225", "Hello World P225 Session");

        //    return RedirectToAction("Index");
        //}

        //public async Task<IActionResult> GetSession()
        //{
        //    string sessioncontent = HttpContext.Session.GetString("p225");

        //    return Content(sessioncontent);
        //}
    }
}
