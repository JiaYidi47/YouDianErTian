using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Model;
using IBLL;

namespace WebOxcoder
{
    public partial class AdminQuestionEdit : System.Web.UI.Page
    {
        private string uploadDirectory;  // 文件保存路径
        string questionContent;
        string questionAnswer;

        IQuestion question = BLLFactory.BLLAccess.CreateQuestion();
        question qu;
        question questionCommit = new Model.question();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                show();
            }
            // 默认将文件保存到站点根目录下的Uploads中
            uploadDirectory = Path.Combine(Request.PhysicalApplicationPath, "Uploads");
            
        }

        private void show()
        {
            int id = Int32.Parse(Request.QueryString["id"]);
            qu = question.getQuestionByID(id);
            questionName.Text = qu.name;
            questionIntr.Text = qu.intro;
            questionKnow.Text = qu.knowledge;
            questionAbility.Text = qu.tecnology;
            questionLevel.Value = qu.questionLevel.ToString();


        }

        protected void questionEditSubmit_Click(object sender, EventArgs e)
        {
            // 判断是否有文件提交.
            if (questionContentUploader.PostedFile.FileName == "" && questionAnswerUploader.PostedFile.FileName == "")
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('未选择文件!');location.href='adminQuestionEdit.aspx';");
                Response.Write("</script>");
            }
            else
            {
                questionContent = upload(questionContentUploader, questionContentUploader.PostedFile.FileName);
                questionAnswer = upload(questionAnswerUploader, questionAnswerUploader.PostedFile.FileName);
            }

            int id = Int32.Parse(Request.QueryString["id"]);
            questionCommit.id = id;
            questionCommit.name = questionName.Text.Trim().ToString();
            questionCommit.intro = questionIntr.Text.Trim().ToString();
            questionCommit.knowledge = questionKnow.Text.Trim().ToString();
            questionCommit.tecnology = questionAbility.Text.Trim().ToString();
            questionCommit.questionLevel = Int32.Parse(questionLevel.Value);
            questionCommit.questionContent = questionContent;
            questionCommit.answer = questionAnswer;
            questionCommit.typeId = Int32.Parse(DropDownList.SelectedItem.Value);

            if (question.modifyQuestion(questionCommit))
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('修改成功!');location.href='adminQuestionInquire.aspx';");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('修改失败!');location.href='adminQuestionEdit.aspx';");
                Response.Write("</script>");
            }
        }

        protected void questionEditCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminQuestionInquire.aspx");
        }

        public String upload(FileUpload fileUploader, String path)
        {
            // 以下代码是保持文件到服务器uploadDirectory中。
            //文件名确保不一样。
            string serverFileName = Path.GetFileName(path);
            string strDateTime = DateTime.Now.ToString("yyyyMMddHHmmss");
            string fileName = strDateTime + Guid.NewGuid().ToString().Substring(0, 8) + serverFileName;
            string fullUploadPath = Path.Combine(uploadDirectory, fileName);
            try
            {
                fileUploader.PostedFile.SaveAs(fullUploadPath);  // 上传文件
            }
            catch (Exception err)
            {
                Response.Write(err.ToString());
            }
            return fullUploadPath;
        }

    }
}