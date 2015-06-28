using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterpriseTaskSift : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string tempId = Request.QueryString["challengeId"];
                if (!(tempId == null))
                {
                    int challengeId = Int32.Parse(tempId);
                    showdetail(challengeId);
                }
            }
        }

        void showdetail(int challengeId) {
            IBLL.IChallenge ichallenge = BLLFactory.BLLAccess.CreateChallenge();
            IBLL.IQuestion iquestion = BLLFactory.BLLAccess.CreateQuestion();
            IBLL.IChallengeRecord irecord = BLLFactory.BLLAccess.CreateChallengeRecord();
            Model.challenge challengeShow = ichallenge.getChallengeById(challengeId);

            Model.question question1 = iquestion.getQuestionByID(challengeShow.question1ID);
            Model.question question2 = iquestion.getQuestionByID(challengeShow.question2ID);
            Model.question question3 = iquestion.getQuestionByID(challengeShow.question3ID);
            List<Model.challengeRecord> acceptRecords = irecord.getRecordByChallenge(challengeShow.id).ToList();
            List<Model.challengeRecord> finishRecords = new List<Model.challengeRecord>();
            for (int i = 0; i < acceptRecords.Count; i++)
            {
                if (acceptRecords.ElementAt(i).result == "已完成")
                {
                    finishRecords.Add(acceptRecords.ElementAt(i));
                }
            }
            if (challengeShow.state == 1)
            {
                title.InnerHtml +=
                  "<h1 class=\"pull-left\">" +
                          challengeShow.title +
                          "挑战的筛选页面" +
                      "</h1>" +
                     " <a href=\"enterpriseTask.aspx?taskId=" + challengeId + "\">" +
                      "<button class=\"btn btn-new1 pull-right\" style=\"margin-top: 20px;\">关闭该挑战</button>"+
                      "</a>";
            }
            else {
                title.InnerHtml +=
                "<h1 class=\"pull-left\">" +
                        challengeShow.title +
                        "挑战的筛选页面" +
                    "</h1>" +

                   " <a href=\"enterpriseTask.aspx?taskId=" + challengeId + "\">" +
                    "<button class=\"btn btn-new1 pull-right\" style=\"margin-top: 20px;\">开启该挑战</button>"+
                    "</a>";
            }
          

                   

            challengeDetail.InnerHtml+=
                  "<div class=\"challenge-simple-desc\">"+
                    "<span class=\"desc-label\">发起时间："+challengeShow.duration+"</span> <span class=\"desc-label\">接受挑战：0</span>"+
                    "<span class=\"desc-label]\">完成挑战："+acceptRecords.Count+"</span> <span class=\"desc-label\">"+
                   "所选项目："+
							question1.name+"   "+
	                        question2.name+"   "+
                            question3.name+"   "+
							
	                        
					"</span>"+
                "</div>";

            List<Model.coder> coders=new List<Model.coder>();
            IBLL.ICoder icoder = BLLFactory.BLLAccess.CreateCoder();
            for (int j = 0; j < acceptRecords.Count; j++) {
                coders.Add(icoder.getCoderByEmail(acceptRecords.ElementAt(j).coderEmail));
                
            }

            coderTable.InnerHtml+=
                "<table class=\"table table-hover\">"+
						"<thead>"+
							"<tr>"+
								"<th>序号</th>"+
								"<th>姓名</th>"+
								"<th>开始时间</th>"+
								"<th>挑战结果</th>"+
								"<th>得分</th>"+
								"<th>耗时</th>"+
								"<th>网站身价</th>"+
								"<th>操作</th>"+
							"</tr>"+
						"</thead>"+
						"<tbody >";
            for (int m = 0; m < acceptRecords.Count; m++) { 
                
                 coderTable.InnerHtml+=
                        
							   "<tr>"+
									"<td>"+m+"</td>"+
									"<td>"+ 
											coders.ElementAt(m).name+
										  "</td>"+
									"<td>"+acceptRecords.ElementAt(m).time+"</td>"+
									"<td>"+  
											"<span class=\"label label-warning\">"+acceptRecords.ElementAt(m).result+"</span>"+
										 
										"</td>"+
									"<td>"+Tools.Config.getScore(acceptRecords.ElementAt(m).result)+"</td>"+
									"<td>"+(acceptRecords.ElementAt(m).subTime1+acceptRecords.ElementAt(m).subTime2+acceptRecords.ElementAt(m).subTime3)+"</td>"+
									"<td>"+   
											coders.ElementAt(m).price+
										"</td>"+
									"<td>"+
                                    "<a href=\"enterpriseRecommendDetail.aspx?coderEmail=" + coders.ElementAt(m).email + "\">"+
											"<button class=\"btn btn-sm btn-new1\">查看报告详情</button>"+
									"</a>"+
                                    "</td>"+
								"</tr>";
							
					
            }

            coderTable.InnerHtml +=
                    "</tbody>" +
                    "</table>";
           

        }
    }
}