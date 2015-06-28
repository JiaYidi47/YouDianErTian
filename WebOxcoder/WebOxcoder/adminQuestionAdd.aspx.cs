using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IBLL;

namespace WebOxcoder
{
    public partial class adminQuestionAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void questionAddSubmit_Click(object sender, EventArgs e)
        {
            // 判断是否有文件提交.
            if (questionContentUploader.PostedFile.FileName == "" && questionAnswerUploader.PostedFile.FileName == "")
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('未选择文件!');location.href='adminQuestionAdd.aspx';");
                Response.Write("</script>");
            }
            else
            {
                content = upload(questionContentUploader, questionContentUploader.PostedFile.FileName);
                answer = upload(questionAnswerUploader, questionAnswerUploader.PostedFile.FileName);
                
            } 

            IBLL.IQuestion question = BLLFactory.BLLAccess.CreateQuestion();
            Model.question questionCommit = new Model.question();
            questionCommit.name = questionName.Text.Trim().ToString();
            questionCommit.intro = questionIntr.Text.Trim().ToString();
            questionCommit.knowledge = questionKnow.Text.Trim().ToString();
            questionCommit.tecnology = questionAbility.Text.Trim().ToString();

            questionCommit.questionLevel = Int32.Parse(questionLevel.Value);
            questionCommit.questionContent = content;
            questionCommit.answer = answer;
            questionCommit.typeId = Int32.Parse(DropDownList.SelectedItem.Value);

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