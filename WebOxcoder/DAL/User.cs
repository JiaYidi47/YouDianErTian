using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;
using Model;
using IDAL;
using Tools;

namespace DAL
{
    class User : IDAL.IUser
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        int IUser.signIn(String userEmail, String userPassword)
        {
            DataContext ctx = new DataContext(connection);
            ITable<users> userItem = ctx.GetTable<users>();
            IQueryable<users> query = from o in userItem
                                      where o.email == userEmail
                                      select o;

            users u = query.FirstOrDefault<users>();
            if (u != null)
            {
                if (u.password == userPassword)
                    return (int)u.type;
                else
                    return Config.PasswordFailed;

            }
            return Config.UserExist;
        }

        bool IUser.addUser(string email, string pass) {
            DataContext ctx = new DataContext(connection);
            ITable<users> userItems = ctx.GetTable<users>();
            users newUser = new users();
            newUser.email = email;
            newUser.password = pass;
            userItems.InsertOnSubmit(newUser);
            try
            {
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
