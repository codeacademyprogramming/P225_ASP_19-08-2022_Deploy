#pragma checksum "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Shared\_SearchPartial.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5daa6da1c6bc02e24417a666a97daa594d151e78"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared__SearchPartial), @"mvc.1.0.view", @"/Views/Shared/_SearchPartial.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5daa6da1c6bc02e24417a666a97daa594d151e78", @"/Views/Shared/_SearchPartial.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a82ed0cd9bbcf7ab3fa26cee04f6a6eaca1e6f5f", @"/Views/_ViewImports.cshtml")]
    public class Views_Shared__SearchPartial : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Product>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Shared\_SearchPartial.cshtml"
 foreach (Product product in Model)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <li class=\"list-group-item\">\r\n        <img style=\"width:50px;\"");
            BeginWriteAttribute("src", " src=\"", 130, "\"", 176, 2);
            WriteAttributeValue("", 136, "assets/images/product/", 136, 22, true);
#nullable restore
#line 6 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Shared\_SearchPartial.cshtml"
WriteAttributeValue("", 158, product.MainImage, 158, 18, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" alt=\"Alternate Text\" />\r\n        ");
#nullable restore
#line 7 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Shared\_SearchPartial.cshtml"
   Write(product.Title);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n    </li>\r\n");
#nullable restore
#line 9 "C:\Users\hamid.mammadov\Desktop\P225Allup\P225Allup\Views\Shared\_SearchPartial.cshtml"
}

#line default
#line hidden
#nullable disable
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Product>> Html { get; private set; }
    }
}
#pragma warning restore 1591
