using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showCoderNum();
                showEnterpriseNum();
                showUserNum();
                showRegisterUser();
            }
        }

        private void showUserNum()
        {
            IBLL.IUser user = BLLFactory.BLLAccess.CreateUser();
            userNum.Text = user.getCount().ToString();
        }

        private void showCoderNum()
        {
            IBLL.ICoder coder = BLLFactory.BLLAccess.CreateCoder();
            coderNum.Text = coder.getCount().ToString();
        }

        private void showEnterpriseNum()
        {
            IBLL.IEnterprise enterprise = BLLFactory.BLLAccess.CreateEnterprise();
            enterpriseNum.Text = enterprise.getCount().ToString();
        }

        private void showRegisterUser()
        {
            IBLL.IUser user = BLLFactory.BLLAccess.CreateUser();
            IList<Model.users> us = user.getTodayUser();
            userRegisterInformationGridView.DataSource = us;
            userRegisterInformationGridView.DataBind();
        }

        protected void userRegisterInformationGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            userRegisterInformationGridView.PageIndex = e.NewPageIndex;
            showRegisterUser();
        }
    }
}