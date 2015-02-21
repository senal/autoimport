using Castle.MicroKernel.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BorderExpress.AutoImport.Web.Infrastructure
{
    public class WindsorRepositoryInstaller : IWindsorInstaller
    {
        public void Install(Castle.Windsor.IWindsorContainer container, Castle.MicroKernel.SubSystems.Configuration.IConfigurationStore store)
        {
            container.Register(
                Classes.FromAssemblyNamed("BorderExpress.AutoImport.Dal")
                .InNamespace("BorderExpress.AutoImport.Dal")
                .WithService.DefaultInterfaces()
                .LifestyleTransient()
                );
        }
    }
}