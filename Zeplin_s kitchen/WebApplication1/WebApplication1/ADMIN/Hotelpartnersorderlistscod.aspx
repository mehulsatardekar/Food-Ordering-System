<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="Hotelpartnersorderlistscod.aspx.cs" Inherits="WebApplication1.ADMIN.Hotelpartnersorderlistscod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="m-wrapper">
        <div class="container">
             <h3 class="text-center pt-3">ORDERS LISTS OF CASH ON DELIVERY HOTELS PAYMENTS</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CPurchaseID" DataSourceID="tblpurchasecod" CssClass="table table-bordered table-hover thead-dark">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CPurchaseID" HeaderText="CPurchaseID" InsertVisible="False" ReadOnly="True" SortExpression="CPurchaseID" />
                    <asp:BoundField DataField="Ctpuname" HeaderText="Ctpuname" SortExpression="Ctpuname" />
                    <asp:BoundField DataField="Cusername" HeaderText="Cusername" SortExpression="Cusername" />
                    <asp:BoundField DataField="CTotalPayed" HeaderText="CTotalPayed" SortExpression="CTotalPayed" />
                    <asp:BoundField DataField="CPaymentType" HeaderText="CPaymentType" SortExpression="CPaymentType" />
                    <asp:BoundField DataField="CPaymentStatus" HeaderText="CPaymentStatus" SortExpression="CPaymentStatus" />
                    <asp:BoundField DataField="CDateOfPurchase" HeaderText="CDateOfPurchase" SortExpression="CDateOfPurchase" />
                    <asp:BoundField DataField="CMobileNumber" HeaderText="CMobileNumber" SortExpression="CMobileNumber" />
                    <asp:BoundField DataField="COrderNotes" HeaderText="COrderNotes" SortExpression="COrderNotes" />
                </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="tblpurchasecod" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [tblPurchasecashondelivery] WHERE [CPurchaseID] = @original_CPurchaseID AND [Ctpuname] = @original_Ctpuname AND [Cusername] = @original_Cusername AND (([CTotalPayed] = @original_CTotalPayed) OR ([CTotalPayed] IS NULL AND @original_CTotalPayed IS NULL)) AND [CPaymentType] = @original_CPaymentType AND [CPaymentStatus] = @original_CPaymentStatus AND [CDateOfPurchase] = @original_CDateOfPurchase AND [CMobileNumber] = @original_CMobileNumber AND (([COrderNotes] = @original_COrderNotes) OR ([COrderNotes] IS NULL AND @original_COrderNotes IS NULL))" InsertCommand="INSERT INTO [tblPurchasecashondelivery] ([Ctpuname], [Cusername], [CTotalPayed], [CPaymentType], [CPaymentStatus], [CDateOfPurchase], [CMobileNumber], [COrderNotes]) VALUES (@Ctpuname, @Cusername, @CTotalPayed, @CPaymentType, @CPaymentStatus, @CDateOfPurchase, @CMobileNumber, @COrderNotes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CPurchaseID], [Ctpuname], [Cusername], [CTotalPayed], [CPaymentType], [CPaymentStatus], [CDateOfPurchase], [CMobileNumber], [COrderNotes] FROM [tblPurchasecashondelivery]" UpdateCommand="UPDATE [tblPurchasecashondelivery] SET [Ctpuname] = @Ctpuname, [Cusername] = @Cusername, [CTotalPayed] = @CTotalPayed, [CPaymentType] = @CPaymentType, [CPaymentStatus] = @CPaymentStatus, [CDateOfPurchase] = @CDateOfPurchase, [CMobileNumber] = @CMobileNumber, [COrderNotes] = @COrderNotes WHERE [CPurchaseID] = @original_CPurchaseID AND [Ctpuname] = @original_Ctpuname AND [Cusername] = @original_Cusername AND (([CTotalPayed] = @original_CTotalPayed) OR ([CTotalPayed] IS NULL AND @original_CTotalPayed IS NULL)) AND [CPaymentType] = @original_CPaymentType AND [CPaymentStatus] = @original_CPaymentStatus AND [CDateOfPurchase] = @original_CDateOfPurchase AND [CMobileNumber] = @original_CMobileNumber AND (([COrderNotes] = @original_COrderNotes) OR ([COrderNotes] IS NULL AND @original_COrderNotes IS NULL))">
                 <DeleteParameters>
                     <asp:Parameter Name="original_CPurchaseID" Type="Int64" />
                     <asp:Parameter Name="original_Ctpuname" Type="String" />
                     <asp:Parameter Name="original_Cusername" Type="String" />
                     <asp:Parameter Name="original_CTotalPayed" Type="Int64" />
                     <asp:Parameter Name="original_CPaymentType" Type="String" />
                     <asp:Parameter Name="original_CPaymentStatus" Type="String" />
                     <asp:Parameter Name="original_CDateOfPurchase" Type="String" />
                     <asp:Parameter Name="original_CMobileNumber" Type="Int64" />
                     <asp:Parameter Name="original_COrderNotes" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Ctpuname" Type="String" />
                     <asp:Parameter Name="Cusername" Type="String" />
                     <asp:Parameter Name="CTotalPayed" Type="Int64" />
                     <asp:Parameter Name="CPaymentType" Type="String" />
                     <asp:Parameter Name="CPaymentStatus" Type="String" />
                     <asp:Parameter Name="CDateOfPurchase" Type="String" />
                     <asp:Parameter Name="CMobileNumber" Type="Int64" />
                     <asp:Parameter Name="COrderNotes" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Ctpuname" Type="String" />
                     <asp:Parameter Name="Cusername" Type="String" />
                     <asp:Parameter Name="CTotalPayed" Type="Int64" />
                     <asp:Parameter Name="CPaymentType" Type="String" />
                     <asp:Parameter Name="CPaymentStatus" Type="String" />
                     <asp:Parameter Name="CDateOfPurchase" Type="String" />
                     <asp:Parameter Name="CMobileNumber" Type="Int64" />
                     <asp:Parameter Name="COrderNotes" Type="String" />
                     <asp:Parameter Name="original_CPurchaseID" Type="Int64" />
                     <asp:Parameter Name="original_Ctpuname" Type="String" />
                     <asp:Parameter Name="original_Cusername" Type="String" />
                     <asp:Parameter Name="original_CTotalPayed" Type="Int64" />
                     <asp:Parameter Name="original_CPaymentType" Type="String" />
                     <asp:Parameter Name="original_CPaymentStatus" Type="String" />
                     <asp:Parameter Name="original_CDateOfPurchase" Type="String" />
                     <asp:Parameter Name="original_CMobileNumber" Type="Int64" />
                     <asp:Parameter Name="original_COrderNotes" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
                        <hr style="border:0; border-top:3px double #88cc88;"/>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Chpp" DataSourceID="hotelpurcchasecodinfo" CssClass="table table-bordered table-hover thead-dark">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Cpurchaseid" HeaderText="Cpurchaseid" SortExpression="Cpurchaseid" />
                    <asp:BoundField DataField="Cusername" HeaderText="Cusername" SortExpression="Cusername" />
                    <asp:BoundField DataField="Cproddishname" HeaderText="Cproddishname" SortExpression="Cproddishname" />
                    <asp:BoundField DataField="Crefhotel" HeaderText="Crefhotel" SortExpression="Crefhotel" />
                    <asp:BoundField DataField="Cdishprice" HeaderText="Cdishprice" SortExpression="Cdishprice" />
                    <asp:BoundField DataField="Cdeliverystatus" HeaderText="Cdeliverystatus" SortExpression="Cdeliverystatus" />
                    <asp:BoundField DataField="Chpp" HeaderText="Chpp" InsertVisible="False" ReadOnly="True" SortExpression="Chpp" />
                </Columns>
             </asp:GridView>



             <asp:SqlDataSource ID="hotelpurcchasecodinfo" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [hotelpurchproductscashondelivery] WHERE [Chpp] = @original_Chpp AND [Cpurchaseid] = @original_Cpurchaseid AND [Cusername] = @original_Cusername AND [Cproddishname] = @original_Cproddishname AND [Crefhotel] = @original_Crefhotel AND [Cdishprice] = @original_Cdishprice AND [Cdeliverystatus] = @original_Cdeliverystatus" InsertCommand="INSERT INTO [hotelpurchproductscashondelivery] ([Cpurchaseid], [Cusername], [Cproddishname], [Crefhotel], [Cdishprice], [Cdeliverystatus]) VALUES (@Cpurchaseid, @Cusername, @Cproddishname, @Crefhotel, @Cdishprice, @Cdeliverystatus)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Cpurchaseid], [Cusername], [Cproddishname], [Crefhotel], [Cdishprice], [Cdeliverystatus], [Chpp] FROM [hotelpurchproductscashondelivery] ORDER BY [Chpp]" UpdateCommand="UPDATE [hotelpurchproductscashondelivery] SET [Cpurchaseid] = @Cpurchaseid, [Cusername] = @Cusername, [Cproddishname] = @Cproddishname, [Crefhotel] = @Crefhotel, [Cdishprice] = @Cdishprice, [Cdeliverystatus] = @Cdeliverystatus WHERE [Chpp] = @original_Chpp AND [Cpurchaseid] = @original_Cpurchaseid AND [Cusername] = @original_Cusername AND [Cproddishname] = @original_Cproddishname AND [Crefhotel] = @original_Crefhotel AND [Cdishprice] = @original_Cdishprice AND [Cdeliverystatus] = @original_Cdeliverystatus">
                 <DeleteParameters>
                     <asp:Parameter Name="original_Chpp" Type="Int64" />
                     <asp:Parameter Name="original_Cpurchaseid" Type="Int64" />
                     <asp:Parameter Name="original_Cusername" Type="String" />
                     <asp:Parameter Name="original_Cproddishname" Type="String" />
                     <asp:Parameter Name="original_Crefhotel" Type="String" />
                     <asp:Parameter Name="original_Cdishprice" Type="String" />
                     <asp:Parameter Name="original_Cdeliverystatus" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Cpurchaseid" Type="Int64" />
                     <asp:Parameter Name="Cusername" Type="String" />
                     <asp:Parameter Name="Cproddishname" Type="String" />
                     <asp:Parameter Name="Crefhotel" Type="String" />
                     <asp:Parameter Name="Cdishprice" Type="String" />
                     <asp:Parameter Name="Cdeliverystatus" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Cpurchaseid" Type="Int64" />
                     <asp:Parameter Name="Cusername" Type="String" />
                     <asp:Parameter Name="Cproddishname" Type="String" />
                     <asp:Parameter Name="Crefhotel" Type="String" />
                     <asp:Parameter Name="Cdishprice" Type="String" />
                     <asp:Parameter Name="Cdeliverystatus" Type="String" />
                     <asp:Parameter Name="original_Chpp" Type="Int64" />
                     <asp:Parameter Name="original_Cpurchaseid" Type="Int64" />
                     <asp:Parameter Name="original_Cusername" Type="String" />
                     <asp:Parameter Name="original_Cproddishname" Type="String" />
                     <asp:Parameter Name="original_Crefhotel" Type="String" />
                     <asp:Parameter Name="original_Cdishprice" Type="String" />
                     <asp:Parameter Name="original_Cdeliverystatus" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>



            </div>
         </div>
</asp:Content>
