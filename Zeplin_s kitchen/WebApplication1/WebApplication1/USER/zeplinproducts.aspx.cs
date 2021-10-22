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
    public partial class zeplinproducts : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial Catalog=zeplin; Trusted_Connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                if (!IsPostBack)
                {
                    string query2 = "select * from zeplinproducts";
                    SqlDataAdapter dr1 = new SqlDataAdapter(query2, cn);
                    DataTable dt1 = new DataTable();
                    dr1.Fill(dt1);
                    repeater2.DataSource = dt1;
                    repeater2.DataBind();

                }

                if (!Page.IsPostBack)
                {
                    SqlDataAdapter drp = new SqlDataAdapter("select categories from category", cn);
                    DataTable dt1 = new DataTable();
                    drp.Fill(dt1);
                    DropDownList1.DataSource = dt1;
                    DropDownList1.DataTextField = "categories";
                    DropDownList1.DataBind();
                    // cn.Close();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void zepprodadd_Click(object sender, EventArgs e)
        {
            string zepid = (sender as Button).CommandArgument;
            if (Request.Cookies["zeplid"] != null)
            {
                string CookiePID = Request.Cookies["zeplid"].Value.Split('=')[1];
                CookiePID = CookiePID + "," + zepid;

                HttpCookie CartProducts = new HttpCookie("zeplid");
                CartProducts.Values["zeplid"] = CookiePID;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
                Response.Redirect(Request.Url.AbsoluteUri);

            }
            else
            {
                HttpCookie CartProducts = new HttpCookie("zeplid");
                CartProducts.Values["zeplid"] = zepid.ToString();
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
                Response.Redirect(Request.Url.AbsoluteUri);

            }
        }

        protected void searchbycategories_Click(object sender, EventArgs e)
        {
            string drp = DropDownList1.SelectedItem.Text;
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from zeplinproducts inner join category on zeplinproducts.categories = category.categories  where category.categories=@val;", cn);
            cmd.Parameters.AddWithValue("@val", DropDownList1.SelectedItem.Text);
            repeater2.DataSource = cmd.ExecuteReader();
            repeater2.DataBind();
            cn.Close();
        }
    }
}