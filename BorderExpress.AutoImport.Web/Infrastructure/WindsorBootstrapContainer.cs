using BorderExpress.AutoImport.Web.Security;
using Castle.Windsor;
using Castle.Windsor.Installer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BorderExpress.AutoImport.Web.Infrastructure
{
    public class WindsorBootstrapContainer :IApplicationIoc
    {
        private IWindsorContainer _container;

        public void Bootstrap()
        {
            _container = new WindsorContainer()
            .Install(FromAssembly.This());

            _container.Kernel.ComponentModelBuilder.AddContributor(new RequireUserServiceProperties());

            var controlFactory = new WindsorControllerFactory(_container.Kernel);

            ControllerBuilder.Current.SetControllerFactory(controlFactory);

        }

        public void Dispose()
        {
            if (_container != null)
                _container.Dispose();
        }
    }
}