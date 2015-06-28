using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tools;

namespace WebOxcoder
{
    public partial class adminRechargeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                show();
            }
        }

        private void show()
        {
            IBLL.IOrder order = BLLFactory.BLLAccess.CreateOrder();
            IList<Model.orders> or = order.getOrderAll();
            orderInformationGridView.DataSource = or;
            orderInformationGridView.DataBind();
        }

        protected void orderCondition_TextChanged(object sender, EventArgs e)
        {
            IBLL.IOrder order = BLLFactory.BLLAccess.CreateOrder();
            IList<Model.orders> or = order.searchOrder(orderCondition.Text);
            orderInformationGridView.DataSource = or;
            orderInformationGridView.DataBind();
        }

        protected void orderRecord_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(orderRecord.SelectedItem.Value == Config.allOrder.ToString()){
                show();
            }else{
                showToday();
            }
        }

        private void showToday(){
            IBLL.IOrder order = BLLFactory.BLLAccess.CreateOrder();
            IList<Model.orders> or = order.getTodayOrder();
            orderInformationGridView.DataSource = or;
            orderInformationGridView.DataBind();
        }

        protected void orderInformationGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            orderInformationGridView.PageIndex = e.NewPageIndex;
            show();
        }

    }
}