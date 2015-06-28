using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace WebOxcoder
{
    public partial class coderInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //String coderEmail = Session["coderemail"].ToString();
            String coderEmail = "12301060@bjtu.edu.cn";

            IBLL.ICoder icoder = BLLFactory.BLLAccess.CreateCoder();
            Model.coder c = icoder.getCoderByEmail(coderEmail);

            coderPrice.InnerHtml = c.price.ToString();

        }
    }
}