<%@ Page Title="" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="zeplincart.aspx.cs" Inherits="WebApplication1.USER.zeplincart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS/cart/cart.css" rel="stylesheet" />
    <link rel='stylesheet' href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css">
    <link href="../CSS/zeplincart.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-8">

                <h5 class="proNameViewCart" runat="server" id="h5NoItems"></h5>

            <asp:Repeater ID="rptrCartProducts" runat="server">
                <ItemTemplate>
                    <div class="media shadow-sm pt-2 imagedropshadow" style="border: 1px solid #eaeaec;">
                        <div class="media-left">
                                <img width="200px" class="media-object" src="../dbimg/zeplinimage/zeplinproduct/<%#Eval("pimage") %>" alt="<%#Eval("pdishname") %>" onerror="this.src='images/noimage.jpg'"/>
                            </a>
                        &nbsp;</div>
                        <div class="media-body mb-3">
                            <h5 class="media-heading proNameViewCart"><%#Eval("pdishname") %></h5>
                            <img class="proPriceDiscountView" style="max-width:25px;" src="../dbimg/zeplinimage/zeplinproduct/productimgtype/<%#Eval("pimagetype") %>" />
                            <span class="proPriceView"><%#Eval("price","{0:c}") %></span>
                            <span class="proOgPriceView pl-5"><%#Eval("fwh") %></span>
                            <p class="mt-3">
                                <asp:Button CommandArgument='<%#Eval("pid")%>' ID="removeitem" OnClick="removeitem_Click"    CssClass="removeButton " runat="server" Text="REMOVE" />
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater> 
           

          </div>
              <div class="col-4 mt-5" id="pricedetails" runat="server">
                 <div style="border-bottom: 1px solid #eaeaec;">
                        <h5 class="proNameViewCart">PRICE DETAILS</h5>
                        <div>
                            <label>Cart Total</label>
                            <span class="pull-right priceGray" id="spanCartTotal" runat="server"></span>
                        </div>
                        <div>
                            <label>Cart Discount</label>
                            <span class="pull-right priceGreen" id="spanDiscount" runat="server"></span>
                        </div>
                     
                   </div>
            <div>
                <div class="proPriceView">
                    <label id="total">Total</label>
                    <span class="pull-right pl-3" id="spanTotal" runat="server"></span>
                </div>
                <div>
                    <asp:Button ID="zeplinBuyNow" OnClick="zeplinBuyNow_Click"  CssClass="buyNowBtn" runat="server" Text="Confirm-Order" />
                </div>
            </div>  
                                
             </div>
     
    </div>
  </div>
 </div>









     

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>   
<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
	</script>






</asp:Content>
