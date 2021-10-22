<%@ Page Title="Hotel COD Orders" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="HotelPartnersorderlistonline.aspx.cs" Inherits="WebApplication1.ADMIN.HotelPartnersorderlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-wrapper">
        <div class="container">
             <h3 class="text-center pt-3">ORDERS LISTS OF ONLINE HOTELS PAYMENTS</h3>
                
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="PurchaseID" DataSourceID="tblpurchase" CssClass="table table-bordered table-hover thead-dark">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PurchaseID" HeaderText="PurchaseID" InsertVisible="False" ReadOnly="True" SortExpression="PurchaseID" />
                    <asp:BoundField DataField="tpuname" HeaderText="tpuname" SortExpression="tpuname" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="TotalPayed" HeaderText="TotalPayed" SortExpression="TotalPayed" />
                    <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
                    <asp:BoundField DataField="PaymentStatus" HeaderText="PaymentStatus" SortExpression="PaymentStatus" />
                    <asp:BoundField DataField="DateOfPurchase" HeaderText="DateOfPurchase" SortExpression="DateOfPurchase" />
                    <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                    <asp:BoundField DataField="OrderNotes" HeaderText="OrderNotes" SortExpression="OrderNotes" />
                </Columns>
             </asp:GridView>


             <asp:SqlDataSource ID="tblpurchase" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [tblPurchase] WHERE [PurchaseID] = @original_PurchaseID AND [tpuname] = @original_tpuname AND [username] = @original_username AND (([TotalPayed] = @original_TotalPayed) OR ([TotalPayed] IS NULL AND @original_TotalPayed IS NULL)) AND [PaymentType] = @original_PaymentType AND [PaymentStatus] = @original_PaymentStatus AND [DateOfPurchase] = @original_DateOfPurchase AND [MobileNumber] = @original_MobileNumber AND (([OrderNotes] = @original_OrderNotes) OR ([OrderNotes] IS NULL AND @original_OrderNotes IS NULL))" InsertCommand="INSERT INTO [tblPurchase] ([tpuname], [username], [TotalPayed], [PaymentType], [PaymentStatus], [DateOfPurchase], [MobileNumber], [OrderNotes]) VALUES (@tpuname, @username, @TotalPayed, @PaymentType, @PaymentStatus, @DateOfPurchase, @MobileNumber, @OrderNotes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [PurchaseID], [tpuname], [username], [TotalPayed], [PaymentType], [PaymentStatus], [DateOfPurchase], [MobileNumber], [OrderNotes] FROM [tblPurchase]" UpdateCommand="UPDATE [tblPurchase] SET [tpuname] = @tpuname, [username] = @username, [TotalPayed] = @TotalPayed, [PaymentType] = @PaymentType, [PaymentStatus] = @PaymentStatus, [DateOfPurchase] = @DateOfPurchase, [MobileNumber] = @MobileNumber, [OrderNotes] = @OrderNotes WHERE [PurchaseID] = @original_PurchaseID AND [tpuname] = @original_tpuname AND [username] = @original_username AND (([TotalPayed] = @original_TotalPayed) OR ([TotalPayed] IS NULL AND @original_TotalPayed IS NULL)) AND [PaymentType] = @original_PaymentType AND [PaymentStatus] = @original_PaymentStatus AND [DateOfPurchase] = @original_DateOfPurchase AND [MobileNumber] = @original_MobileNumber AND (([OrderNotes] = @original_OrderNotes) OR ([OrderNotes] IS NULL AND @original_OrderNotes IS NULL))">
                 <DeleteParameters>
                     <asp:Parameter Name="original_PurchaseID" Type="Int64" />
                     <asp:Parameter Name="original_tpuname" Type="String" />
                     <asp:Parameter Name="original_username" Type="String" />
                     <asp:Parameter Name="original_TotalPayed" Type="Int64" />
                     <asp:Parameter Name="original_PaymentType" Type="String" />
                     <asp:Parameter Name="original_PaymentStatus" Type="String" />
                     <asp:Parameter Name="original_DateOfPurchase" Type="String" />
                     <asp:Parameter Name="original_MobileNumber" Type="Int64" />
                     <asp:Parameter Name="original_OrderNotes" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="tpuname" Type="String" />
                     <asp:Parameter Name="username" Type="String" />
                     <asp:Parameter Name="TotalPayed" Type="Int64" />
                     <asp:Parameter Name="PaymentType" Type="String" />
                     <asp:Parameter Name="PaymentStatus" Type="String" />
                     <asp:Parameter Name="DateOfPurchase" Type="String" />
                     <asp:Parameter Name="MobileNumber" Type="Int64" />
                     <asp:Parameter Name="OrderNotes" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="tpuname" Type="String" />
                     <asp:Parameter Name="username" Type="String" />
                     <asp:Parameter Name="TotalPayed" Type="Int64" />
                     <asp:Parameter Name="PaymentType" Type="String" />
                     <asp:Parameter Name="PaymentStatus" Type="String" />
                     <asp:Parameter Name="DateOfPurchase" Type="String" />
                     <asp:Parameter Name="MobileNumber" Type="Int64" />
                     <asp:Parameter Name="OrderNotes" Type="String" />
                     <asp:Parameter Name="original_PurchaseID" Type="Int64" />
                     <asp:Parameter Name="original_tpuname" Type="String" />
                     <asp:Parameter Name="original_username" Type="String" />
                     <asp:Parameter Name="original_TotalPayed" Type="Int64" />
                     <asp:Parameter Name="original_PaymentType" Type="String" />
                     <asp:Parameter Name="original_PaymentStatus" Type="String" />
                     <asp:Parameter Name="original_DateOfPurchase" Type="String" />
                     <asp:Parameter Name="original_MobileNumber" Type="Int64" />
                     <asp:Parameter Name="original_OrderNotes" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>


            <hr style="border:0; border-top:3px double #88cc88;"/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="hotelpurchaseproducts" CssClass="table table-bordered table-hover thead-dark" DataKeyNames="hpp">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="hpurchaseid" HeaderText="hpurchaseid" SortExpression="hpurchaseid" />
                    <asp:BoundField DataField="husername" HeaderText="husername" SortExpression="husername" />
                    <asp:BoundField DataField="hdishname" HeaderText="hdishname" SortExpression="hdishname" />
                    <asp:BoundField DataField="hhotelref" HeaderText="hhotelref" SortExpression="hhotelref" />
                    <asp:BoundField DataField="hprice" HeaderText="hprice" SortExpression="hprice" />
                    <asp:BoundField DataField="hdeliverystatus" HeaderText="hdeliverystatus" SortExpression="hdeliverystatus"  />
                    <asp:BoundField DataField="hpp" HeaderText="hpp" InsertVisible="False" ReadOnly="True" SortExpression="hpp" />
                </Columns>
                
            </asp:GridView>
             <asp:SqlDataSource ID="hotelpurchaseproducts" runat="server" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" SelectCommand="SELECT [hpurchaseid], [husername], [hdishname], [hhotelref], [hprice], [hdeliverystatus], [hpp] FROM [hotelpurchproducts]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [hotelpurchproducts] WHERE [hpp] = @original_hpp AND [hpurchaseid] = @original_hpurchaseid AND [husername] = @original_husername AND [hdishname] = @original_hdishname AND [hhotelref] = @original_hhotelref AND [hprice] = @original_hprice AND [hdeliverystatus] = @original_hdeliverystatus" InsertCommand="INSERT INTO [hotelpurchproducts] ([hpurchaseid], [husername], [hdishname], [hhotelref], [hprice], [hdeliverystatus]) VALUES (@hpurchaseid, @husername, @hdishname, @hhotelref, @hprice, @hdeliverystatus)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [hotelpurchproducts] SET [hpurchaseid] = @hpurchaseid, [husername] = @husername, [hdishname] = @hdishname, [hhotelref] = @hhotelref, [hprice] = @hprice, [hdeliverystatus] = @hdeliverystatus WHERE [hpp] = @original_hpp AND [hpurchaseid] = @original_hpurchaseid AND [husername] = @original_husername AND [hdishname] = @original_hdishname AND [hhotelref] = @original_hhotelref AND [hprice] = @original_hprice AND [hdeliverystatus] = @original_hdeliverystatus">
                 <DeleteParameters>
                     <asp:Parameter Name="original_hpp" Type="Int64" />
                     <asp:Parameter Name="original_hpurchaseid" Type="Int64" />
                     <asp:Parameter Name="original_husername" Type="String" />
                     <asp:Parameter Name="original_hdishname" Type="String" />
                     <asp:Parameter Name="original_hhotelref" Type="String" />
                     <asp:Parameter Name="original_hprice" Type="String" />
                     <asp:Parameter Name="original_hdeliverystatus" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="hpurchaseid" Type="Int64" />
                     <asp:Parameter Name="husername" Type="String" />
                     <asp:Parameter Name="hdishname" Type="String" />
                     <asp:Parameter Name="hhotelref" Type="String" />
                     <asp:Parameter Name="hprice" Type="String" />
                     <asp:Parameter Name="hdeliverystatus" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="hpurchaseid" Type="Int64" />
                     <asp:Parameter Name="husername" Type="String" />
                     <asp:Parameter Name="hdishname" Type="String" />
                     <asp:Parameter Name="hhotelref" Type="String" />
                     <asp:Parameter Name="hprice" Type="String" />
                     <asp:Parameter Name="hdeliverystatus" Type="String" />
                     <asp:Parameter Name="original_hpp" Type="Int64" />
                     <asp:Parameter Name="original_hpurchaseid" Type="Int64" />
                     <asp:Parameter Name="original_husername" Type="String" />
                     <asp:Parameter Name="original_hdishname" Type="String" />
                     <asp:Parameter Name="original_hhotelref" Type="String" />
                     <asp:Parameter Name="original_hprice" Type="String" />
                     <asp:Parameter Name="original_hdeliverystatus" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
             
        </div>
    </div>



</asp:Content>
