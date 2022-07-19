#pragma checksum "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "9ee2004875a9f4a07e1acf66eb073154da8d1b50"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Order_Index), @"mvc.1.0.view", @"/Views/Order/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 2 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\_ViewImports.cshtml"
using P225Allup.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\_ViewImports.cshtml"
using P225Allup.ViewModels.Home;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\_ViewImports.cshtml"
using P225Allup.ViewModels.Basket;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\_ViewImports.cshtml"
using P225Allup.Interfaces;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\_ViewImports.cshtml"
using P225Allup.ViewModels.OrderViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\_ViewImports.cshtml"
using P225Allup.ViewModels.AccountViewModels;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"9ee2004875a9f4a07e1acf66eb073154da8d1b50", @"/Views/Order/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a82ed0cd9bbcf7ab3fa26cee04f6a6eaca1e6f5f", @"/Views/_ViewImports.cshtml")]
    public class Views_Order_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<OrderVM>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
  
    ViewData["Title"] = "Index";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<!--====== Breadcrumb Part Start ======-->

<div class=""breadcrumb-area"">
    <div class=""container-fluid custom-container"">
        <nav aria-label=""breadcrumb"">
            <ol class=""breadcrumb"">
                <li class=""breadcrumb-item""><a href=""index.html"">Home</a></li>
                <li class=""breadcrumb-item active"">Checkout</li>
            </ol>
        </nav>
    </div> <!-- container -->
</div>

<!--====== Breadcrumb Part Ends ======-->
<!--====== Checkout Part Start ======-->

<section class=""checkout-area pt-10"">
    <div class=""container-fluid custom-container"">
        <div class=""row"">
            <div class=""col-xl-8 col-lg-7"">
                <div class=""checkout-form"">
                    ");
#nullable restore
#line 27 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
               Write(await Html.PartialAsync("_OrderChecoutPartial",Model.Order ));

#line default
#line hidden
#nullable disable
            WriteLiteral(@" 
                </div>
            </div>
            <div class=""col-xl-4 col-lg-5"">
                <div class=""checkout-total-wrapper mt-30"">
                    <h4 class=""allup-title"">Cart Total</h4>
                    <div class=""checkout-total mt-30"">
                        <h4 class=""title"">Product  <span>Total</span></h4>
                        <ul>
");
#nullable restore
#line 36 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
                             foreach (BasketVM basketVM in Model.BasketVMs)
                            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                <li>\r\n                                    <p class=\"total-value\">");
#nullable restore
#line 39 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
                                                      Write(basketVM.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral(" X ");
#nullable restore
#line 39 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
                                                                        Write(basketVM.Count);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                                    <p class=\"total-amount\">€");
#nullable restore
#line 40 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
                                                         Write(basketVM.Count * basketVM.Price);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                                </li>\r\n");
#nullable restore
#line 42 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
                            }

#line default
#line hidden
#nullable disable
            WriteLiteral("                        </ul>\r\n                        <div class=\"checkout-total-sub\">\r\n                            <p class=\"total-value\">Sub Total</p>\r\n                            <p class=\"total-amount\">€");
#nullable restore
#line 46 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
                                                 Write(Model.BasketVMs.Sum(b=>b.ExTax * b.Count) + Model.BasketVMs.Sum(b=>b.Count * b.Price));

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                        </div>\r\n                        <h4 class=\"title mt-15\">Product  <span>€");
#nullable restore
#line 48 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Order\Index.cshtml"
                                                            Write(Model.BasketVMs.Sum(b=>b.ExTax * b.Count) + Model.BasketVMs.Sum(b=>b.Count * b.Price));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</span></h4>
                    </div>
                </div>

                <div class=""checkout-btn"">
                    <button form=""checkoutform"" type=""submit"" class=""main-btn main-btn-2"" href=""#"">Place Order</button>
                </div>
            </div>
        </div>
    </div>
</section>

<!--====== Checkout Part Ends ======-->");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<OrderVM> Html { get; private set; }
    }
}
#pragma warning restore 1591