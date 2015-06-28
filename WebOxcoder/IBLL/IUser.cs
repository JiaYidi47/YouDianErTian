using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace IBLL
{
    public interface IUser
    {
        int signIn(String userEmail, String userPassword);
        bool signUp(string email, string pass);
    }
}
