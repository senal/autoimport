using BorderExpress.AutoImport.Core.Interfaces;
using Castle.MicroKernel.ModelBuilder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BorderExpress.AutoImport.Web.Infrastructure
{
    public class RequireUserServiceProperties : IContributeComponentModelConstruction
    {
        public void ProcessModel(Castle.MicroKernel.IKernel kernel, Castle.Core.ComponentModel model)
        {
            model.Properties
                .Where(p => p.Dependency.TargetItemType == typeof(IUserService))
                .All(p => p.Dependency.IsOptional = false);

           
        }
    }
}