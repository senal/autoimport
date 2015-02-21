using BorderExpress.AutoImport.Core;
using BorderExpress.AutoImport.Web.Security;
using Castle.MicroKernel.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BorderExpress.AutoImport.Web.Infrastructure
{
    public class WindsorServiceInstaller : IWindsorInstaller
    {
        public void Install(Castle.Windsor.IWindsorContainer container, Castle.MicroKernel.SubSystems.Configuration.IConfigurationStore store)
        {
            //This follows the IXxxService/XxxService convention
            container.Register(
                Classes.FromAssemblyNamed("BorderExpress.AutoImport.Core")
                .InNamespace("BorderExpress.AutoImport.Core")
                .WithService.DefaultInterfaces()
                .LifestyleTransient()
                );

        }
    }
}