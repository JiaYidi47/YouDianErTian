using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IDAL;
using System.Threading.Tasks;
using System.Data.Linq;
using Model;
using Tools;

namespace DAL
{
    class User : IDAL.IUser
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        int IUser.getCount()
        {
            DataContext ctx = new DataContext(connection);
            ITable<users> userItems = ctx.GetTable<users>();
            return userItems.Count();
        }

        IList<users> IUser.getTodayUser()
        {
            DataContext ctx = new DataContext(connection);
            ITable<users> userItems = ctx.GetTable<users>();
            IQueryable<users> query = from o in userItems
                                       where o.registerTime.Substring(0, 2) == DateTime.Now.ToString("yyyy-MM-dd").Substring(5, 2)
                                       && o.registerTime.Substring(3, 2) == DateTime.Now.ToString("yyyy-MM-dd").Substring(8, 2)
                                       && o.registerTime.Substring(6, 4) == DateTime.Now.ToString("yyyy-MM-dd").Substring(0, 4)
                                       select o;
            return query.ToList<users>();
        }

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
