using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using IBLL;

namespace WebOxcoder
{
    public partial class adminQuestionAdd : System.Web.UI.Page
    {
        private string uploadDirectory;  // 文件保存路径
        private string content;
        private string answer;
        protected void Page_Load(object sender, EventArgs e)
        {
            // 默认将文件保存到站点根目录下的Uploads中
            uploadDirectory = Path.Combine(Request.PhysicalApplicationPath, "Uploads");
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
                content = upload(questionContentUploader,questionContentUploader.PostedFile.FileName);
                answer = upload(questionAnswerUploader,questionAnswerUploader.PostedFile.FileName);
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
            questionCommit.type = DropDownList.SelectedItem.Text;

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

        public String upload(FileUpload fileUploader,String path)
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