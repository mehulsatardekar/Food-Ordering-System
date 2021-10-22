using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
namespace WebApplication1.USER
{
    public partial class zeplincart : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                if (!IsPostBack)
                {
                    BindCartProducts();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        private void BindCartProducts()
        {
            if (Request.Cookies["zeplid"] != null)
            {
                string CookieData = Request.Cookies["zeplid"].Value.Split('=')[1];

                string[] CookieDataArray = CookieData.Split(',');


                if (CookieDataArray.Length > 0)
                {
                    h5NoItems.InnerText = "MY CART (" + CookieDataArray.Length + " Items)";
                    DataTable dtBrands = new DataTable();
                    Int64 CartTotal = 0;
                    Int64 Total = 40;
                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];

                        SqlCommand cmd = new SqlCommand("select * from zeplinproducts where pid=@val", cn);

                        cmd.Parameters.AddWithValue("val", PID);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);


                        sda.Fill(dtBrands);

                        CartTotal += Convert.ToInt64(dtBrands.Rows[i]["price"]);

                        //Total += Convert.ToInt64(dtBrands.Rows[i]["PSelPrice"]);
                    }


                    rptrCartProducts.DataSource = dtBrands;


                    rptrCartProducts.DataBind();
                    // divPriceDetails.Visible = true;

                    spanCartTotal.InnerText = CartTotal.ToString();
                    spanDiscount.InnerText = "- " + Total.ToString();
                    spanTotal.InnerText = "Rs. " +  (CartTotal - Total).ToString();

                } 

                else
                {
                    //TODO Show Empty Cart
                    // h5NoItems.InnerText = "Your Shopping Cart is Empty";


                }
            }
            else
            {
                StringBuilder Str = new StringBuilder();
                Str.Append("<div class='container'>");
                string imgurl = "../IMAGES/cart/icon_portfolio57.png";
                Str.Append("<div class='pt-3'>");
                Str.AppendFormat("<img id=\"SpeIma\" u=\"image\" src=\"{0}\" style='width: 575px; height: 421px' class='mx-auto d-block'/>", ResolveUrl(imgurl));
                Str.Append("</div>");
                Str.Append("<h1 class='text-center'>Your Cart Is Empty.</h1>");
                Str.Append("<div class='font-weight-normal text-center'> Add items from restaurans or zeplin and have them delivered right to you.</div>");
                Str.Append("<div class='font-weight-normal text-center'><a href='http://localhost:54521/USER/zeplinproducts.aspx'><button class='btn btn-primary mt-3 mb-3'>ADD Products.</button></a></div>");
                Str.Append("</div>");
                Response.Write(Str);
                pricedetails.Visible = false;
                zeplinBuyNow.Visible = false;


            }
        }







        protected void removeitem_Click(object sender, EventArgs e)
        {
            string CookiePID = Request.Cookies["zeplid"].Value.Split('=')[1];
            Button btn = (Button)(sender);
            string PIDSIZE = btn.CommandArgument;

            List<String> CookiePIDList = CookiePID.Split(',').Select(i => i.Trim()).Where(i => i != string.Empty).ToList();
            CookiePIDList.Remove(PIDSIZE);
            string CookiePIDUpdated = String.Join(",", CookiePIDList.ToArray());
            if (CookiePIDUpdated == "")
            {
                HttpCookie CartProducts = Request.Cookies["zeplid"];
                CartProducts.Values["zeplid"] = null;
                CartProducts.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(CartProducts);

            }
            else
            {
                HttpCookie CartProducts = Request.Cookies["zeplid"];
                CartProducts.Values["zeplid"] = CookiePIDUpdated;
                CartProducts.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(CartProducts);

            }
            Response.Redirect("zeplincart.aspx");
        }

        protected void zeplinBuyNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("zeplinpayment.aspx");
        }
    }
}