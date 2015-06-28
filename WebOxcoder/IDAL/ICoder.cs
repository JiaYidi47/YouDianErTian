using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface ICoder
    {
        Model.coder getCoderById(string id);
        bool changeCoderInfo(coder c);
        int getCount();
        IList<coder> getCoderAll();
        IList<coder> searchCoder(String name);
        bool deleteCoder(coder coderItem);
        //bool checkCoder(String coderEmail);
        bool addCoder(string email);
        coder getCoderByEmail(String coderEmail);
        float[] getPerformanceBetterPercent(float[] performance);
        float[] getAveragePerformance();
    }
}
