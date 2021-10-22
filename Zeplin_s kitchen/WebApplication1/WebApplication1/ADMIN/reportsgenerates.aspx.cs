using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Reporting.WebForms;

namespace WebApplication1.ADMIN
{
    public partial class onlinehotelreports : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("server=LAPTOP-PFRD3SUF; initial catalog=zeplin; Trusted_connection=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminusername"] != null)
            {

            }
            else
            {
                Response.Redirect("../USER/login.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select PurchaseID, tpuname, Address, TotalPayed, PaymentType, PaymentStatus, MobileNumber, hdishname, hhotelref, hprice, hdeliverystatus,DateOfPurchase from tblPurchase inner join hotelpurchproducts on tblPurchase.PurchaseID = hotelpurchproducts.hpurchaseid where tblPurchase.PurchaseID = " + TextBox1.Text + "", cn);
                DataTable dt = new DataTable("table2");
                da.Fill(dt);
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("../ADMIN/Report1.rdlc");
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
                ReportViewer1.LocalReport.Refresh();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('enter value to get report');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cn.Open();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select tblPurchasecashondelivery.CPurchaseID, tblPurchasecashondelivery.Ctpuname, CPaymentType, CAddress, CMobileNumber,CTotalPayed,CPaymentStatus,CDateOfPurchase,COrderNotes, Cproddishname,Crefhotel, Cdishprice, Cdeliverystatus from hotelpurchproductscashondelivery inner join tblPurchasecashondelivery on tblPurchasecashondelivery.CPurchaseID= hotelpurchproductscashondelivery.Cpurchaseid where tblPurchasecashondelivery.CPurchaseID= " + TextBox2.Text + "", cn);
                DataTable dt = new DataTable("table2");
                da.Fill(dt);
                ReportViewer2.ProcessingMode = ProcessingMode.Local;
                ReportViewer2.LocalReport.ReportPath = Server.MapPath("../ADMIN/Report2.rdlc");
                ReportViewer2.LocalReport.DataSources.Clear();
                ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
                ReportViewer2.LocalReport.Refresh();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('enter value to get report');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cn.Open();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select tblZeplinPurchasecashondelivery.ZPurchaseID, Ztpuname, ZPaymentType, ZAddress, ZMobileNumber,ZTotalPayed,ZPaymentStatus,ZDateOfPurchase,ZOrderNotes, Zproddishname,Zrefhotel, Zdishprice, Zdeliverystatus from tblZeplinPurchasecashondelivery inner join Zephotelpurchproductscashondelivery on tblZeplinPurchasecashondelivery.ZPurchaseID= Zephotelpurchproductscashondelivery.Zpurchaseid where tblZeplinPurchasecashondelivery.ZPurchaseID=" + TextBox3.Text + "", cn);
                DataTable dt = new DataTable("table2");
                da.Fill(dt);
                ReportViewer3.ProcessingMode = ProcessingMode.Local;
                ReportViewer3.LocalReport.ReportPath = Server.MapPath("../ADMIN/Report3.rdlc");
                ReportViewer3.LocalReport.DataSources.Clear();
                ReportViewer3.LocalReport.DataSources.Add(new ReportDataSource("DataSet3", dt));
                ReportViewer3.LocalReport.Refresh();
            }
            catch
            {
                Response.Write("<script>alert('enter value to get report');</script>");
            }
        }
    }
}