﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Common.Interfaces
{
    public interface IProjectConfiguration
    {
        string ConnectionString();

        //temp method to test DI
        string Print();
    }
}
