<%@ Page Title="Zeplin-Products" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="zeplinproducts.aspx.cs" Inherits="WebApplication1.USER.zeplinproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
      <link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
    <link href="../CSS/zeplinproducts/zeplinproducts.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <main class="m-wrapper"> 
		<div class="fluid-container">
            <div class="jumbotron jumbotron-fluid" style="background-image:url(../CSS/zeplinproducts/pizzas.jpeg); background-repeat:no-repeat; background-size:cover; background-position:center center center;"> 
                      <div class="container">
                                  <div class="text-center pt-2">
                                     <img class="img-responsive" src="../CSS/hotelpartner/Group 2@2x.png" alt="Chania" width="120" height="120">
                                    </div>
                                     <div class="text-center st md-3 mt-3 mb-3" style="color:white; font-size:x-large; font-family:sans-serif; font-weight:bold;">More than 10 categories and different dishes. </div>
                                     
                                        <div class="row ml-5">
                                          <div class="col-4 ml-5">
                                              <asp:DropDownList ID="DropDownList1" class="form-control mr-5 col-form-label-sm" runat="server" >
                                              </asp:DropDownList>
                                              <asp:Button ID="searchbycategories" class="btn btn-primary btn-lg btn-block mt-3 " style="width:330px; margin-left:0px;" runat="server" Text="Search By Category" OnClick="searchbycategories_Click" />
                                           </div>
                                          <div class="col-6 ml-1">
                                            <input type="text" class="form-control col-form-label-lg" id="cardsearchinput" placeholder="Search By Catagories."> 
                                          </div>  
                                        </div>
                      </div>
                </div>
        <!--cards starting-->
            <div class="container-fluid" id="carddata">
                <div class="row">
          <asp:Repeater ID="repeater2" runat="server">
              <ItemTemplate>
                <div class="col-sm mehul">
                     <div class="card animate hov mt-2 " style="width: 18rem;">
                     <img class="card-img-top " src="../dbimg/zeplinimage/zeplinproduct/<%#Eval("pimage") %>" style="max-width:300px;" alt="<%#Eval("pdishname") %>">
                       <div class="card-body">
                          <h3 class="card-title fontname"><%#Eval("pdishname") %></h3> 
                          <img class="float-left flx imgstyle"  src="../dbimg/zeplinimage/zeplinproduct/productimgtype/<%#Eval("pimagetype") %>"  /><p class="font-weight-light pr-3"><%#Eval("categories") %>  <span class="marg">-Zeplin's Kitchen</span></p> 
                          <p class="font-weight-bold">Price <%#Eval("price") %>&#x20B9;</p> 
                          <img class="float-left flx imgstyle pt-1"  src="../IMAGES/home/question.png" width="15" /><p class="font-weight-light pl-2 ml-3"><%#Eval("pricedetails") %></p>
                          <asp:Button ID="zepprodadd" class="btn btn-primary btn-sm btn-block" runat="server" Text="Add" CommandArgument='<%#Eval("pid") %>' OnClick="zepprodadd_Click" />
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
