using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminCoderManage : System.Web.UI.Page
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
            IBLL.ICoder coder = BLLFactory.BLLAccess.CreateCoder();
            IList<Model.coder> co = coder.getCoderAll();
            coderInformationGridView.DataSource = co;
            coderInformationGridView.DataBind();
        }

        protected void search_Click(object sender, EventArgs e)
        {
            IBLL.ICoder coder = BLLFactory.BLLAccess.CreateCoder();
            IList<Model.coder> co = coder.searchCoder(coderCondition.Text);
            coderInformationGridView.DataSource = co;
            coderInformationGridView.DataBind();
        }

        protected void coderInformationGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Del"))
            {
                String argument = e.CommandArgument.ToString();
                String email = argument;

                IBLL.ICoder coder = BLLFactory.BLLAccess.CreateCoder();
                Model.coder co = coder.getCoderByEmail(email);
                bool result = coder.deleteCoder(co);
                if (result)
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除成功!');location.href='adminCoderManage.aspx';");
                    Response.Write("</script>");
                }
                else
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除失败!');location.href='adminCoderManage.aspx';");
                    Response.Write("</script>");
                }

            }
        }

        protected void coderInformationGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            coderInformationGridView.PageIndex = e.NewPageIndex;
            show();
        }

    }
}