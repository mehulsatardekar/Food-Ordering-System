using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using BCrypt.Net;

namespace WebApplication1.USER
{
    public partial class recoverpassword : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");
        String GUIDvalue;
        DataTable dt = new DataTable();
        string Uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            GUIDvalue = Request.QueryString["Uid"];
            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPassRequests where id='" + GUIDvalue + "'", cn);
                cn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid = dt.Rows[0][1].ToString();
                }
                else
                {
                    lblMsg.Text = "Your Password Reset Link is Expired or Invalid !";
                    lblMsg.ForeColor = Color.Red;
                }

            }
            else
            {
                Response.Redirect("../USER/signup.aspx");
            }


            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    tbNewPass.Visible = true;
                    tbConfirmPass.Visible = true;
                    lblPassword.Visible = true;
                    lblRetypePass.Visible = true;
                    btRecPass.Visible = true;
                }
                else
                {
                    lblMsg.Text = "Your Password Reset Link is Expired or Invalid !";
                    lblMsg.ForeColor = Color.Red;
                }
            }
        }

        protected void btRecPass_Click(object sender, EventArgs e)
        {
            if (tbNewPass.Text != null && tbConfirmPass.Text != null && tbNewPass.Text == tbConfirmPass.Text)
            {



                SqlCommand cmd3 = new SqlCommand("select * from users where username='" + Uid + "'", cn);
                cmd3.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd3);
                sda.Fill(dt);
              

             
            string password;
            passwordhash pwdhs = new passwordhash();
            password = pwdhs.HashPassword(tbConfirmPass.Text);

            SqlCommand cmd = new SqlCommand("update users set password=@newpwd where username=@usernm", cn);
                cmd.Parameters.AddWithValue("@newpwd", password);
                cmd.Parameters.AddWithValue("@usernm", Uid);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("delete from ForgotPassRequests where username=@un", cn);
                cmd2.Parameters.AddWithValue("@un", Uid);
                cmd2.ExecuteNonQuery();
                Response.Write("<script>alert('password changed successfully');</script>");
                Response.Redirect("../USER/login.aspx");

            }
            else
            {
                Response.Write("<script>alert('there is something error occured please try again later or contact us.');</script>");
            }
        }
    }
}