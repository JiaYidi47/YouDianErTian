using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;
using Model;

namespace WebOxcoder
{
    public partial class adminCategoryEdit : System.Web.UI.Page
    {
        IQuestionType questionType = BLLFactory.BLLAccess.CreateQuestionType();
        type qu;
        type questionTypeCommit = new Model.type();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                show();
            }
        }

        private void show()
        {
            int id = Int32.Parse(Request.QueryString["id"]);
            qu = questionType.getQuestionTypeByID(id);
            questionTypeName.Text = qu.name;
            questionTypeContent.Text = qu.content;


        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.QueryString["id"]);
            questionTypeCommit.id = id;

            questionTypeCommit.name = questionTypeName.Text.Trim().ToString();
            questionTypeCommit.content = questionTypeContent.Text.Trim().ToString();

            if (questionType.modifyQuestionType(questionTypeCommit))
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('修改成功!');location.href='adminCategoryInquire.aspx';");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('修改失败!');location.href='adminCategoryAdd.aspx';");
                Response.Write("</script>");
            }
        }
    }
}