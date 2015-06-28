using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOxcoder
{
    public partial class adminRechargeCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void generateCode_Click(object sender, EventArgs e)
        {
            promoCode.Text = GetRandomString(8);
        }

        private static int getNewSeed()
        {
            byte[] rndBytes = new byte[4];
            System.Security.Cryptography.RNGCryptoServiceProvider rng = new System.Security.Cryptography.RNGCryptoServiceProvider();
            rng.GetBytes(rndBytes);
            return BitConverter.ToInt32(rndBytes, 0);
        } 
        
        static public string GetRandomString(int len)
        {
            string s = "123456789abcdefghijklmnpqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ";
            string reValue = string.Empty;
            Random rnd = new Random(getNewSeed());
            while (reValue.Length < len)
            {
                string s1 = s[rnd.Next(0, s.Length)].ToString();
                if (reValue.IndexOf(s1) == -1) reValue += s1;
            }
            return reValue;
        }

        protected void send_Click(object sender, EventArgs e)
        {
            IBLL.IPromoCode pc = BLLFactory.BLLAccess.CreatePromoCode();
            Model.promoCode promoCodeCommit = new Model.promoCode();

            promoCodeCommit.value = promoCode.Text.Trim().ToString();
            promoCodeCommit.inviteCount = Int32.Parse(invite.Text);
            promoCodeCommit.createCount = Int32.Parse(challenge.Text);

            if (pc.addPromoCode(promoCodeCommit))
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('添加成功!');location.href='adminRechargeCode.aspx';");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script language='JavaScript'>");
                Response.Write("alert('添加失败!');location.href='adminRechargeCode.aspx';");
                Response.Write("</script>");
            }

        }

        

        

        


        
    }
}