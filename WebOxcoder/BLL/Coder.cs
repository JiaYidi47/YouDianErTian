using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Coder : IBLL.ICoder
    {
        private static readonly IDAL.ICoder dal = DALFactory.DataAccess.CreateCoder();

        Model.coder IBLL.ICoder.getCoderByEmail(string email) {
            return dal.getCoderById(email);
        }
    }
}
