using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication1.ADMIN
{
    public partial class hotelproductadd : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusername"] != null)
            {

            if (!Page.IsPostBack)
            {
                string query2 = "select id from hotelproducts order by id";
                SqlDataAdapter dr1 = new SqlDataAdapter(query2, cn);
                DataTable dt1 = new DataTable();
                dr1.Fill(dt1);
                DropDownList4.DataSource = dt1;
                DropDownList4.DataTextField = "id";
                DropDownList4.DataValueField = "id";
                DropDownList4.DataBind();
            }
            

                
            }
            else
            {
                Response.Redirect("../USER/login.aspx");

            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            cn.Open();
            addhotelproduct();

        }

        void addhotelproduct()
        {
            if (FileUpload1.HasFile && FileUpload2.HasFile)
            {
                string SavePath = Server.MapPath("~/dbimg/hotelimg/hotelproductimg/");
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string file = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(SavePath + "\\" + file);

                string SavePath1 = Server.MapPath("~/dbimg/hotelimg/hotelproductimg/hotelproductimagetype/");
                if (!Directory.Exists(SavePath1))
                {
                    Directory.CreateDirectory(SavePath1);
                }
                string file1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload2.SaveAs(SavePath1 + "\\" + file1);




                string query1 = "insert into hotelproducts(dishimage,dishname,dishimagetype,dishprice,fwhotel,foodtype,hotelid) values(@fimg,@dname,@ftype,@dprice,@fromwh,@dtype,@hid)";
                SqlCommand cmd = new SqlCommand(query1, cn);
                cmd.Parameters.AddWithValue("@fimg", file);
                cmd.Parameters.AddWithValue("@dname", dishname.Text);
                cmd.Parameters.AddWithValue("@ftype", file1);
                cmd.Parameters.AddWithValue("@dprice", dishprice.Text);
                cmd.Parameters.AddWithValue("@fromwh", ffwh.Text);
                cmd.Parameters.AddWithValue("@dtype", dishtype.Text);
                cmd.Parameters.AddWithValue("@hid", hotelid.Text);
                cmd.ExecuteNonQuery();
                SUCCESS();

                dishname.Text = null;
                dishprice.Text= null;
                ffwh.Text=null;
                dishtype.Text=null;
                hotelid.Text=null;

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

        protected void Button5_Click(object sender, EventArgs e)
        {
            cn.Open();
            deletehotel();
        }

        void deletehotel()
        {
            string drp = DropDownList4.SelectedItem.Text;
            string delete = "delete from hotelproducts where id=" + drp + "";
            SqlCommand sr = new SqlCommand(delete, cn);
            sr.ExecuteNonQuery();
            Response.Write("<script>alert('hotel product deleted');</script>");


        }
    }
}