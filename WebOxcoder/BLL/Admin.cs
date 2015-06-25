using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Admin : IBLL.IAdmin
    {
        private static readonly IDAL.IAdmin dal = DALFactory.DataAccess.CreateAdmin();
    }
}
