using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using paytm;
using System.Web.Security;

namespace WebApplication1.USER
{
    public partial class payment : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True; MultipleActiveResultSets=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                BindPriceData();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        public void BindPriceData()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    DataTable dtBrands = new DataTable();
                    Int64 CartTotal = 0;
                    Int64 Total = 60;
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


                        SqlCommand cmd = new SqlCommand("select * from hotelproducts where id=@val", cn);

                        cmd.Parameters.AddWithValue("val", PID);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);


                        sda.Fill(dtBrands);

                        CartTotal += Convert.ToInt64(dtBrands.Rows[i]["dishprice"]);
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
        protected void paytm_Click(object sender, EventArgs e)
        {



            cn.Open();
            string USERNAME = Session["username"].ToString();
            string PaymentType = "Paytm";
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


            //Insert Data to tblPurchase

            SqlCommand cmd = new SqlCommand("insert into tblPurchase(tpuname,username,CartAmount,CartDiscount,TotalPayed,PaymentType,PaymentStatus,DateOfPurchase,Address,OrderNotes,MobileNumber) values(@puname,@username,@cartamount,@cartdiscount,@totalpay,@paymenttyp,@paymentstat,@datetime,@paddress,@ordernote,@mobnum) select SCOPE_IDENTITY()", cn);
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


            //Session["txtname"]= txtName.Text;
            //Session["username"]=USERNAME;
            //Session["hdcartamt"]=hdCartAmount.Value;
            //Session["hdcartdiscount"] = hdCartDiscount.Value;
            //Session["hdtotalpay"] = hdTotalPayed.Value;
            //Session["paytyp"] = PaymentType;
            //Session["paystatus"] = PaymentStatus;
            //Session["hdtotalpay"] = dt;
            //Session["hdtotalpay"] = txtAddress.Text;
            //Session["ordernotes"] = ordernotes.Text;
            //Session["txtmobnum"] = txtMobileNumber.Text;

            Int64 PurchaseID = Convert.ToInt64(cmd.ExecuteScalar());
            Session["purchaseid"] = PurchaseID;
            if (Request.Cookies["CartPID"] != null)
            {
                string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] CookieDataArray = CookieData.Split(',');
                if (CookieDataArray.Length > 0)
                {
                    DataTable dtBrands = new DataTable();

                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];
                        SqlCommand cmdtac = new SqlCommand("select * from hotelproducts where id=@val", cn);
                        cmdtac.Parameters.AddWithValue("val", PID);

                        SqlDataReader dr = cmdtac.ExecuteReader();
                        while (dr.Read())
                        {
                            string hdishname = dr["dishname"].ToString();
                            string hhotelref = dr["fwhotel"].ToString();
                            string hprice = dr["dishprice"].ToString();
                            executepaytm( hdishname, hhotelref, USERNAME, PID, deliverystatus, PurchaseID, hprice);
                        }
                        dr.Close();




                     
                    }
                }


                string CallbackURL = "http://localhost:54521/USER/callback.aspx";

                PaytmPayment(EMAILID, txtMobileNumber.Text, USERNAME, PurchaseID.ToString(), hdCartAmount.Value, CallbackURL);
            }
        }

        void executepaytm(string hdishname, string hhotelref, string USERNAME, String PID, String deliverystatus, Int64 PurchaseID, string hprice)
        {
            SqlCommand cmd1 = new SqlCommand("insert into hotelpurchproducts(husername,hproductid,hdishname,hhotelref,hprice,hdeliverystatus,hpurchaseid) values(@husernm,@hprodid,@hdishname,@dishhotref,@dishprice,@deliverystats,@hpurchaseid)", cn);
            cmd1.Parameters.AddWithValue("@husernm", USERNAME);
            cmd1.Parameters.AddWithValue("@hprodid", PID);
            cmd1.Parameters.AddWithValue("@hdishname", hdishname.ToString());
            cmd1.Parameters.AddWithValue("@dishhotref", hhotelref.ToString());
            cmd1.Parameters.AddWithValue("@dishprice", hprice.ToString());
            cmd1.Parameters.AddWithValue("@deliverystats", deliverystatus);
            cmd1.Parameters.AddWithValue("@hpurchaseid", PurchaseID);
            cmd1.ExecuteNonQuery();
        }

        public void PaytmPayment(string EMAIL, string MOBILE_NO, string USERNAME, string ORDER_ID, string TXN_AMOUNT, string CALLBACK_URL)
        {
            String merchantKey = "A#cu#T#gAMd&jLHF";
            Dictionary<string, string> parameters = new Dictionary<string, string>();
            parameters.Add("MID", "zeplin87649300910120");
            parameters.Add("CHANNEL_ID", "WEB");
            parameters.Add("INDUSTRY_TYPE_ID", "Retail");
            parameters.Add("WEBSITE", "WEBSTAGING");
            parameters.Add("EMAIL", EMAIL);
            parameters.Add("MOBILE_NO", MOBILE_NO);
            parameters.Add("CUST_ID", USERNAME);
            parameters.Add("ORDER_ID", ORDER_ID);
            parameters.Add("TXN_AMOUNT", TXN_AMOUNT);
            parameters.Add("CALLBACK_URL", CALLBACK_URL); //This parameter is not mandatory. Use this to pass the callback url dynamically.

            try
            {

                string checksum = CheckSum.generateCheckSum(merchantKey, parameters);

                string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction?orderid=" + ORDER_ID;

                string outputHTML = "<html>";
                outputHTML += "<head>";
                outputHTML += "<title>Merchant Check Out Page</title>";
                outputHTML += "</head>";
                outputHTML += "<body>";
                outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
                outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
                outputHTML += "<table border='1'>";
                outputHTML += "<tbody>";
                foreach (string key in parameters.Keys)
                {
                    outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";

                }
                outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
                outputHTML += "</tbody>";
                outputHTML += "</table>";
                outputHTML += "<script type='text/javascript'>";
                outputHTML += "document.f1.submit();";
                outputHTML += "</script>";
                outputHTML += "</form>";
                outputHTML += "</body>";
                outputHTML += "</html>";
                Response.Write(outputHTML);

            }
            catch (paytm.exception.CryptoException key)
            {

            }



        }

        protected void cashondelivery_Click(object sender, EventArgs e)
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


            //Insert Data to tblPurchasecashondelivery

            SqlCommand cmd = new SqlCommand("insert into tblPurchasecashondelivery(Ctpuname,Cusername,CCartAmount,CCartDiscount,CTotalPayed,CPaymentType,CPaymentStatus,CDateOfPurchase,CAddress,COrderNotes,CMobileNumber,Ctransactionid) values(@puname,@username,@cartamount,@cartdiscount,@totalpay,@paymenttyp,@paymentstat,@datetime,@paddress,@ordernote,@mobnum,NEWID()) select SCOPE_IDENTITY()", cn);
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
                if (Request.Cookies["CartPID"] != null)
                {
                    string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
                    string[] CookieDataArray = CookieData.Split(',');
                    if (CookieDataArray.Length > 0)
                    {
                        DataTable dtBrands = new DataTable();

                    for (int i = 0; i < CookieDataArray.Length; i++)
                    {
                        string PID = CookieDataArray[i].ToString().Split('-')[0];

                        SqlCommand cmdtac = new SqlCommand("select * from hotelproducts where id=@val", cn);
                        cmdtac.Parameters.AddWithValue("val", PID);

                        SqlDataReader dr = cmdtac.ExecuteReader();
                        while (dr.Read())
                        {
                            string id = dr["id"].ToString();
                            string dishname = dr["dishname"].ToString();
                            string hotelref = dr["fwhotel"].ToString();
                            string price = dr["dishprice"].ToString();
                            execute(id, dishname, hotelref, USERNAME, PID, deliverystatus, PurchaseID,price);
                        }
                        dr.Close();
                    }
                    }

                }

            //end insertion.


            Response.Redirect("paymentsuccesscod.aspx");

        }

       

        void execute(string id, string dishname, string hotelref, string USERNAME, String PID, String deliverystatus, Int64 PurchaseID , string price)
        {
            SqlCommand cmd1 = new SqlCommand("insert into hotelpurchproductscashondelivery(Cusername,Cprodid,Cproddishname,Cdishprice,Crefhotel,Cdeliverystatus,Cpurchaseid) values(@usernm,@prodid,@dishname,@dishprice,@dishhotref,@deliverystats,@purchaseid) select SCOPE_IDENTITY()", cn);
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