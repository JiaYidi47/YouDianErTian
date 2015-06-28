using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tools;

namespace WebOxcoder
{
    public partial class coderTaskDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            int challengeId = System.Int32.Parse(Request.QueryString["challengeId"]);

            IBLL.IChallenge ichallenge = BLLFactory.BLLAccess.CreateChallenge();
            IBLL.IQuestionType iquestionType = BLLFactory.BLLAccess.CreateQuestionType();
            IBLL.IQuestion iquestion = BLLFactory.BLLAccess.CreateQuestion();
            IBLL.IEnterprise ienterprise = BLLFactory.BLLAccess.CreateEnterprise();
            IBLL.IChallengeRecord ichallengeRecord = BLLFactory.BLLAccess.CreateChallengeRecord();

            Model.challenge challengeItem = ichallenge.getChallengeByID(challengeId);
            Model.type challengeType = iquestionType.getChallengeType(challengeItem.type);
            IList<Model.question> questionList = new Model.question[3]{iquestion.getQuestionByID(challengeItem.question1ID),
                                                                   iquestion.getQuestionByID(challengeItem.question2ID),
                                                                   iquestion.getQuestionByID(challengeItem.question3ID)};
            Model.enterprise company = ienterprise.getEnterpriseByEmail(challengeItem.companyEmail);
            int haveAcceptCount = ichallengeRecord.getHaveAcceptCountById(challengeItem.id);

            string lable = company.label;
            string[] subLable = lable.Split(new char[] { ';' });
            
            headerTitle.InnerHtml = "<h1>" + challengeType.content +
										     " —— " +
                                             company.fullName +
                                    "</h1>" +
                                    "<div class=\"challenge-simple-desc\">" +
                                        "<span class=\"desc-label\">月薪：  " + Config.salary[challengeItem.challengeLevel] +
                                        "</span>" +
                                        "<span class=\"desc-label\">职位诱惑：" +
                                            subLable[0] + "&nbsp;" +
                                            subLable[1] + "&nbsp;" +
                                            subLable[2] + "&nbsp;" +
                                        "</span>" +
                                        "<span class=\"desc-label\">时间： " + challengeItem.duration +
                                        "</span>" +
                                        "<span class=\"desc-label\">" + haveAcceptCount + "人已接受挑战</span>" + 
                                    "</div>";

            foreach(Model.question question in questionList)
            {
                questionItem.InnerHtml += "<div class=\"col-md-4\">" +
                                        "<div class=\"panel panel-default project\">" +
                                            "<div class=\"panel-body\">" +
                                                "<div class=\"row\">" +
                                                   "<div class=\"col-xs-12\">" +
                                                        "<div class=\"pull-left\">" +
                                                            "<h4>" +
																    "<a href=\"#\">"+question.name+"</a>" +
															    "</h4>" +
                                                            "<h5 class=\"text-muted\">" + question.intro +
															"</h5>" +
                                                        "</div>" +
                                                        "<div class=\"pull-right client-info\"></div>" +
                                                    "</div>" +
                                                    "<!-- /.col-xs-12 -->" +
                                                "</div>" +
                                                "<!-- /.row -->" +
                                                "<hr>" +
                                                "<h4>开发能力</h4>" +
                                                "<div class=\"well\">" + question.knowledge +
                                                "</div>" +
                                            "</div>" +
                                            "<!-- /.panel-body -->" +
                                            "<div class=\"panel-footer\">" +
                                                "<div class=\"row\">" +
                                                    "<div class=\"col-sm-4\">" +
                                                        "<span class=\"small muted\">项目难度</span>" +
                                                    "</div>" +
                                                    "<!-- /.col-sm-4 -->" +
                                                    "<div class=\"col-sm-8\">" +
                                                        "<p>" + showLevelStar((int)question.questionLevel) +
                                                        "</p>" +
                                                    "</div>" +
                                                    "<!-- /.col-sm-8 -->" +
                                                "</div>" +
                                                "<!-- /.row -->" +
                                            "</div>" +
                                            "<!-- /.panel-footer -->" +
                                        "</div>" +
                                        "<!-- /.panel -->" +
                                    "</div>";
            }
        }

        private String showLevelStar(int level)
        {
            String star = "";

            for (int i = 0; i < level; i++)
            {
                star = star + "<i class=\"fa fa-star\"></i>";
            }
            return star;
        }
    }
}