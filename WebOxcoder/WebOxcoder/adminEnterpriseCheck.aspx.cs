using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using Model;
using Tools;

namespace WebOxcoder
{
    public partial class adminEnterpriseCheck : System.Web.UI.Page
    {
        IEnterprise enterprise = BLLFactory.BLLAccess.CreateEnterprise();
        enterprise ep;
        enterprise enterpriseCommit = new Model.enterprise();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showNotChecked();
            }
        }

         private void showNotChecked()
        {
            IList<Model.enterprise> en = enterprise.getNotCheckedEnterprise();
            checkInformationGridView.DataSource = en;
            checkInformationGridView.DataBind();
        }

        protected void checkInformationGridView_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Pass"))
            {
                String argument = e.CommandArgument.ToString();
                string email = argument;

                ep = enterprise.getEnterpriseByEmail(email);

                ep.email = email;
                ep.ischeck = Config.successCheck;

                bool result = enterprise.modifyEnterprise(ep);
                if (result)
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('企业通过审核!');location.href='adminEnterpriseInfo.aspx';");
                    Response.Write("</script>");
                }
                else
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('审核失败!');location.href='adminEnterpriseCheck.aspx';");
                    Response.Write("</script>");
                }

            }
            else if (e.CommandName.Equals("Reject"))
            {
                String argument = e.CommandArgument.ToString();
                string email = argument;

                ep = enterprise.getEnterpriseByEmail(email);

                ep.email = email;
                ep.ischeck = Config.failCheck;

                bool result = enterprise.modifyEnterprise(ep);
                if (result)
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('企业未通过审核!');location.href='adminEnterpriseInfo.aspx';");
                    Response.Write("</script>");
                }
                else
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('审核失败!');location.href='adminEnterpriseCheck.aspx';");
                    Response.Write("</script>");
                }

            }
        }

        protected void checkInformationGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            checkInformationGridView.PageIndex = e.NewPageIndex;
            showNotChecked();
        }


        

        
    }
}