<%@ Page Title="" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="hotelpartnersview.aspx.cs" Inherits="WebApplication1.USER.hotelpartnersview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hotel View</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
     <link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
   <link rel="stylesheet" href="../CSS/hotelpartnerview/maincontent.css" />
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="m-wrapper">
    <div class="jumbotron jumbotron-fluid fontcolor" >
        <asp:Repeater runat="server" ID="Repeater4"><ItemTemplate>     
                <div class="container">
                    <img src="../dbimg/hotelimg/<%#Eval("hotelimage") %>" alt="jai mahlhar" class="img-thumbnail float-left mt-3" height="200" width="300" style="max-width:275px;" >
                <div class="spacing"><h1 class="display-4 fonts text-center text-capitalize "><%#Eval("hotelname") %></h1></div>
                <div class="color text-center pb-1 font-weight-normal"><%#Eval("hoteltype") %></div>
                <div class="row color text-center">
                        <div class="col font-weight-bold">
                                <img src="../IMAGES/hotelpartnersview/star (1).svg"  style="width:7%">
                                <%#Eval("hotelratings") %>
                        </div>
                        <div class="col font-weight-bold ">
                                <img src="../IMAGES/hotelpartnersview/delivery-truck.svg"  style="width:12%">
                                &nbsp;<%#Eval("hoteldeliverytime") %></div>
                        <div class="col mr-1 font-weight-bold">
                                <img src="../IMAGES/hotelpartnersview/cash.svg"  style="width:12%">
                                 <%#Eval("hotelprice") %> &#x20b9; For Two Person
                        </div>
                    </div>
                </div>
            </ItemTemplate> </asp:Repeater>
            </div>   
     <nav class="navbar sticky-top navbar-light bgcol">
        <a class="navbar-brand" style="color:white;" href="#">Categories</a>
          <div class="col-4 ml-1">
              <input type="text" class="form-control col-form-label-lg" id="cardsearchinput" placeholder="Search By Dishes."> 
            </div>
          <a class="navbar-brand" style="color:white;" href="#">Categories</a>
        <div class="dropdown "> 
                <asp:DropDownList ID="DropDownList1" class="form-control ml-3 col-form-label-sm" runat="server" >
                 </asp:DropDownList>
              </div>
         <div class="col-1">
             <asp:Button ID="applychange" runat="server" class="btn btn-primary" Text="Apply Changes" OnClick="applychange_Click"/>
         </div>
         <div class="col-1 mr-5">
             <asp:Button ID="cancelchanges" runat="server" class="btn btn-primary" Text="Cancel Changes" OnClick="cancelchanges_Click"/>
         </div>
      </nav>
     <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h5>Browse categories</h5>
          </div>
             
        <div class="container col-8 btn-toolbar justify-content-between" id="carddata">
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>     
                 <div class="card w-100 mt-2 border mehul">
                             <div class="card-body">
                                        <div class="row">
                                          <div class="col-sm">
                                              <img src="../dbimg/hotelimg/hotelproductimg/<%#Eval("dishimage") %>" width="300"  alt="<%#Eval("dishname") %>" class="img-thumbnail float-left" style="max-width:200px;">
                                           </div>
                                          <div class="col-6">
                                              <h5 class="card-title align-bottom pt-2 ml-3"><%#Eval("dishname") %></h5>
                                              <img src="../dbimg/hotelimg/hotelproductimg/hotelproductimagetype/<%#Eval("dishimagetype") %>" width="25" alt="..." class="img-thumbnail ml-1"> &nbsp; <span><%#Eval("dishprice") %></span> RUPEES &nbsp;
                                            <asp:Button ID="vegbtn" class="btn btn-primary btn-lg pl-3 margin" runat="server" CommandArgument='<%#Eval("id")%>' Text="Add" OnClick="vegbtn_Click" />
                                              <footer class="blockquote-footer"><%#Eval("fwhotel") %>
                                           </div>
                                          <div class="col-sm">
                                           </div>
                                        </div>
                             </div>
                           </div>
                   </ItemTemplate> 
            </asp:Repeater>
       </div>
   
      
        </main>



<!--javascript starts here-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../JAVASCRIPT/hotelpartner/searcher.js"></script>
     <script>
			$("#carddata").searcher({
				itemSelector: ".mehul",
				textSelector: ".card-title",
				inputSelector: "#cardsearchinput",
				highlight: "<span class='highlight'>$1</span>",
				toggle: function(item, containsText) {
					if (containsText)
                        $(item).fadeIn().focus();
					else
                    $(item).fadeOut();
                       
				}
			});
		</script>
    <script>
			$("#carddata1").searcher({
				itemSelector: ".mehul",
				textSelector: ".card-title",
				inputSelector: "#cardsearchinput",
				highlight: "<span class='highlight'>$1</span>",
				toggle: function(item, containsText) {
					if (containsText)
						$(item).fadeIn().focus();
					else
						$(item).fadeOut();
				}
			});
		</script>
        <script>
			$("#carddata2").searcher({
				itemSelector: ".mehul",
				textSelector: ".card-title",
				inputSelector: "#cardsearchinput",
				highlight: "<span class='highlight'>$1</span>",
				toggle: function(item, containsText) {
					if (containsText)
						$(item).fadeIn().focus();
					else
						$(item).fadeOut();
				}
			});
		</script>
    </div>
</asp:Content>
