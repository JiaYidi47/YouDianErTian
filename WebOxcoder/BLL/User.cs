using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IBLL;
using System.Threading.Tasks;
using Model;
using IBLL;

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

        int IUser.signIn(String userEmail, String userPassword) {
            if (userEmail == null||userPassword==null)
                throw new Exception();
            return dal.signIn(userEmail, userPassword);
        }

        bool IUser.signUp(string email, string pass) {
            return dal.addUser(email, pass);
        }
    }
}
