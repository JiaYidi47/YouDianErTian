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
