using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IBLL;

namespace BLL
{
    public class Order : IBLL.IOrder
    {
        private static readonly IDAL.IOrder dal = DALFactory.DataAccess.CreateOrder();

        IList<orders> IOrder.getOrderAll()
        {
            return dal.getOrderAll();
        }

        IList<orders> IOrder.searchOrder(String name)
        {
            return dal.searchOrder(name);
        }

        IList<orders> IOrder.getTodayOrder()
        {
            return dal.getTodayOrder();
        }

    }
}
