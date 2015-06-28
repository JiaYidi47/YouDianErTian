using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminQuestionInquire : System.Web.UI.Page
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
            IBLL.IQuestion question = BLLFactory.BLLAccess.CreateQuestion();
            IList<Model.question> qu = question.getQuestionAll();
            questionInformationGridView.DataSource = qu;
            questionInformationGridView.DataBind();
        }

        protected void search_Click(object sender, EventArgs e)
        {
            IBLL.IQuestion question = BLLFactory.BLLAccess.CreateQuestion();
            IList<Model.question> qu = question.searchQuestion(questionCondition.Text);
            questionInformationGridView.DataSource = qu;
            questionInformationGridView.DataBind();
        }

        protected void questionInformationGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
             if (e.CommandName.Equals("Modify"))
            {
                String argument = e.CommandArgument.ToString();
                int id = Int32.Parse(argument);
                
                string url = "adminQuestionEdit.aspx?id=" + id;
                Response.Redirect(url);

            }
            else if (e.CommandName.Equals("Del"))
            {
                String argument = e.CommandArgument.ToString();
                int id = Int32.Parse(argument);

                IBLL.IQuestion question = BLLFactory.BLLAccess.CreateQuestion();
                Model.question qu = question.getQuestionByID(id);
                bool result = question.deleteQuestion(qu);
                if (result)
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除成功!');location.href='adminQuestionInquire.aspx';");
                    Response.Write("</script>");
                }
                else
                {
                    Response.Write("<script language='JavaScript'>");
                    Response.Write("alert('删除失败!');location.href='adminQuestionInquire.aspx';");
                    Response.Write("</script>");
                }

            }
        }

        protected void questionInformationGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            questionInformationGridView.PageIndex = e.NewPageIndex;
            show();
        }

        

        

    }
}