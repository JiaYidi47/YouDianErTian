using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IUser
    {
        int signIn(String userEmail,String userPassword);
        bool addUser(string email, string password);
    }
}
