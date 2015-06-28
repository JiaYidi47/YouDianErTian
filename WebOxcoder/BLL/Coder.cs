using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;

namespace BLL
{
    public class Coder : IBLL.ICoder
    {
        private static readonly IDAL.ICoder dal = DALFactory.DataAccess.CreateCoder();

        int ICoder.getCount()
        {
            return dal.getCount();
        }

        IList<coder> ICoder.getCoderAll()
        {
            return dal.getCoderAll();
        }

        IList<coder> ICoder.searchCoder(String name)
        {
            return dal.searchCoder(name);
        }

        bool ICoder.deleteCoder(coder coderItem)
        {
            if (coderItem == null)
                throw new Exception();
            return dal.deleteCoder(coderItem);
        }

        coder ICoder.getCoderByEmail(string email)
        {
            return dal.getCoderByEmail(email);
        }
    }
}
