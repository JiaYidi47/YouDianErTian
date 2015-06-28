using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IBLL;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class User : IBLL.IUser
    {
        private static readonly IDAL.IUser dal = DALFactory.DataAccess.CreateUser();

        public void login() { }

        int IUser.getCount()
        {
            return dal.getCount();
        }

        IList<users> IUser.getTodayUser()
        {
            return dal.getTodayUser();
        }


    }
}
