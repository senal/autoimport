using BorderExpress.AutoImport.Web.Infrastructure;
using MvcApplication3;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace BorderExpress.AutoImport.Web
{
    public class MvcApplication : System.Web.HttpApplication
    {
        private IApplicationIoc _ioc;

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            _ioc = new WindsorBootstrapContainer();
            _ioc.Bootstrap();
        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Application_End()
        {
            if (_ioc != null)
            {
                _ioc.Dispose();
            }
        }
    }
}
