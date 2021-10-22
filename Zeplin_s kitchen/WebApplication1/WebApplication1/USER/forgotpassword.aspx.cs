using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;

namespace WebApplication1.USER
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetpassword_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from users where gmail=@email", cn);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                string Uid =dt.Rows[0][1].ToString();
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequests values('" + myGUID + "','" + Uid + "',getdate())", cn);
                cmd1.ExecuteNonQuery();

                //send email
                String ToEmailAddress = dt.Rows[0][2].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset your password <br/><br/> http://localhost:54521/USER/recoverpassword.aspx?Uid=" + myGUID;
                MailMessage PassRecMail = new MailMessage("mehulsatardekar1999@gmail.com", ToEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";

                //SmtpClient SMTP = new SmtpClient("smtp-mail.outlook.com", 587);
                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "mehulsatardekar1999@gmail.com",
                    Password = "7738760120m"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);

                lblPassRec.Text = "Check your email to reset your password.";
                lblPassRec.ForeColor = Color.Green;

            }
            else
            {
                lblPassRec.Text = "OOps This email id DOES NOT exist in our database !";
                lblPassRec.ForeColor = Color.Red;
            }




        }
    }
}