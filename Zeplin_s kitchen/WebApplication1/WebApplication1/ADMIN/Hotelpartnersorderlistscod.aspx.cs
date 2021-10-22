using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.ADMIN
{
    public partial class Hotelpartnersorderlistscod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusername"] != null)
            {

            }
            else
            {
                Response.Redirect("../USER/login.aspx");

            }
        }
    }
}