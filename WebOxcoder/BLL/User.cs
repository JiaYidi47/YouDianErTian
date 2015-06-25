using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class User : IBLL.IUser
    {
        private static readonly IDAL.IUser dal = DALFactory.DataAccess.CreateUser();
    }
}
