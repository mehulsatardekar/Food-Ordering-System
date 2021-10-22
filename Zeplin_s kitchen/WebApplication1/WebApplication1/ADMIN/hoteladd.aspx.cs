using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text;

namespace WebApplication1.ADMIN
{
    public partial class hoteladd : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusername"] != null)
            {

                    cn.Open();
                    if (!Page.IsPostBack)
                    {
                        string query1 = "select * from hotelpage order by hotelid";
                        SqlDataAdapter dr = new SqlDataAdapter(query1, cn);
                        DataTable dt = new DataTable();
                        dr.Fill(dt);
                        DropDownList1.DataSource = dt;
                        DropDownList1.DataTextField = "hotelid";
                        DropDownList1.DataValueField = "hotelid";
                        DropDownList1.DataBind();
                        }

                    if (!Page.IsPostBack)
                    {
                        string query2 = "select * from hotelpage order by hotelid";
                        SqlDataAdapter dr = new SqlDataAdapter(query2, cn);
                        DataTable dt = new DataTable();
                        dr.Fill(dt);
                        DropDownList2.DataSource = dt;
                        DropDownList2.DataTextField = "hotelid";
                        DropDownList2.DataValueField = "hotelid";
                        DropDownList2.DataBind();
                    }

          
                        string query3 = "select * from locationlists order by locationid asc";
                        SqlDataAdapter dr1 = new SqlDataAdapter(query3, cn);
                        DataTable dt1 = new DataTable();
                        dr1.Fill(dt1);
                        Repeater1.DataSource = dt1;
                        Repeater1.DataBind();

                       string query4 = "select * from hotelpage";
                       SqlDataAdapter dr2 = new SqlDataAdapter(query4, cn);
                       DataTable dt2 = new DataTable();
                       dr2.Fill(dt2);
                       Repeater2.DataSource = dt2;
                       Repeater2.DataBind();

                    cn.Close();
            }
            else
            {
                Response.Redirect("../USER/login.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            addhotelproduct();
            DropDownList1.DataBind();
        }

        void addhotelproduct()
        {
            if (FileUpload1.HasFile)
            {
                string SavePath = Server.MapPath("~/dbimg/hotelimg/");
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string file = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(SavePath + "\\" + file);

                string query1 = "insert into hotelpage(hotelimage,hotelname,hoteltype,hotelratings,hoteldeliverytime,hoteloffer,locationid,hotelprice) values(@himg,@hname,@htype,@hrating,@hdeliverytime,@hoffer,@hlocation,@hprice)";
                SqlCommand cmd = new SqlCommand(query1, cn);
                cmd.Parameters.AddWithValue("@himg", file);
                cmd.Parameters.AddWithValue("@hname", hotelname.Text);
                cmd.Parameters.AddWithValue("@htype", hoteltype.Text);
                cmd.Parameters.AddWithValue("@hrating", hotelrating.Text);
                cmd.Parameters.AddWithValue("@hdeliverytime", hoteldeliverytime.Text);
                cmd.Parameters.AddWithValue("@hoffer", hoteloffer.Text);
                cmd.Parameters.AddWithValue("@hlocation", hotellocation.Text);
                cmd.Parameters.AddWithValue("@hprice", hotelprice.Text);
                cmd.ExecuteNonQuery();
                SUCCESS();

                hotelname.Text = "";
                hoteltype.Text = "";
                hotelrating.Text = "";
                hoteldeliverytime.Text = "";
                hoteloffer.Text = "";
                hotellocation.Text = "";
                hotelprice.Text = "";
            }
            else
            {
                error();
            }

            void SUCCESS()
            {
                Response.Write("<script>alert('data inserted succesfully.')</script>)");
            }

            void error()
            {
                Response.Write("<script>alert('data not enserted.')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cn.Open();
            updatehotel();
            success();
        }

        void updatehotel()
        {
            string str = DropDownList1.SelectedItem.Text;

            if (FileUpload3.HasFile)
            {
                string SavePath = Server.MapPath("~/dbimg/hotelimg/");
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string file = Path.GetFileName(FileUpload3.PostedFile.FileName);
                FileUpload3.SaveAs(SavePath + "\\" + file);



                string update = "update hotelpage set hotelimage=@uimg where hotelid=" + str + "";
                SqlCommand cmd = new SqlCommand(update, cn);
                cmd.Parameters.AddWithValue("@uimg", file);
                cmd.ExecuteNonQuery();
                Response.Write("alert('data inserted successfully.')");

            }
            else
            {
                Response.Write("alert('data not inserted')");
            }
                
              
           
        }
        void success()
        {
            Response.Write("<script>alert(data updated.)</script>");
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            cn.Open();
            deletehotel();
        }

        void deletehotel()
        {
           string drp = DropDownList2.SelectedItem.Text;
           string delete = "delete from hotelpage where hotelid="+drp+"";
           SqlCommand sr = new SqlCommand(delete,cn);
           sr.ExecuteNonQuery();
            Response.Write("<script>alert('hotel deleted');</script>");
                      
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            cn.Open();
            if (TextBox1.Text != "")
            {
                locationadd();
            }
            else
            {
                Response.Write("<script>alert('error occured while adding hotel please enter value or try later');</script>");
            }
        }

        void locationadd()
        {
            try
            {

                string query1 = "insert into locationlists values(@location)";
                SqlCommand cmd = new SqlCommand(query1, cn);
                cmd.Parameters.AddWithValue("@location", TextBox1.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('location has been successfuly added.');</script>");
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('error occured while adding hotel please enter value or try later');</script>");
            }
        }
    }
}