using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BCrypt;
using System.Text;


namespace WebApplication1.USER
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
           
            SqlCommand sql1 = new SqlCommand("getloginuser", cn);
            sql1.CommandType = CommandType.StoredProcedure;

            SqlParameter sqlParameter = sql1.Parameters.Add("@username", SqlDbType.VarChar);


            sqlParameter.Direction = ParameterDirection.ReturnValue;
            sql1.Parameters.AddWithValue("@username", username.Text);
            sql1.ExecuteNonQuery();
            int id = (int)sqlParameter.Value;

            SqlCommand cmd = new SqlCommand("select * from users where username=@username",cn);
            cmd.Parameters.AddWithValue("@username", username.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (id == 0)
            {
                usernotfound();
            }

            string hashpassword;
            hashpassword = dt.Rows[0][3].ToString();

            string utype;
            utype = dt.Rows[0][6].ToString().Trim();

            bool ver = BCrypt.Net.BCrypt.Verify(password.Text,hashpassword);


            if (ver == true)
            {
                if (utype == "user")
                {
                    Session["username"] = username.Text;
                    Response.Redirect("~/USER/home.aspx");


                    //updating userlast login time
                    SqlCommand cm = new SqlCommand("lastlogin", cn);
                    cm.CommandType = CommandType.StoredProcedure;
                    SqlParameter sqlPar = sql1.Parameters.Add("@lastlogin", SqlDbType.VarChar);
                    cm.Parameters.AddWithValue("@lastlogin", username.Text);
                    cm.ExecuteNonQuery();
                }
                else if (utype == "admin")
                {
                    Session["adminusername"] = username.Text;
                    Response.Redirect("../ADMIN/hoteladd.aspx");

                    //updating userlast login time
                    SqlCommand cm = new SqlCommand("lastlogin", cn);
                    cm.CommandType = CommandType.StoredProcedure;
                    SqlParameter sqlPar = sql1.Parameters.Add("@lastlogin", SqlDbType.VarChar);
                    cm.Parameters.AddWithValue("@lastlogin", username.Text);
                    cm.ExecuteNonQuery();
                }
            }
            else
            {
                errorlogin();
            }

        }


        void errorlogin()
        {
            //this is html and css 
            StringBuilder S = new StringBuilder();
            S.Append("<div class='container col-6 '> <div class='alert alert-warning alert-dismissible fade show' role='alert'><strong>OOPS :(</strong> USERNAME OR PASSWORD IS INCORRECT :( <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div> </div>");
            Response.Write(S);

        }

        void usernotfound()
        {
            //this is html and css
            StringBuilder S = new StringBuilder();
            S.Append("<div class='container col-6 '> <div class='alert alert-warning alert-dismissible fade show' role='alert'><strong>OOPS :(</strong> USERNAME WITH THIS ACCOUNT NOT REGISTER. <button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div> </div>");
            Response.Write(S);

        }
    }
}