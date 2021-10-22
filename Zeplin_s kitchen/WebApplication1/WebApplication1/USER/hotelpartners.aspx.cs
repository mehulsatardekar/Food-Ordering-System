using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.USER
{
    public partial class hotelpartners : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial Catalog=zeplin; Trusted_Connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                SqlDataAdapter rep = new SqlDataAdapter("select * from hotelpage", cn);
                DataTable dt = new DataTable();
                rep.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();

                if (!Page.IsPostBack)
                {
                    SqlDataAdapter drp = new SqlDataAdapter("select loctionname from locationlists", cn);
                    DataTable dt1 = new DataTable();
                    drp.Fill(dt1);
                    DropDownList1.DataSource = dt1;
                    DropDownList1.DataTextField = "loctionname";
                    DropDownList1.DataBind();
                    // cn.Close();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string drp = DropDownList1.SelectedItem.Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from hotelpage inner join locationlists on hotelpage.locationid = locationlists.locationid where loctionname = @val", cn);
            cmd.Parameters.AddWithValue("@val", DropDownList1.SelectedItem.Text);
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            cn.Close();

        }
       

        
    }
}