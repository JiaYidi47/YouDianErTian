using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Model;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseNewTask3 : System.Web.UI.Page
    {

        List<question> quizListChoose = new List<question>();
        public string exerciseStr = "";
        public string[] exerciseArray;
        public int level;
        public int type;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setBind();
            }
        }

        public void setBind()
        {

            level = Convert.ToInt32(Request.QueryString["relevel"]);
            type = Convert.ToInt32(Request.QueryString["retype"]);

            string flag = Request.QueryString["flag"];
           
            if ((flag.Equals("new")))
            {
                string pid = Request.QueryString["pid"];
                exerciseStr = Request.QueryString["exercise"];
                exerciseArray = exerciseStr.Split('*');
                if (exerciseArray.Length > 3)
                {
                    wrongTip.InnerHtml = "最多三个！";
                    string temp = "*" + pid;
                    exerciseStr = exerciseStr.Replace(temp, null);

                    //   btn_save.Text = "保存&发布挑战";
                }
                else if (exerciseArray.Length == 3)
                {
                    //btn_save.Text = "保存&发布挑战";
                }

            }
            else if ((flag.Equals("del")))
            {
                string pid = Request.QueryString["pid"];
                exerciseStr = Request.QueryString["exercise"];
                exerciseArray = exerciseStr.Split('*');
                if (exerciseArray.Length == 1)
                {
                    wrongTip.InnerHtml = "已经没有啦！";
                    exerciseStr = null;
                }
                else
                {
                    if (exerciseArray.Length == 4)
                    {
                        exerciseStr = exerciseStr.Replace(exerciseArray[4], null);
                    }
                    string temp = "*" + pid;
                    if (exerciseStr.Contains(temp))
                    {
                        exerciseStr = exerciseStr.Replace(temp, null);
                    }
                    else
                    {
                        exerciseStr = exerciseStr.Replace(pid+"*", null);
                    }
                }

                // btn_save.Text = "请选择三道题目";
            }
            else if ((flag.Equals("sub")))
            {
                string subExc = Request.Form["exercise"];
                int lev = Int32.Parse(Request.Form["level"]);
                int typ = Int32.Parse(Request.Form["type"]) ;

                exerciseArray = subExc.Split('*');
                if (exerciseArray.Length >= 3)
                {
                    IBLL.IChallenge cs = BLLFactory.BLLAccess.CreateChallenge();
                  //  string eid = Request.Cookies["userEmail"].Value;
                    string eid = "12301067@bjtu.edu.cn";
                    Boolean result = cs.addChallenge(lev, typ, 1, 1,Int32.Parse(exerciseArray[0]), Int32.Parse(exerciseArray[1]), Int32.Parse(exerciseArray[2]), eid,1, "2014.04.06~2015.09.08");
                    if (result)
                        Response.Redirect("/enterpriseTask.aspx");
                }
                else
                {
                    wrongTip.InnerHtml = "请选择三道题目！";
                    exerciseStr = subExc;
                }


            }

          
              exerciseArray = exerciseStr.Split('*');
            
            List<question> list = getQuizList(level, type);

            quizListChooseRepeater.DataSource = quizListChoose;
            quizListChooseRepeater.DataBind();

            quizListRepeater.DataSource = list;
            quizListRepeater.DataBind();

        }

        public List<question> getQuizList(int level, int type)
        {
            IBLL.IQuestion questions = BLLFactory.BLLAccess.CreateQuestion();
            List<question> quizList = questions.getQuestion(type,level).ToList();

            foreach (question quiz in quizList)
            {
                for (int i = 0; i < exerciseArray.Length && i < 3; i++)
                {
                    if (quiz.id == Convert.ToInt32(exerciseArray[i]))
                    {
                        quizListChoose.Add(quiz);

                    }
                }
            }

            foreach (question quiz in quizListChoose)
            {
                quizList.Remove(quiz);
            }

            return quizList;
        }
    }
}