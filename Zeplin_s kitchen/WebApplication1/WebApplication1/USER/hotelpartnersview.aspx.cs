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
    public partial class hotelpartnersview : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial Catalog=zeplin; Trusted_Connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                if (!IsPostBack)
                {
                    string query1 = "select * from hotelpage where hotelid= " + Request.QueryString["IdeaId"] + "";
                    SqlDataAdapter dr = new SqlDataAdapter(query1, cn);
                    DataTable dt = new DataTable();
                    dr.Fill(dt);
                    Repeater4.DataSource = dt;
                    Repeater4.DataBind();

                    string query2 = "select * from hotelproducts where hotelid=" + Request.QueryString["IdeaId"] + " ";
                    SqlDataAdapter dr1 = new SqlDataAdapter(query2, cn);
                    DataTable dt1 = new DataTable();
                    dr1.Fill(dt1);
                    Repeater1.DataSource = dt1;
                    Repeater1.DataBind();


                    SqlDataAdapter drp = new SqlDataAdapter("SELECT  count(DISTINCT foodtype),foodtype FROM hotelproducts Group by foodtype;", cn);
                    DataTable dt2 = new DataTable();
                    drp.Fill(dt2);
                    DropDownList1.DataSource = dt2;
                    DropDownList1.DataTextField = "foodtype";
                    DropDownList1.DataBind();
                    // cn.Close();


                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void vegbtn_Click(object sender, EventArgs e)
        {

            

            string PD = (sender as Button).CommandArgument;
                if (Request.Cookies["CartPID"] != null)
                {

                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                    CookiePID = CookiePID + "," + PD;
                
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = CookiePID;
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                Response.Redirect(Request.Url.AbsoluteUri);

            }
            else
                {
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = PD.ToString();
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                Response.Redirect(Request.Url.AbsoluteUri);

            }


        }

        protected void nonvegbtn_Click(object sender, EventArgs e)
        {
            

            string PD = (sender as Button).CommandArgument;
            
            if (Request.Cookies["CartPID1"] != null)
            {
                string CookiePID = Request.Cookies["CartPID1"].Value.Split('=')[1];
                CookiePID = CookiePID + "," + PD;

                HttpCookie CartProducts = new HttpCookie("CartPID1");
                CartProducts.Values["CartPID1"] = CookiePID;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
                Response.Redirect(Request.Url.AbsoluteUri);

            }
            else
            {
                HttpCookie CartProducts = new HttpCookie("CartPID");
                CartProducts.Values["CartPID"] = PD.ToString();
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);
                Response.Redirect(Request.Url.AbsoluteUri);

            }
        }

     
        protected void applychange_Click(object sender, EventArgs e)
        {
            string query2 = "select * from hotelproducts where hotelid=" + Request.QueryString["IdeaId"] + " and foodtype='" + DropDownList1.SelectedItem.Text + "' ";
            SqlDataAdapter dr4 = new SqlDataAdapter(query2, cn);
            DataTable dt4 = new DataTable();
            dr4.Fill(dt4);
            Repeater1.DataSource = dt4;
            Repeater1.DataBind();
        }

        protected void cancelchanges_Click(object sender, EventArgs e)
        {
            string query2 = "select * from hotelproducts where hotelid=" + Request.QueryString["IdeaId"] + "";
            SqlDataAdapter dr4 = new SqlDataAdapter(query2, cn);
            DataTable dt4 = new DataTable();
            dr4.Fill(dt4);
            Repeater1.DataSource = dt4;
            Repeater1.DataBind();
        }
    }
}