<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="Zeplinpurchaseorderlistcod.aspx.cs" Inherits="WebApplication1.ADMIN.Zeplinpurchaseorderlistcod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="m-wrapper">
        <div class="container">
             <h3 class="text-center pt-3">ORDERS LISTS OF CASH ON DELIVERY ZEPLIN PAYMENTS</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ZPurchaseID" DataSourceID="zeplinpurchaseordercod" CssClass="table table-bordered table-hover thead-dark">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ZPurchaseID" HeaderText="ZPurchaseID" InsertVisible="False" ReadOnly="True" SortExpression="ZPurchaseID" />
                    <asp:BoundField DataField="Ztpuname" HeaderText="Ztpuname" SortExpression="Ztpuname" />
                    <asp:BoundField DataField="Zusername" HeaderText="Zusername" SortExpression="Zusername" />
                    <asp:BoundField DataField="ZTotalPayed" HeaderText="ZTotalPayed" SortExpression="ZTotalPayed" />
                    <asp:BoundField DataField="ZPaymentType" HeaderText="ZPaymentType" SortExpression="ZPaymentType" />
                    <asp:BoundField DataField="ZPaymentStatus" HeaderText="ZPaymentStatus" SortExpression="ZPaymentStatus" />
                    <asp:BoundField DataField="ZDateOfPurchase" HeaderText="ZDateOfPurchase" SortExpression="ZDateOfPurchase" />
                    <asp:BoundField DataField="ZOrderNotes" HeaderText="ZOrderNotes" SortExpression="ZOrderNotes" />
                    <asp:BoundField DataField="ZMobileNumber" HeaderText="ZMobileNumber" SortExpression="ZMobileNumber" />
                </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="zeplinpurchaseordercod" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [tblZeplinPurchasecashondelivery] WHERE [ZPurchaseID] = @original_ZPurchaseID AND [Ztpuname] = @original_Ztpuname AND [Zusername] = @original_Zusername AND (([ZTotalPayed] = @original_ZTotalPayed) OR ([ZTotalPayed] IS NULL AND @original_ZTotalPayed IS NULL)) AND [ZPaymentType] = @original_ZPaymentType AND [ZPaymentStatus] = @original_ZPaymentStatus AND [ZDateOfPurchase] = @original_ZDateOfPurchase AND (([ZOrderNotes] = @original_ZOrderNotes) OR ([ZOrderNotes] IS NULL AND @original_ZOrderNotes IS NULL)) AND [ZMobileNumber] = @original_ZMobileNumber" InsertCommand="INSERT INTO [tblZeplinPurchasecashondelivery] ([Ztpuname], [Zusername], [ZTotalPayed], [ZPaymentType], [ZPaymentStatus], [ZDateOfPurchase], [ZOrderNotes], [ZMobileNumber]) VALUES (@Ztpuname, @Zusername, @ZTotalPayed, @ZPaymentType, @ZPaymentStatus, @ZDateOfPurchase, @ZOrderNotes, @ZMobileNumber)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ZPurchaseID], [Ztpuname], [Zusername], [ZTotalPayed], [ZPaymentType], [ZPaymentStatus], [ZDateOfPurchase], [ZOrderNotes], [ZMobileNumber] FROM [tblZeplinPurchasecashondelivery] ORDER BY [ZPurchaseID]" UpdateCommand="UPDATE [tblZeplinPurchasecashondelivery] SET [Ztpuname] = @Ztpuname, [Zusername] = @Zusername, [ZTotalPayed] = @ZTotalPayed, [ZPaymentType] = @ZPaymentType, [ZPaymentStatus] = @ZPaymentStatus, [ZDateOfPurchase] = @ZDateOfPurchase, [ZOrderNotes] = @ZOrderNotes, [ZMobileNumber] = @ZMobileNumber WHERE [ZPurchaseID] = @original_ZPurchaseID AND [Ztpuname] = @original_Ztpuname AND [Zusername] = @original_Zusername AND (([ZTotalPayed] = @original_ZTotalPayed) OR ([ZTotalPayed] IS NULL AND @original_ZTotalPayed IS NULL)) AND [ZPaymentType] = @original_ZPaymentType AND [ZPaymentStatus] = @original_ZPaymentStatus AND [ZDateOfPurchase] = @original_ZDateOfPurchase AND (([ZOrderNotes] = @original_ZOrderNotes) OR ([ZOrderNotes] IS NULL AND @original_ZOrderNotes IS NULL)) AND [ZMobileNumber] = @original_ZMobileNumber">
                 <DeleteParameters>
                     <asp:Parameter Name="original_ZPurchaseID" Type="Int64" />
                     <asp:Parameter Name="original_Ztpuname" Type="String" />
                     <asp:Parameter Name="original_Zusername" Type="String" />
                     <asp:Parameter Name="original_ZTotalPayed" Type="Int64" />
                     <asp:Parameter Name="original_ZPaymentType" Type="String" />
                     <asp:Parameter Name="original_ZPaymentStatus" Type="String" />
                     <asp:Parameter Name="original_ZDateOfPurchase" Type="String" />
                     <asp:Parameter Name="original_ZOrderNotes" Type="String" />
                     <asp:Parameter Name="original_ZMobileNumber" Type="Int64" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Ztpuname" Type="String" />
                     <asp:Parameter Name="Zusername" Type="String" />
                     <asp:Parameter Name="ZTotalPayed" Type="Int64" />
                     <asp:Parameter Name="ZPaymentType" Type="String" />
                     <asp:Parameter Name="ZPaymentStatus" Type="String" />
                     <asp:Parameter Name="ZDateOfPurchase" Type="String" />
                     <asp:Parameter Name="ZOrderNotes" Type="String" />
                     <asp:Parameter Name="ZMobileNumber" Type="Int64" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Ztpuname" Type="String" />
                     <asp:Parameter Name="Zusername" Type="String" />
                     <asp:Parameter Name="ZTotalPayed" Type="Int64" />
                     <asp:Parameter Name="ZPaymentType" Type="String" />
                     <asp:Parameter Name="ZPaymentStatus" Type="String" />
                     <asp:Parameter Name="ZDateOfPurchase" Type="String" />
                     <asp:Parameter Name="ZOrderNotes" Type="String" />
                     <asp:Parameter Name="ZMobileNumber" Type="Int64" />
                     <asp:Parameter Name="original_ZPurchaseID" Type="Int64" />
                     <asp:Parameter Name="original_Ztpuname" Type="String" />
                     <asp:Parameter Name="original_Zusername" Type="String" />
                     <asp:Parameter Name="original_ZTotalPayed" Type="Int64" />
                     <asp:Parameter Name="original_ZPaymentType" Type="String" />
                     <asp:Parameter Name="original_ZPaymentStatus" Type="String" />
                     <asp:Parameter Name="original_ZDateOfPurchase" Type="String" />
                     <asp:Parameter Name="original_ZOrderNotes" Type="String" />
                     <asp:Parameter Name="original_ZMobileNumber" Type="Int64" />
                 </UpdateParameters>
             </asp:SqlDataSource>
       <hr style="border:0; border-top:3px double #88cc88;"/>


            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Zhpp" CssClass="table table-bordered table-hover thead-dark" DataSourceID="Zeplinpurchaseordercodinfo">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Zpurchaseid" HeaderText="Zpurchaseid" SortExpression="Zpurchaseid" />
                    <asp:BoundField DataField="Zusername" HeaderText="Zusername" SortExpression="Zusername" />
                    <asp:BoundField DataField="Zproddishname" HeaderText="Zproddishname" SortExpression="Zproddishname" />
                    <asp:BoundField DataField="Zrefhotel" HeaderText="Zrefhotel" SortExpression="Zrefhotel" />
                    <asp:BoundField DataField="Zdishprice" HeaderText="Zdishprice" SortExpression="Zdishprice" />
                    <asp:BoundField DataField="Zdeliverystatus" HeaderText="Zdeliverystatus" SortExpression="Zdeliverystatus" />
                    <asp:BoundField DataField="Zhpp" HeaderText="Zhpp" InsertVisible="False" ReadOnly="True" SortExpression="Zhpp" />
                </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="Zeplinpurchaseordercodinfo" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [Zephotelpurchproductscashondelivery] WHERE [Zhpp] = @original_Zhpp AND [Zpurchaseid] = @original_Zpurchaseid AND [Zusername] = @original_Zusername AND [Zproddishname] = @original_Zproddishname AND [Zrefhotel] = @original_Zrefhotel AND [Zdishprice] = @original_Zdishprice AND [Zdeliverystatus] = @original_Zdeliverystatus" InsertCommand="INSERT INTO [Zephotelpurchproductscashondelivery] ([Zpurchaseid], [Zusername], [Zproddishname], [Zrefhotel], [Zdishprice], [Zdeliverystatus]) VALUES (@Zpurchaseid, @Zusername, @Zproddishname, @Zrefhotel, @Zdishprice, @Zdeliverystatus)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Zpurchaseid], [Zusername], [Zproddishname], [Zrefhotel], [Zdishprice], [Zdeliverystatus], [Zhpp] FROM [Zephotelpurchproductscashondelivery] ORDER BY [Zhpp]" UpdateCommand="UPDATE [Zephotelpurchproductscashondelivery] SET [Zpurchaseid] = @Zpurchaseid, [Zusername] = @Zusername, [Zproddishname] = @Zproddishname, [Zrefhotel] = @Zrefhotel, [Zdishprice] = @Zdishprice, [Zdeliverystatus] = @Zdeliverystatus WHERE [Zhpp] = @original_Zhpp AND [Zpurchaseid] = @original_Zpurchaseid AND [Zusername] = @original_Zusername AND [Zproddishname] = @original_Zproddishname AND [Zrefhotel] = @original_Zrefhotel AND [Zdishprice] = @original_Zdishprice AND [Zdeliverystatus] = @original_Zdeliverystatus">
                 <DeleteParameters>
                     <asp:Parameter Name="original_Zhpp" Type="Int64" />
                     <asp:Parameter Name="original_Zpurchaseid" Type="Int64" />
                     <asp:Parameter Name="original_Zusername" Type="String" />
                     <asp:Parameter Name="original_Zproddishname" Type="String" />
                     <asp:Parameter Name="original_Zrefhotel" Type="String" />
                     <asp:Parameter Name="original_Zdishprice" Type="String" />
                     <asp:Parameter Name="original_Zdeliverystatus" Type="String" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Zpurchaseid" Type="Int64" />
                     <asp:Parameter Name="Zusername" Type="String" />
                     <asp:Parameter Name="Zproddishname" Type="String" />
                     <asp:Parameter Name="Zrefhotel" Type="String" />
                     <asp:Parameter Name="Zdishprice" Type="String" />
                     <asp:Parameter Name="Zdeliverystatus" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Zpurchaseid" Type="Int64" />
                     <asp:Parameter Name="Zusername" Type="String" />
                     <asp:Parameter Name="Zproddishname" Type="String" />
                     <asp:Parameter Name="Zrefhotel" Type="String" />
                     <asp:Parameter Name="Zdishprice" Type="String" />
                     <asp:Parameter Name="Zdeliverystatus" Type="String" />
                     <asp:Parameter Name="original_Zhpp" Type="Int64" />
                     <asp:Parameter Name="original_Zpurchaseid" Type="Int64" />
                     <asp:Parameter Name="original_Zusername" Type="String" />
                     <asp:Parameter Name="original_Zproddishname" Type="String" />
                     <asp:Parameter Name="original_Zrefhotel" Type="String" />
                     <asp:Parameter Name="original_Zdishprice" Type="String" />
                     <asp:Parameter Name="original_Zdeliverystatus" Type="String" />
                 </UpdateParameters>
             </asp:SqlDataSource>
            </div>
          </div>


</asp:Content>
