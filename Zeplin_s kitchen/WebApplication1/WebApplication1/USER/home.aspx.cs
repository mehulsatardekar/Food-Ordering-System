using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1.USER
{
    public partial class home : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                if (!IsPostBack)
                {

                    string query1 = "select top 4 * from hotelpage order by  hotelid desc;";
                    SqlDataAdapter dr = new SqlDataAdapter(query1, cn);
                    DataTable dt = new DataTable();
                    dr.Fill(dt);
                    repeater1.DataSource = dt;
                    repeater1.DataBind();

                    string query2 = "select top 4 * from zeplinproducts order by pid desc;";
                    SqlDataAdapter dr1 = new SqlDataAdapter(query2, cn);
                    DataTable dt1 = new DataTable();
                    dr1.Fill(dt1);
                    repeater2.DataSource = dt1;
                    repeater2.DataBind();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void redirctpartners_Click(object sender, EventArgs e)
        {
            Response.Redirect("hotelpartners.aspx");
        }

        protected void zeplinprodredirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("zeplinproducts.aspx");
        }

       
    }
}