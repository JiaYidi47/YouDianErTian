using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseTaskHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                showData();
            }
        }




        void showData()
        {
            // string email = Request.Cookies["userEmail"].Value;
            string email = "12301067@bjtu.edu.cn";
            IBLL.IChallenge ichallenge = BLLFactory.BLLAccess.CreateChallenge();
            IList<Model.challenge> acceptChallengeList = ichallenge.searchByEmail(email);
            List<Model.challenge> result = new List<Model.challenge>();
            for (int i = 0; i < acceptChallengeList.Count; i++)
            {
                if (acceptChallengeList.ElementAt(i).state == 0)
                {
                    result.Add(acceptChallengeList.ElementAt(i));
                }
            }

            IBLL.IQuestion iquestion = BLLFactory.BLLAccess.CreateQuestion();
            IBLL.IChallengeRecord irecord = BLLFactory.BLLAccess.CreateChallengeRecord();

            if (result.Count == 0)
            {
                historyTask.InnerHtml +=
                     " <div class=\"alert alert-info\" style=\"text-align: center\" role=\"alert\">没有建立任何挑战</div>";
            }
            foreach (Model.challenge challengeShow in result)
            {
                Model.question question1 = iquestion.getQuestionByID(challengeShow.question1ID);
                Model.question question2 = iquestion.getQuestionByID(challengeShow.question2ID);
                Model.question question3 = iquestion.getQuestionByID(challengeShow.question3ID);
                List<Model.challengeRecord> acceptRecords = irecord.getRecordByChallenge(challengeShow.id).ToList();
                List<Model.challengeRecord> finishRecords = new List<Model.challengeRecord>();
                double pass = 0.0;
                for (int i = 0; i < acceptRecords.Count; i++)
                {
                    if (acceptRecords.ElementAt(i).result == "已完成")
                    {
                        finishRecords.Add(acceptRecords.ElementAt(i));
                    }

                    if (acceptRecords.ElementAt(i).result == "合格")
                    {
                        pass++;
                    }
                }
                historyTask.InnerHtml +=
                      " <div   class=\"row\">" +
                                                     "<div class=\"col-md-12\">" +
                                                    "<div  class=\"panel panel-default project\">" +
                                                         "<div class=\"panel-body\">" +
                                                             "<div class=\"row\">" +

                                                                 "<div class=\"col-md-5\">" +
                                                                     "<h2 style=\"margin: 12px 0 2px 0;\">" +
                                                                                 "<a href=\"enterpriseTaskSift.aspx\">" + challengeShow.title + "</a>" +
                                                                             "</h2>" +
                                                                     "<div style=\"width: 280px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;\">" +
                                                                         "<small>" + challengeShow.duration + question1.name + " " + question2.name + " " + question3.name + " " +

                                                                         "</small>" +
                                                                    " </div>" +

                                                                 "</div>" +
                                                                 "<div class=\"col-md-2\">" +
                                                                     "<ul class=\"list-unstyled\" style=\"margin: 7px 0;\">" +
                                                                         "<li><span class=\"badge badge-info\">" + acceptRecords.Count + "</span>个接受</li>" +
                                                                         "<li><span class=\"badge badge-danger\">" + finishRecords.Count + "</span>个完成</li>" +
                                                                     "</ul>" +
                                                                 "</div>" +
                                                                 "<div class=\"col-md-2\">" +
                                                                     "<ul class=\"list-unstyled\" style=\"margin: 20px 0;\">" +
                                                                         "<li><span class=\"red\">" + Math.Round(pass / acceptRecords.Count, 2) + "</span>%已合格</li>" +
                                                                    "</ul>" +
                                                                 "</div>" +
                                                                 "<div class=\"col-md-3\">" +


                                                                     "<a href=\"enterpriseTaskSift.aspx?challengeId=" + challengeShow.id + "\">" +
                                                                         "<button type=\"button\" class=\"btn btn-new1\" style=\"margin: 16px;\">去筛选</button>" +
                                                                     "</a>" +
                                                                 "</div>" +
                                                                 "</div>" +
                                                                  "</div>" +
                                                                  "</div>";
                                                                  


                                                          



            }

        }
    }
}