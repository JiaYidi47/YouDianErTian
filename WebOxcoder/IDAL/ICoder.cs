﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface ICoder
    {
        //bool checkCoder(String coderEmail);
        bool addCoder(string email);
    }
}
