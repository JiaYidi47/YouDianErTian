using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Tools;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class coderHome : System.Web.UI.Page
    {
        IBLL.IQuestionType type;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                showSelect();
                showData();
            }

            if (Request.Cookies["userEmail"] == null)
            {
                Response.Redirect("/signin.aspx");
            }
            LabelName.Text = Request.Cookies["userEmail"].Value;
        }

        //给所有下拉框赋值
        void showSelect() { 
         type = BLLFactory.BLLAccess.CreateQuestionType();
         IList<Model.type> allTecs = type.getAll();
         select1.DataSource = allTecs;
         select1.DataTextField = "name";
         select1.DataBind();
         select2.DataSource = Tools.Config.salary;
         select2.DataBind();
         province.DataSource = Tools.Config.district;
         province.DataBind();
        }

        //显示所有项目
        void showData() {


            IBLL.IChallenge ichallenge = BLLFactory.BLLAccess.CreateChallenge();
            IList<Model.challenge> acceptChallengeList = ichallenge.searchAll();
            showToUI(acceptChallengeList);
        }

        void showToUI(IList<Model.challenge> acceptChallengeList)
        {
            IBLL.ICoder icoder = BLLFactory.BLLAccess.CreateCoder();
            
            IBLL.IQuestionType iquestionType = BLLFactory.BLLAccess.CreateQuestionType();
            IBLL.IQuestion iquestion = BLLFactory.BLLAccess.CreateQuestion();
            IBLL.IEnterprise ienterprise = BLLFactory.BLLAccess.CreateEnterprise();
            IBLL.IChallengeRecord irecord = BLLFactory.BLLAccess.CreateChallengeRecord();
           
            foreach (Model.challenge challengeShow in acceptChallengeList)
            {
                Model.type challengeType = iquestionType.getChallengeType(challengeShow.type);
                Model.question question1 = iquestion.getQuestionByID(challengeShow.question1ID);
                Model.question question2 = iquestion.getQuestionByID(challengeShow.question2ID);
                Model.question question3 = iquestion.getQuestionByID(challengeShow.question3ID);
                Model.enterprise company = ienterprise.getEnterpriseByEmail(challengeShow.companyEmail);
                IList<Model.challengeRecord> records = irecord.getRecordByChallenge(challengeShow.id);

                string lable = company.label;
                string[] subLable = lable.Split(new char[] { ';' });





                challengeItem.InnerHtml +=
                    " <div class=\"col-xs-12 col-lg-3 col-md-4 woo co0\" data-ht=\"456\" data-idx=]\"0\" style=\"top: 0px; left: 0px;\">" +
                    "<section id=\"Section1\">" +
                    "<div class=\"panel panel-default shadow-effect\">" +
                        "<div class=\"col-xs-12 panel-header\">" +
                                "<div class=\"pull-left\">" +
                          
       
                                    "<h4 class=\"line-control\">"+
                                 "<a href=\"coderTaskDetail.aspx?challengeId=" + challengeShow.id + "\">" + challengeType.content + "</a></h4>" +
                                    "<h4 class=\"line-control\"><a href=\"\">" + company.shortName + "</a></h4>" +
                                "</div>" +
                                "<div class=\"pull-right client-info\">" +
                                    "<span class=\"percent text-danger\">" +
                                        "<img class=\"img-circle\" style=\"width: 60px; height: 60px\" src=\"logo/242.jpg\">" +
                                    "</span>" +
                                "</div>" +
                            "</div>" +

                            "<div class=\"panel-body \">" +
                                "<ul class=\"list-unstyled\">" +
                                    "<li>月薪： " + challengeShow.challengeLevel + "</li>" +
                                    "<li>职位诱惑：</li>" +
                                    "<li>" +
                                        "<ul class=\"companyTags\">" +
                                            "<li>" + subLable[0] + "</li>" +
                                            "<li>" + subLable[1] + "</li>" +
                                            "<li>" + subLable[2] + "</li>" +
                                        "</ul>" +
                                    "</li>" +
                                    "<li>挑战项目：</li>" +
                                    "<li>" +
                                        "<ul>" +
                                            "<li><a href=\"\">" + question1.name + "</a>" +
                                            "</li>" +
                                            "<li><a href=\"\">" + question2.name + "</a>" +
                                            "</li>" +
                                            "<li><a href=\"\">" + question3.name + "</a>" +
                                            "</li>" +
                                     "   </ul>" +
                                    "</li>" +
                                    "<li>难度：" +
                                        showLevelStar(challengeShow.challengeLevel) +
                                        "<li><i class=\"fa fa-calendar\"></i> " + challengeShow.duration + "</li>" +
                                        "<li><i class=\"fa fa-user\"></i> " + records.Count + "人已接受挑战</li>" +
                                        "<li class=\"progress-info\"><span class=\"ongoing\"><br /></span>" +
                                        "</li>" +
                                "</ul>" +
                            "</div>" +
                            "<!-- /.panel-body -->" +
                            "<div class=\"panel-footer align-center\">" +
                               "<a href=\"coderTask.aspx?aId=" + challengeShow.id + "\">" +
                                    "<button class=\"btn btn-new1\">接受挑战</button>" +
                                "</a>" +
                            "</div>" +
                            "</div>" +
                        "</section>" +
                    "</div>";
            }
        }

        private string showLevelStar(int level)
        {
            string star = "";

            for (int i = 0; i < level; i++)
            {
                star = star + "<i class=\"fa fa-star\"></i>";
            }
            return star;
        }

        protected void search_ServerClick(object sender, EventArgs e)
        {
            string tec = Request[select1.UniqueID];
            string level = Request[select2.UniqueID];
            string loc = Request[this.province.UniqueID];
            string keywords = searchCondition.Value;

            IList<Model.challenge> tecList;
            IList<Model.challenge> levelList;
            IList<Model.challenge> locList;
            IList<Model.challenge> conditionList;
            IBLL.IChallenge ichallenge = BLLFactory.BLLAccess.CreateChallenge();

            if (tec.Equals("技术方向"))
            {
                tecList = ichallenge.searchAll();
            }
            else {
                tecList = ichallenge.searchBytec(tec);
            }

            if (level.Equals("全部薪资"))
            {
                levelList = ichallenge.searchAll();
            }
            else {
                levelList = ichallenge.searchByLevel(level);
            }

            if (loc.Equals("全部地区"))
            {
                locList = ichallenge.searchAll();
            }
            else {
                locList = ichallenge.searchByLoc(loc);
            }

            if (keywords.Equals(""))
            {
                conditionList = ichallenge.searchAll();
            }
            else { 
                conditionList=ichallenge.searchByKeywords(keywords);
            }

            IList<Model.challenge> result1 = this.getSame(tecList, levelList);
            IList<Model.challenge> result2 = this.getSame(locList, conditionList);
            IList<Model.challenge> result = this.getSame(result1, result2);
            challengeItem.InnerHtml = " ";
            showToUI(result);
        }

        IList<Model.challenge> getSame(IList<Model.challenge> list1, IList<Model.challenge> list2) {
            List<Model.challenge> result =new List<Model.challenge>();
            for (int i = 0; i < list1.Count; i++) {
                for (int j = 0; j < list2.Count; j++) {
                    if (list2.ElementAt(j).id == list1.ElementAt(i).id) {
                        result.Add(list1.ElementAt(i));
                    }
                }
            }

            return result;
        }
      
        }
}