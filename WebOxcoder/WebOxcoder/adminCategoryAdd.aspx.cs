using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminCategoryAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            IBLL.IQuestionType questionType = BLLFactory.BLLAccess.CreateQuestionType();

            Model.type questionTypeCommit = new Model.type();
            questionTypeCommit.name = questionTypeName.Text.Trim().ToString();
            questionTypeCommit.content = questionTypeContent.Text.Trim().ToString();

            if (questionType.addQuestionType(questionTypeCommit))
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('添加成功!');location.href='adminCategoryInquire.aspx';");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('添加失败!');location.href='adminCategoryAdd.aspx';");
                Response.Write("</script>");
            }
        }
    }
}