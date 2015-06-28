using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class coderTaskResult : System.Web.UI.Page
    {
        IBLL.ICoder icoder;
        IBLL.IQuestion iquestion;
        Model.coder c;
        Model.question question1;
        Model.question question2;
        Model.question question3;

        protected void Page_Load(object sender, EventArgs e)
        {
            //string results = Request.QueryString["results"];
            //string sq1 = Request.QueryString["q1"];
            //string sq2 = Request.QueryString["q2"];
            //string sq3 = Request.QueryString["q3"];
            //int q1 = Convert.ToInt32(sq1);
            //int q2 = Convert.ToInt32(sq2);
            //int q3 = Convert.ToInt32(sq3);

            iquestion = BLLFactory.BLLAccess.CreateQuestion();
            icoder = BLLFactory.BLLAccess.CreateCoder();

            int q1 = 1;
            int q2 = 2;
            int q3 = 3;

            question1 = iquestion.getQuestionByID(q1);
            question2 = iquestion.getQuestionByID(q2);
            question3 = iquestion.getQuestionByID(q3);

            string results = "通过失败通过";
            string finalResult;
            string[] result = new string[3];
            result[0] = results.Substring(0, 2);
            result[1] = results.Substring(2, 2);
            result[2] = results.Substring(4, 2);

            int pass = 0;

            for (int i = 0; i < 3;i++ )
            {
                if (result[i].Equals("通过"))
                {
                    pass++;
                }
            }

            if (pass>=2)
            {
                finalResult = "通过";
                passPic.InnerHtml = "<img src=\"img/pass2.png\">";
            }
            else
            {
                finalResult = "失败";
                passPic.InnerHtml = "<img src=\"img/pass1.png\">";
            }

            string coderEmail = "12301060@bjtu.edu.cn";
            Model.coder c = icoder.getCoderByEmail(coderEmail);
            price.InnerHtml = "当前身价￥" + c.price;
            currentLevel.InnerHtml = "Lv." + (int)c.performance0;

            String knowledge = "";
            if (!result[0].Equals("通过"))
            {
                knowledge = knowledge + "<li class=\"btn btn-alt btn-primary\" style=\"margin-right: 15px;\">" + question1.knowledge + "</li>";
            }

            if (!result[1].Equals("通过"))
            {
                knowledge = knowledge + "<li class=\"btn btn-alt btn-primary\" style=\"margin-right: 15px;\">" + question2.knowledge + "</li>";
            }

            if (!result[2].Equals("通过"))
            {
                knowledge = knowledge + "<li class=\"btn btn-alt btn-primary\" style=\"margin-right: 15px;\">" + question3.knowledge + "</li>";
            }

            toImprove.InnerHtml = knowledge;

            



        }
    }
}