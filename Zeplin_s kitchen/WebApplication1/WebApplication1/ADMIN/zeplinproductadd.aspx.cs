using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace WebApplication1.ADMIN
{
    public partial class zeplinproductadd : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusername"] != null)
            {

            if (!Page.IsPostBack)
            {
                string query2 = "select pid from zeplinproducts order by pid";
                SqlDataAdapter dr1 = new SqlDataAdapter(query2, cn);
                DataTable dt1 = new DataTable();
                dr1.Fill(dt1);
                DropDownList1.DataSource = dt1;
                DropDownList1.DataTextField = "pid";
                DropDownList1.DataValueField = "pid";
                DropDownList1.DataBind();

                // for dropdown 2.
                DropDownList2.DataSource = dt1;
                DropDownList2.DataTextField = "pid";
                DropDownList2.DataValueField = "pid";
                DropDownList2.DataBind();
                    

            }
            }
            else
            {
                Response.Redirect("../USER/login.aspx");

            }


        }

        protected void productadd_Click(object sender, EventArgs e)
        {
            cn.Open();
            addzeplinproducts();
        }


        void addzeplinproducts()
        {
            if (FileUpload1.HasFile && FileUpload2.HasFile)
            {
                string SavePath = Server.MapPath("~/dbimg/zeplinimage/zeplinproduct/");
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string file = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(SavePath + "\\" + file);

                string SavePath1 = Server.MapPath("~/dbimg/zeplinimage/zeplinproduct/productimgtype");
                if (!Directory.Exists(SavePath1))
                {
                    Directory.CreateDirectory(SavePath1);
                }
                string file1 = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload2.SaveAs(SavePath1 + "\\" + file1);




                string query1 = "insert into zeplinproducts(pimage,pdishname,pimagetype,categories,price,pricedetails) values(@fimg,@dname,@ftype,@dcategory,@fprice,@ddetails)";
                SqlCommand cmd = new SqlCommand(query1, cn);
                cmd.Parameters.AddWithValue("@fimg", file);
                cmd.Parameters.AddWithValue("@dname", productname.Text);
                cmd.Parameters.AddWithValue("@ftype", file1);
                cmd.Parameters.AddWithValue("@dcategory", productcategory.Text);
                cmd.Parameters.AddWithValue("@fprice", productprice.Text);
                cmd.Parameters.AddWithValue("@ddetails", productdetails.Text);
                cmd.ExecuteNonQuery();
                SUCCESS();

                productname.Text = null;
                productcategory.Text = null;
                productprice.Text = null;
                productdetails.Text = null;

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

        protected void updatezeplinproducts_Click(object sender, EventArgs e)
        {
            cn.Open();
            updatehotel();
        }

        void updatehotel()
        {
            string str = DropDownList1.SelectedItem.Text;

            if (FileUpload3.HasFile && FileUpload4.HasFile)
            {
                string SavePath = Server.MapPath("~/dbimg/zeplinimage/zeplinproduct/");
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                string file = Path.GetFileName(FileUpload3.PostedFile.FileName);
                FileUpload3.SaveAs(SavePath + "\\" + file);

                string SavePath1 = Server.MapPath("~/dbimg/zeplinimage/zeplinproduct/productimgtype");
                if (!Directory.Exists(SavePath1))
                {
                    Directory.CreateDirectory(SavePath1);
                }
                string file1 = Path.GetFileName(FileUpload4.PostedFile.FileName);
                FileUpload4.SaveAs(SavePath1 + "\\" + file1);


                string update = "update zeplinproducts set pimage=@uimg where pid=" + str + "";
                SqlCommand cmd = new SqlCommand(update, cn);
                cmd.Parameters.AddWithValue("@uimg", file);
                cmd.ExecuteNonQuery();


                string update6 = "update zeplinproducts set pimagetype=@puimage where pid=" + str + "";
                SqlCommand cmd6 = new SqlCommand(update6, cn);
                cmd6.Parameters.AddWithValue("@puimage", file1);
                cmd6.ExecuteNonQuery();
                updatesuccess();
            }
            else
            {
                Response.Write("alert('data not inserted')");
            }

            void updatesuccess()
            {
                Response.Write("<script>alert('data updated.')</script>");
            }

        }



        protected void deletezeplinproducts_Click(object sender, EventArgs e)
        {
            cn.Open();
            deletehotel();
        }

        void deletehotel()
        {
            string drp = DropDownList2.SelectedItem.Text;
            string delete = "delete from zeplinproducts where pid=" + drp + "";
            SqlCommand sr = new SqlCommand(delete, cn);
            sr.ExecuteNonQuery();
            Response.Write("<script>alert('hotel deleted');</script>");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!="")
            {
                cn.Open();
                categoryadd();
            }
            else
            {
                Response.Write("<script>alert('error occured while adding data please enter value .');</script>");

            }
        }

        void categoryadd()
        {
            string query1 = "insert into category values(@category)";
            SqlCommand cmd = new SqlCommand(query1, cn);
            cmd.Parameters.AddWithValue("@category", TextBox1.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('category has been successfully added.');</script>");
        }
    }


}