using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication1.ADMIN
{
    public partial class HotelPartnersorderlist : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial Catalog=zeplin; Trusted_Connection=True;");

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