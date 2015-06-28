using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public interface ICoder
    {
        coder getCoderByEmail(String coderEmail);
        float[] getPerformanceBetterPercent(float[] performance);
        float[] getAveragePerformance();
    }
}
