using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1.ADMIN
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {

            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));

            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            Response.Cache.SetNoStore();

        }

        protected void Page_Load(object sender, EventArgs e)
        {
          Label1.Text = Session["adminusername"].ToString();
        }

        protected void signout_Click(object sender, EventArgs e)
        {
            Session["adminusername"] = null;
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("../USER/login.aspx");
            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");
            Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
            Response.Cache.SetNoStore();
        }
    }
}