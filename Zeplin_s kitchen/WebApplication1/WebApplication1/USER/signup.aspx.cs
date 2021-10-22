using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Web.Security;
using System.Threading.Tasks;

namespace WebApplication1.USER
{
    public  partial class signup : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");
        protected void Page_Load(object sender, EventArgs e)
        {

            // Response.Write(dt);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand sql1 = new SqlCommand("counter", cn);
            sql1.CommandType = CommandType.StoredProcedure;

            SqlCommand sql2 = new SqlCommand("gmailcounter", cn);
            sql2.CommandType = CommandType.StoredProcedure;

            SqlParameter sqlParameter = sql1.Parameters.Add("@username", SqlDbType.VarChar);

            SqlParameter sqlParameter1 = sql2.Parameters.Add("@emailid", SqlDbType.VarChar);

            sqlParameter.Direction = ParameterDirection.ReturnValue;
            sql1.Parameters.AddWithValue("@username", username.Text);
            sql1.ExecuteNonQuery();


            sqlParameter1.Direction = ParameterDirection.ReturnValue;
            sql2.Parameters.AddWithValue("@emailid", emailaddress.Text);
            sql2.ExecuteNonQuery();
            int gid = (int)sqlParameter1.Value;
            int id = (int)sqlParameter.Value;

            if (id > 0)
            {
                errorlogin();

            }
            if(gid>0)
            {
                errorlogin1();
            }
            else
            {
                credentials();
                successlogin();
            }
            cn.Close();
        }
        /* these are the function provides css error modules*/
        void errorlogin()
        {
            StringBuilder S = new StringBuilder();
            S.Append("<div class='container col-6'> <div class='alert alert-warning alert-dismissible fade show' role='alert'><strong>OOPS :(</strong>  USERNAME WITH THIS ACCOUNT ALREADY EXIST. LOGIN WITH THIS ACCOUNT OR CREATE NEW ONE.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div> </div>");
            Response.Write(S);

        }
        void errorlogin1()
        {
            StringBuilder S = new StringBuilder();
            S.Append("<div class='container col-6'> <div class='alert alert-warning alert-dismissible fade show' role='alert'><strong>OOPS :(</strong> THIS GMAIL-ID ALREADY IN USE. CHOOSE ANOTHER ONE TO CREATE ACCOUNT.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div> </div>");
            Response.Write(S);

        }

        void successlogin()
        {
            StringBuilder S = new StringBuilder();
            S.Append("<div class='container col-6 PY-3'> <div class='primary alert-primary alert-dismissible fade show' role='alert'><strong>HURREY ;)</strong>  ACCOUNT IS SUCCESFULLY CREATED. NOW LOGIN WITH THIS ACCOUNT.<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div> </div>");
            Response.Write(S);


        }

        //function to enter value in signup module
        void credentials()
        {
            string password;

            DateTime dt = DateTime.Now;

            passwordhash pwdhs = new passwordhash();
            password=pwdhs.HashPassword(passwordinput.Text);

            string usertype = "user";
            //insert data into database
            SqlCommand cmd = new SqlCommand("insert into users(username,gmail,password,phonenumber,account_creation_datetime,usertype) values(@username,@emailid,@password,@phoneno,@datetime,@usertype)", cn);
            cmd.Parameters.AddWithValue("@username", username.Text);
            cmd.Parameters.AddWithValue("@emailid", emailaddress.Text);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@phoneno", phonenumber.Text);
            cmd.Parameters.AddWithValue("@datetime", dt);
            cmd.Parameters.AddWithValue("@usertype", usertype);

            cmd.ExecuteNonQuery();
            
                username.Text = "";
                emailaddress.Text = "";
                passwordinput.Text = "";
                phonenumber.Text = "";
            
            
        }
       

    }
}