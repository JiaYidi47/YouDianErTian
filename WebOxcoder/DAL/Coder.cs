using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using Model;
using System.Threading.Tasks;

namespace DAL
{
    class Coder : IDAL.ICoder
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        bool IDAL.ICoder.addCoder(string email) {
            DataContext ctx = new DataContext(connection);
            ITable<coder> userItems = ctx.GetTable<coder>();
            coder newUser = new coder();
            newUser.email = email;
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
