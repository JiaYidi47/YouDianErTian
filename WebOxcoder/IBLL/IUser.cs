using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;


namespace IBLL
{
    public interface IUser
    {
        int getCount();
        IList<users> getTodayUser();
        int signIn(String userEmail, String userPassword);
        bool signUp(string email, string pass);
    }
}
