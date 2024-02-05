using System;
using System.Collections.Generic;
using System.Reflection;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace WebAppDemo1
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("Register","auth/register", "~/RegistrationForm.aspx");
            routes.MapPageRoute("login", "auth/login", "~/UserForm.aspx");
            routes.MapPageRoute("Controllers", "controls", "~/AllServerControllers.aspx");
            routes.MapPageRoute("Counter1", "counter/basic", "~/IncrementDecrement.aspx");
            routes.MapPageRoute("Counter2", "counter/dynamic", "~/DynamicCounter.aspx");
            
        }
    }
}
