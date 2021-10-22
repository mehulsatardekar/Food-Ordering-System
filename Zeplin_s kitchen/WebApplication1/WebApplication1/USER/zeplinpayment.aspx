<%@ Page Title="Zeplin Payment" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="zeplinpayment.aspx.cs" Inherits="WebApplication1.USER.zeplinpayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="../CSS/payment/payment.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:HiddenField ID="hdCartAmount" runat="server"  />
    <asp:HiddenField ID="hdCartDiscount" runat="server" />
    <asp:HiddenField ID="hdTotalPayed" runat="server" />
    <asp:HiddenField ID="hdPidSizeID" runat="server" />


 <div class="m-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-8">
            <div class="form-horizontal">
                <h3 class="pt-5">Delivery Address</h3>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label font-weight-bold" Text="Name"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label font-weight-bold" Text="Address"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label font-weight-bold" Text="Mobile Number"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="txtMobileNumber" CssClass="form-control"  pattern="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label font-weight-bold" Text="Order Notes:"></asp:Label></br>
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label font-weight-light" Text="add  notes we will pass it to hotel:"></asp:Label>
                    <div class="col-md-7">
                        <asp:TextBox ID="ordernotes" CssClass="form-control" TextMode="MultiLine" placeholder="Enter any information about your order Eg.'Extra cheese'.  " runat="server"></asp:TextBox>
                    </div>
                </div>
               
            </div>
              
           

          </div>
              <div class="col-4 mt-5 " id="pricedetails" runat="server">
                 <div style="border-bottom: 1px solid #eaeaec;">
                        <h5 class="proNameViewCart">PRICE DETAILS</h5>
                        <div>
                            <label>Cart Total</label>
                            <span class="pull-right priceGray pl-5" id="spanCartTotal" runat="server"></span>
                        </div>
                        <div>
                            <label>Cart Discount</label>
                            <span class="pull-right priceGreen pl-4" style="color:red;" id="spanDiscount" runat="server"></span>
                        </div>
                   </div>
                  <div>
                      <div class="proPriceView">
                    <label id="total">Total</label>
                    <span class="pull-right pl-3" id="spanTotal" runat="server"></span>
                </div>
            </div>
            <div>
                
                <div class="alert alert-warning mt-5" role="alert">
                <b> Note!</b> Once you make payment you won't able to cancle the order or modify .
                 </div>
              
            </div>  
                                
             </div>
          <div class="col-12 pt-5 mb-5">
              <h2> Choose Payment-Method</h2>
              <hr />
              <ul class="nav nav-tabs mb-3 buts" id="myTab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Home</a>
                      


                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Order-online</a>
                   
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Cash-on-Delivery</a>
                  </li>
              </ul>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                  <p>We have cash-on-delivery option to make your purchase done. </p>
                  <p>Note!.Currently we dont accept online payment at this moment we will be adding online payment soon.</p>
                      <p><em>Click on tabs and choose what options are suitable for you.</em></p>
                        <footer class="blockquote-footer">Zepli's Kitchen </footer> 

              </div>
              <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                  <h2 class="pl-2">-Pay with paytm.</h2>
                  <p class="pl-3">Currently we don't accept online payment  .</p>
                  <asp:Button ID="paytm"  class="btn btn-primary pl-5 pr-5 ml-5" runat="server" Text="Paytm" disabled/>
              </div>
              <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                   <h2 class="pl-2">-Pay at your door.</h2>
                  <p class="pl-3">We  accept cash on delivery.</p>
                  <asp:Button ID="zeplincashondelivery" OnClick="zeplincashondelivery_Click"   class="btn btn-primary pl-5 pr-5 ml-5" runat="server" Text="Cash on Delivery" />
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
