<%@ Page Title="Order-list" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="Orderslist.aspx.cs" Inherits="WebApplication1.ADMIN.Orderslist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-wrapper">
     <div class="container-fluid">
        <div class="row">
                <div class="col-sm-6  mt-3 ">
                    <div class="card border-primary ">
                    <div class="card-body pt-5 pb-5">
                        <h3 class="card-title">Hotel Partner's Order List  <span class="float-right pr-3  btn btn-secondary"> 50+ </span></h5>
                        <p class="card-text mt-2">To view Hotel Partner order list (Cash on Delivery).</p>
                        <a href="Hotelpartnersorderlistscod.aspx" class="btn btn-primary">Go To Order List</a>
                    </div>
                    </div>        
               </div>
            
          
                <div class="col-sm-6 mt-3">
                        <div class="card border-primary ">
                        <div class="card-body pt-5 pb-5">
                            <h3 class="card-title">Zeplin Product Order List <span class="float-right pr-3  btn btn-secondary"> 50+ </span></h3>
                            <p class="card-text mt-2">To view Zeplin Product order (Cash on delivery).</p>
                            <a href="Zeplinpurchaseorderlistcod.aspx" class="btn btn-primary">Go To Order List</a>
                        </div>
                        </div>        
                   </div>     
                   <div class="col-sm-6 mt-3">
                    <div class="card border-primary ">
                    <div class="card-body pt-5 pb-5">
                        <h3 class="card-title">Hotel Partner's Order List  <span class="float-right pr-3  btn btn-secondary"> 50+ </span></h3>
                        <p class="card-text mt-2">To view Hotel Partner order list  (Online Payment Delivery)</p>
                        <a href="HotelPartnersorderlistonline.aspx" class="btn btn-primary">Go To Order List</a>
                    </div>
                    </div>        
               </div>     



        </div>
   </div>

</div>



     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</asp:Content>
