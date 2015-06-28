using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Model;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseNewTask2_unuse_ : System.Web.UI.Page
    {

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
            level = Int32.Parse(Request.QueryString["level"]);
            type = Int32.Parse(Request.QueryString["tec"]);
            List<question> list = getQuizList(level, type);

           

            this.quizListRepeater.DataSource = list;
            this.quizListRepeater.DataBind();
        }

        public List<question> getQuizList(int level, int type)
        {
            IBLL.IQuestion questions = BLLFactory.BLLAccess.CreateQuestion();
            List<question> quizList = questions.getQuestion(type, level).ToList();

            return quizList;
        }
    }
}