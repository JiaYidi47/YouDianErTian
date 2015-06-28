using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public interface IOrder
    {
        IList<orders> getOrderAll();
        IList<orders> searchOrder(String name);
        IList<orders> getTodayOrder();
    }
}
