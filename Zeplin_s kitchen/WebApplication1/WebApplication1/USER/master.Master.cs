using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.USER
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)

        {

            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));

            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.Cache.SetNoStore();

        }



        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["username"].ToString();
            BindCartNumber();
            BindCartNumber1();
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();
            }
        }
        public void BindCartNumber1()
        {
            if (Request.Cookies["zeplid"] != null)
            {
                string CookiePID = Request.Cookies["zeplid"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pCount1.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount1.InnerText = 0.ToString();
            }
        }

        protected void signout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("login.aspx");
            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");
            Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
            Response.Cache.SetNoStore();
        }
    }
}