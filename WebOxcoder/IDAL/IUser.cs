﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IUser
    {
        int getCount();
        IList<users> getTodayUser();
        int signIn(String userEmail,String userPassword);
        bool addUser(string email, string password);
    }
}
