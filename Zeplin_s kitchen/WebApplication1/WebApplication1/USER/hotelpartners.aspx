<%@ Page Title="" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="hotelpartners.aspx.cs" Inherits="WebApplication1.USER.hotelpartners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Hotels</title>
    <link rel="stylesheet" type="text/css" href="../CSS/hotelpartner/main.css"/>
    <link href="https://fonts.googleapis.com/css?family=Philosopher:700i" rel="stylesheet"/>
    <link rel="stylesheet" href="../CSS/hotelpartner/test.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main class="m-wrapper"> 
		<div class="fluid-container">
             <div class="jumbotron jumbotron-fluid ">
                      <div class="container">
                                  <div class="text-center pt-2">
                                     <img class="img-responsive" src="../CSS/hotelpartner/Group 2@2x.png" alt="Chania" width="120" height="120">
                                    </div>
                                     <div class="text-center st md-3">Find the best food and beverages and many more!</div>
                                     
                                        <div class="row ml-5">
                                          <div class="col-4 ml-5">
                                              <asp:DropDownList ID="DropDownList1" class="form-control mr-5 col-form-label-sm" runat="server" AutoPostBack="false">
                                              </asp:DropDownList>
                                              <asp:Button ID="Button1" class="btn btn-primary btn-lg btn-block mt-3 " style="width:330px; margin-left:0px;" runat="server" Text="SEARCH BY LOCATION" OnClick="Button1_Click" />
                                           </div>
                                          <div class="col-6 ml-1">
                                            <input type="text" class="form-control col-form-label-lg" id="cardsearchinput" placeholder="Search By Hotels"> 
                                          </div>  
                                        </div>
                      </div>
                </div>
            <!--card data starts here-->
             <div class="container-fluid" id="carddata">
                <div class="row">
                  <asp:Repeater ID="Repeater1" runat="server">
                      <ItemTemplate> 
                           <div class="col-sm mehul">
                                <div class="card animate hov mt-2 " style="width: 18rem;">
                                    <img class="card-img-top " src="../dbimg/hotelimg/<%#Eval("hotelimage") %>"  style="max-width:300px;" alt="hotel-image">
                                    <div class="card-body">
                                          <h5 class="card-title font"><%#Eval("hotelname") %></h5> 
                                          <p class=" font-weight-light "><%#Eval("hoteltype") %></p> 
                                          <img class="float-left flx"  src="../CSS/hotelpartner/Group 1@2x.png" /> <p class="text-capitalize text-right"><%#Eval("hoteldeliverytime") %></p> 
                                          <img class="float-left flx pt-1"  style="width:14px;" src="../CSS/hotelpartner/purse.png" /> <p class="text-capitalize text-left">&nbsp;<%#Eval("hotelprice") %>&#8377;</p> 
                                          <hr>
                                         <div>
                                            <p class=" text-capitalize text-center color"><i class="material-icons color mater">new_releases</i><%#Eval("hoteloffer") %></p>
                                          </div>
                                         <a href="hotelpartnersview.aspx?IdeaId=<%# Eval("hotelid") %>" class="btn btn-primary btn-sm btn-block">QUICK VIEW</a>
                                    </div>
                              </div>
                          </div>
                       </ItemTemplate>
                  </asp:Repeater>




                 </div>
             </div>
        
















        </div>
     </main>






<!--javascript start-->
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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
</asp:Content>
