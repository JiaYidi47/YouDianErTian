using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class enterprisePayment : System.Web.UI.Page
    {
        IBLL.IEnterprise ienterprise;
        Model.enterprise thisEnterprise;

        protected void Page_Load(object sender, EventArgs e)
        {
            String enterpriseEmail = "12301067@bjtu.edu.cn";

            ienterprise = BLLFactory.BLLAccess.CreateEnterprise();
            thisEnterprise = ienterprise.getEnterpriseByEmail(enterpriseEmail);

            have.InnerHtml = thisEnterprise.restInvite + "个邀请" + "+" + thisEnterprise.restCreate + "个挑战";
        }

        protected void useCode_Click(object sender, EventArgs e)
        {

        }

    }
}