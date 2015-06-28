using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;

namespace BLL
{
    public class User : IBLL.IUser
    {
        private static readonly IDAL.IUser dal = DALFactory.DataAccess.CreateUser();

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
