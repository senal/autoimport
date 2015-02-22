using BorderExpress.AutoImport.Web.Infrastructure;
using Castle.Windsor;
using Castle.Windsor.Installer;
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
    public class MvcApplication : System.Web.HttpApplication, IContainerAccessor
    {
        private static  IWindsorContainer _container;

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            // Ioc container registration.
            _container = new WindsorContainer()
            .Install(FromAssembly.This());
            var controlFactory = new WindsorControllerFactory(_container.Kernel);

            ControllerBuilder.Current.SetControllerFactory(controlFactory);


        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Application_End()
        {
            if (_container != null)
            {

                _container.Dispose();
            }
        }

        public IWindsorContainer Container
        {
            get { return _container; }
        }
    }
}
