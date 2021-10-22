using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.USER
{
    public partial class zeplinpaymentsuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Cookies["zeplid"].Expires = DateTime.Now.AddDays(-1);

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}