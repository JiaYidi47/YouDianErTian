using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminCategoryInquire : System.Web.UI.Page
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
            IBLL.IQuestionType questionType = BLLFactory.BLLAccess.CreateQuestionType();
            IList<Model.type> qt = questionType.getQuestionTypeAll();
            typeInformationGridView.DataSource = qt;
            typeInformationGridView.DataBind();
        }

        protected void search_Click(object sender, EventArgs e)
        {
            IBLL.IQuestionType questionType = BLLFactory.BLLAccess.CreateQuestionType();
            IList<Model.type> qt = questionType.searchQuestionType(questionTypeCondition.Text);
            typeInformationGridView.DataSource = qt;
            typeInformationGridView.DataBind();
        }

        protected void typeInformationGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Modify"))
            {
                String argument = e.CommandArgument.ToString();
                int id = Int32.Parse(argument);

                string url = "adminCategoryEdit.aspx?id=" + id;
                Response.Redirect(url);

            }
            else if (e.CommandName.Equals("Del"))
            {
                String argument = e.CommandArgument.ToString();
                int id = Int32.Parse(argument);

                IBLL.IQuestionType type = BLLFactory.BLLAccess.CreateQuestionType();
                Model.type ty = type.getQuestionTypeByID(id);
                bool result = type.deleteQuestionType(ty);
                if (result)
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除成功!');location.href='adminCategoryInquire.aspx';");
                    Response.Write("</script>");
                }
                else
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除失败!');location.href='adminCategoryInquire.aspx';");
                    Response.Write("</script>");
                }

            }
        }

        protected void typeInformationGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            typeInformationGridView.PageIndex = e.NewPageIndex;
            show();
        }

        

    }
}