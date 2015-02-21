﻿using BorderExpress.AutoImport.Web.Security;
using Castle.MicroKernel.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebMatrix.WebData;

namespace BorderExpress.AutoImport.Web.Infrastructure
{
    public class WindsorMembershipInstaller:IWindsorInstaller

    {
        public void Install(Castle.Windsor.IWindsorContainer container, Castle.MicroKernel.SubSystems.Configuration.IConfigurationStore store)
        {
           
            container.Register(
               Component.For<CustomMembershipProvider>()
               );
           
        }
    }
}