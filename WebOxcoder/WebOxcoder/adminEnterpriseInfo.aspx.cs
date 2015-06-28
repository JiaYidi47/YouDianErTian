using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminEnterpriseInfo : System.Web.UI.Page
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
            IBLL.IEnterprise enterprise = BLLFactory.BLLAccess.CreateEnterprise();
            IList<Model.enterprise> en = enterprise.getSuccessCheckedEnterprise();
            enterpriseInformationGridView.DataSource = en;
            enterpriseInformationGridView.DataBind();
        }

        protected void search_Click(object sender, EventArgs e)
        {
            IBLL.IEnterprise enterprise = BLLFactory.BLLAccess.CreateEnterprise();
            IList<Model.enterprise> en = enterprise.searchEnterprise(enterpriseCondition.Text);
            enterpriseInformationGridView.DataSource = en;
            enterpriseInformationGridView.DataBind();
        }

        protected void enterpriseInformationGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Del"))
            {
                String argument = e.CommandArgument.ToString();
                String email = argument;

                IBLL.IEnterprise enterprise = BLLFactory.BLLAccess.CreateEnterprise();
                Model.enterprise en = enterprise.getEnterpriseByEmail(email);
                bool result = enterprise.deleteEnterprise(en);
                if (result)
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除成功!');location.href='adminEnterpriseInfo.aspx';");
                    Response.Write("</script>");
                }
                else
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除失败!');location.href='adminEnterpriseInfo.aspx';");
                    Response.Write("</script>");
                }

            }
        }

        protected void enterpriseInformationGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            enterpriseInformationGridView.PageIndex = e.NewPageIndex;
            show();
        }
    }
}