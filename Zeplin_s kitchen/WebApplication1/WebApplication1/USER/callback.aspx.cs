using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paytm;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.USER
{
    public partial class callback : System.Web.UI.Page
    {
       

        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
       
            if(Session["username"]!=null)
                {
                    String merchantKey = "A#cu#T#gAMd&jLHF"; // Replace the with the Merchant Key provided by Paytm at the time of registration.
           
                    try
                    {
                               Dictionary<string, string> parameters = new Dictionary<string, string>();

                                string paytmChecksum = "";
                                foreach (string key in Request.Form.Keys)
                                {
                                    parameters.Add(key.Trim(), Request.Form[key].Trim());

                                }

                                if (parameters.ContainsKey("CHECKSUMHASH"))
                                {
                                    paytmChecksum = parameters["CHECKSUMHASH"];
                                    parameters.Remove("CHECKSUMHASH");
                                }

                                if (CheckSum.verifyCheckSum(merchantKey, parameters, paytmChecksum))
                                {
                                    string paytmStatus = parameters["STATUS"];
                                    string txnId = parameters["TXNID"];
                                    pTxnId.InnerText = "Transaction Id : " + txnId;
                                    if (paytmStatus == "TXN_SUCCESS")
                                    {
                            cn.Open();
                            h1Message.InnerText = "Your payment has benn successfully processed.";
                            SqlCommand cmd = new SqlCommand("update tblPurchase set transactionid =@id , PaymentStatus='paid' where PurchaseID=@pid ", cn);
                            cmd.Parameters.AddWithValue("@id", txnId);
                            cmd.Parameters.AddWithValue("@pid", Session["purchaseid"].ToString());
                            cmd.ExecuteNonQuery();
                            cn.Close();

                        }
                                    else if (paytmStatus == "PENDING")
                                    {
                                        h1Message.InnerText = "Payment is pending !";
                                    }
                                    else if (paytmStatus == "TXN_FAILURE")
                                    {
                                        h1Message.InnerText = "Payment Failure !";
                                    }
                                }
                                else
                                {
                                    Response.Write("Checksum Mismatch");
                                }
                            }
                            catch (paytm.exception.CryptoException )
                            {
                                // Response.Write("<h1>" + key.Message + "</h1>");
                            }
                }
            else
            {
                Response.Redirect("login.aspx");
            }












        }
    }
}