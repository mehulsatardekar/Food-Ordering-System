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
    public partial class zeplinpayment : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True; MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                if (!IsPostBack)
                {
                    BindPriceData();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        public void BindPriceData()
        {
            if (Request.Cookies["zeplid"] != null)
            {
                string CookieData = Request.Cookies["zeplid"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    DataTable dtBrands = new DataTable();
                    Int64 CartTotal = 0;
                    Int64 Total = 40;
                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];


                        //if (hdPidSizeID.Value != null && hdPidSizeID.Value != "")
                        //{
                        //    hdPidSizeID.Value += "," + PID + "-" + SizeID;
                        //}
                        //else
                        //{
                        //    hdPidSizeID.Value = PID + "-" + SizeID;
                        //}


                        SqlCommand cmd = new SqlCommand("select * from zeplinproducts where pid=@val", cn);

                        cmd.Parameters.AddWithValue("val", PID);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);


                        sda.Fill(dtBrands);

                        CartTotal += Convert.ToInt64(dtBrands.Rows[i]["price"]);
                    }
                    //divPriceDetails.Visible = true;

                    spanCartTotal.InnerText = CartTotal.ToString();
                    spanTotal.InnerText = "Rs. " + (CartTotal - Total).ToString();
                    spanDiscount.InnerText = "- " + Total.ToString();

                    hdCartAmount.Value = CartTotal.ToString();
                    hdCartDiscount.Value = Total.ToString();
                    hdTotalPayed.Value = (CartTotal - Total).ToString();
                }
                else
                {
                    //TODO Show Empty Cart
                    Response.Redirect("hotelpartners.aspx");
                }
            }
            else
            {
                //TODO Show Empty Cart
                Response.Redirect("hotelpartners.aspx");
            }
        }

        protected void zeplincashondelivery_Click(object sender, EventArgs e)
        {
            cn.Open();
            string USERNAME = Session["username"].ToString();
            string PaymentType = "Cash-on-Delivery";
            string PaymentStatus = "NotPaid";
            //string EMAILID = Session["USEREMAIL"].ToString();
            DateTime dt = DateTime.Now;
            string deliverystatus = "NotDeliverYet";


            SqlCommand cmd3 = new SqlCommand("select * from users where username=@username", cn);
            cmd3.Parameters.AddWithValue("@username", USERNAME);
            SqlDataAdapter sda = new SqlDataAdapter(cmd3);
            DataTable dt1 = new DataTable();
            sda.Fill(dt1);

            string EMAILID;
            EMAILID = dt1.Rows[0][2].ToString().Trim();

            SqlCommand cmd = new SqlCommand("insert into tblZeplinPurchasecashondelivery(Ztpuname,Zusername,ZCartAmount,ZCartDiscount,ZTotalPayed,ZPaymentType,ZPaymentStatus,ZDateOfPurchase,ZAddress,ZOrderNotes,ZMobileNumber,Ztransactionid) values(@puname,@username,@cartamount,@cartdiscount,@totalpay,@paymenttyp,@paymentstat,@datetime,@paddress,@ordernote,@mobnum,NEWID()) select SCOPE_IDENTITY()", cn);
                    cmd.Parameters.AddWithValue("@puname", txtName.Text);
                   cmd.Parameters.AddWithValue("@username", USERNAME);
                   cmd.Parameters.AddWithValue("@cartamount", hdCartAmount.Value);
                    cmd.Parameters.AddWithValue("@cartdiscount", hdCartDiscount.Value);
                   cmd.Parameters.AddWithValue("@totalpay", hdTotalPayed.Value);
                   cmd.Parameters.AddWithValue("@paymenttyp", PaymentType);
                   cmd.Parameters.AddWithValue("@paymentstat", PaymentStatus);
                   cmd.Parameters.AddWithValue("@datetime", dt);
                   cmd.Parameters.AddWithValue("@paddress", txtAddress.Text);
                   cmd.Parameters.AddWithValue("@ordernote", ordernotes.Text);
                   cmd.Parameters.AddWithValue("@mobnum", txtMobileNumber.Text);

            Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
                    if (Request.Cookies["zeplid"] != null)
                    {
                        string CookieData = Request.Cookies["zeplid"].Value.Split('=')[1];
                        string[] CookieDataArray = CookieData.Split(',');
                        if (CookieDataArray.Length > 0)
                        {
                            DataTable dtBrands = new DataTable();

                           for (int i = 0; i < CookieDataArray.Length; i++)
                            {
                                string PID = CookieDataArray[i].ToString().Split('-')[0];

                                SqlCommand cmdtac = new SqlCommand("select * from zeplinproducts where pid=@val", cn);
                                cmdtac.Parameters.AddWithValue("val", PID);

                                SqlDataReader dr = cmdtac.ExecuteReader();
                                while (dr.Read())
                                {
                                    string id = dr["pid"].ToString();
                                    string dishname = dr["pdishname"].ToString();
                                    string hotelref = dr["fwh"].ToString();
                                    string price = dr["price"].ToString();
                            execute(id, dishname, hotelref, USERNAME, PID, deliverystatus, PurchaseID, price);
                                  
                                }
                                dr.Close();
                            }
                        }

                    }

            Response.Redirect("zeplinpaymentsuccess.aspx");
         }

        void execute(string id, string dishname, string hotelref, string USERNAME, String PID, String deliverystatus, Int64 PurchaseID, string price)
        {
            SqlCommand cmd1 = new SqlCommand("insert into Zephotelpurchproductscashondelivery(Zusername,Zprodid,Zproddishname,Zdishprice,Zrefhotel,Zdeliverystatus,Zpurchaseid) values(@usernm,@prodid,@dishname,@dishprice,@dishhotref,@deliverystats,@purchaseid) select SCOPE_IDENTITY()", cn);
            cmd1.Parameters.AddWithValue("@usernm", USERNAME);
            cmd1.Parameters.AddWithValue("@prodid", PID);
            cmd1.Parameters.AddWithValue("@purchaseid", PurchaseID);
            cmd1.Parameters.AddWithValue("@deliverystats", deliverystatus);
            cmd1.Parameters.AddWithValue("@dishname", dishname.ToString());
            cmd1.Parameters.AddWithValue("@dishhotref", hotelref.ToString());
            cmd1.Parameters.AddWithValue("@dishprice", price.ToString());
            cmd1.ExecuteNonQuery();
        }
    }
}
    
