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
        int getCount();
        IList<coder> getCoderAll();
        IList<coder> searchCoder(String name);
        bool deleteCoder(coder coderItem);
        coder getCoderByEmail(string email);
    }
}
