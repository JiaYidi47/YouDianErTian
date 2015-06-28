using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IBLL;

namespace BLL
{
    public class Coder : IBLL.ICoder
    {
        private static readonly IDAL.ICoder dal = DALFactory.DataAccess.CreateCoder();

        Model.coder IBLL.ICoder.getCoderByEmail(string email) {
            return dal.getCoderById(email);
        }

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

        bool IBLL.ICoder.AddCoder(string email)
        {
            return dal.addCoder(email);
        }

        coder ICoder.getCoderByEmail(String coderEmail)
        {
            return dal.getCoderByEmail(coderEmail);
        }

        float[] ICoder.getPerformanceBetterPercent(float[] performance)
        {
            return dal.getPerformanceBetterPercent(performance);
        }

        float[] ICoder.getAveragePerformance()
        {
            return dal.getAveragePerformance();
        }

        bool ICoder.changeCoderInfo(coder c)
        {
            return dal.changeCoderInfo(c);
        }
    }
}
