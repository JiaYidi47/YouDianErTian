using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tools;
using Newtonsoft.Json.Linq;

namespace WebOxcoder
{
    public partial class coderCode : System.Web.UI.Page
    {
        IBLL.IQuestion iquestion = BLLFactory.BLLAccess.CreateQuestion();
        IBLL.IQuestionType iquestionType = BLLFactory.BLLAccess.CreateQuestionType();

        string questionType = "";
        static int finishNum = 0;
        int[] questionID = new int[3];
        
        string allresult = "";
        int resultID = 1;
        int status = -1;
        string input = "无";
        string output = "无";
        string stderr = "无";
        string cmpinfo = "无";

        protected void Page_Load(object sender, EventArgs e)
        {
            //string question1ID = Request.QueryString["q1ID"];
            //string question2ID = Request.QueryString["q2ID"];
            //string question3ID = Request.QueryString["q3ID"];
            questionID[0] = 1;
            questionID[1] = 2;
            questionID[2] = 3;

            Model.question question1 = iquestion.getQuestionByID(questionID[0]);
            int question1TypeID = (int)question1.typeId;
            Model.type question1Type = iquestionType.getChallengeType(question1TypeID);
            questionType = question1Type.name;
            testnew.InnerHtml = "<span>" + question1.name + "</span> &nbsp;<small>" + questionType + "项目</small>";
            questionContent.InnerHtml = question1.questionContent;
        }

        protected void btnRun_Click(object sender, EventArgs e)
        {
            compile();
        }

        public void compile()
        {
            string code = codearea.InnerText;

            string language = OnlineCode.getLanguageID(questionType);
            string ideoneIDjson = OnlineCode.submitCode(code, language);
            JObject obj = JObject.Parse(ideoneIDjson);
            string ideoneID = (string)obj["id"];

            while (status != 0)
            {
                string results = OnlineCode.getResult(ideoneID);
                JObject objResult = JObject.Parse(results);
                resultID = (int)objResult["result"];
                status = (int)objResult["status"];
                input = (string)objResult["input"];
                output = (string)objResult["output"];
                stderr = (string)objResult["stderr"];
                cmpinfo = (string)objResult["cmpinfo"];
                System.Threading.Thread.Sleep(3000);
            }

            string resultStr = OnlineCode.getResultContentByresultID(resultID);

            result.InnerHtml = "编译结果：" + resultStr + "\n" +
                               "输入：" + input + "\n" +
                               "输出：" + output + "\n" +
                               "编译信息：" + "\n" + cmpinfo;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //compile();

            if (finishNum != 2)
            {
                string time = TextBox1.Text;

                if (time.Equals("0"))
                {
                    resultID = 99;
                }

                if (resultID == 15)
                {
                    allresult = allresult + "通过";
                }
                else if (resultID == 99)
                {
                    allresult = allresult + "超时";
                }
                else
                {
                    allresult = allresult + "失败";
                }

                finishNum++;

                Model.question question = iquestion.getQuestionByID(questionID[finishNum]);
                int questionTypeID = (int)question.typeId;
                Model.type question1Type = iquestionType.getChallengeType(questionTypeID);
                questionType = question1Type.name;
                testnew.InnerHtml = "<span>" + question.name + "</span> &nbsp;<small>" + questionType + "项目</small>";
                questionContent.InnerHtml = question.questionContent;
                codearea.InnerHtml = "";
                result.InnerHtml = "";
                System.Threading.Thread.Sleep(1000);
            }
            else
            {
                string url = "/coderTaskResult.aspx" + "?results=" + allresult + "&q1=" + questionID[0] + "&q2=" + questionID[1] + "&q3=" + questionID[2];
                Response.Redirect(url);
            }
        }
    }
}