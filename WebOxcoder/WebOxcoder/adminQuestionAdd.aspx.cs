using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminQuestionAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void questionAddSubmit_Click(object sender, EventArgs e)
        {
            IBLL.IQuestion question = BLLFactory.BLAccess.CreateQuestion();
            Model.question questionCommit = new Model.question();
            questionCommit.name = questionName.Text.Trim().ToString();
            questionCommit.intro = questionIntr.Text.Trim().ToString();
            questionCommit.knowledge = questionKnow.Text.Trim().ToString();
            questionCommit.tecnology = questionAbility.Text.Trim().ToString();
            //questionCommit.questionLevel = Request.Form["questionLevel"];
            //questionCommit.questionContent = questionContent.Text.Trim().ToString();
            //questionCommit.answer = questionAnswer.Text.Trim().ToString();
            //questionCommit.typeId


            if (question.addQuestion(questionCommit))
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('添加成功!');location.href='adminQuestionInquire.aspx';");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('添加失败!');location.href='adminQuestionAdd.aspx';");
                Response.Write("</script>");
            }
        }
    }
}