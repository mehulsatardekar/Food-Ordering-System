<%@ Page Title="Report Generates" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="reportsgenerates.aspx.cs" Inherits="WebApplication1.ADMIN.onlinehotelreports" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-wrapper needs-validation"   novalidate>
         <h3 class="text-center">Hotel's online delivery report</h3>
   <h3>Enter purchase id</h3> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Get Result" OnClick="Button1_Click" />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1387px"></rsweb:ReportViewer>
       <hr style="border:0; border-top:3px double #88cc88;"/>
        <h3 class="text-center">Hotel's cash-on-delivery report</h3>
        <h3>Enter purchase id </h3> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         <asp:Button ID="Button2" runat="server" Text="Get Result" OnClick="Button2_Click" />
    <rsweb:ReportViewer ID="ReportViewer2" runat="server" Width="1387px"></rsweb:ReportViewer>
          <hr style="border:0; border-top:3px double #88cc88;"/>
        <h3 class="text-center">Zeplin's cash-on-delivery report</h3>
        <h3>Enter purchase id </h3> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         <asp:Button ID="Button3" runat="server" Text="Get Result" OnClick="Button3_Click" />
    <rsweb:ReportViewer ID="ReportViewer3" runat="server" Width="1387px"></rsweb:ReportViewer>
</div>
     
<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   <noscript><meta http-equiv="refresh" content="0; url=javascriptdisable.html" /></noscript>
</asp:Content>
