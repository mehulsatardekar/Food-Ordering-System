<%@ Page Title="" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.USER.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
  <title>Zeplin's Home</title>
  <link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"  rel="stylesheet">
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.css'>
    <link href="../CSS/home/work.css" rel="stylesheet" />
    <link href="../CSS/home/carsoul.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="m-wrapper1">
 <div class="container-fluid" style="padding-left:1px; padding-right:1px;">
      
      <div class="top-content">
        	<div class="container-fluid" style="padding-left:1px; padding-right:1px;">
                <div class="jumbotron jumbotron-fluid" style="margin-top:66px; background-color:#3e4042;">
        		<div id="carousel-example" class="carousel slide" data-ride="carousel">
        			<div class="carousel-inner row w-100 mx-auto" role="listbox">
            			<div class="carousel-item col-12 col-sm-6 col-md-4 col-lg-3 active">
							<img src="../IMAGES/home/ramen.jpg" class="img-fluid mx-auto d-block blur" alt="img1">
                             <div class="carousel-caption">
                               <h5>Chinese Ramen,Sushi and many more search by Seafood. </h5>
                             </div>
						</div>
						<div class="carousel-item col-12 col-sm-6 col-md-4 col-lg-3">
							<img src="../IMAGES/home/whisky.gif" class="img-fluid mx-auto d-block blur" alt="img2">
                             <div class="carousel-caption">
                               <h5>The glimpse of whisky coming soon. </h5>
                             </div>
						</div>
						<div class="carousel-item col-12 col-sm-6 col-md-4 col-lg-3">
							<img src="../IMAGES/home/pizza.png" class="img-fluid mx-auto d-block blur" alt="img3">
                             <div class="carousel-caption">
                               <h5 style="color:ghostwhite;">The Pizza for breakfast would be a great choice search pizza on zeplin.</h5>
                             </div>
						</div>
						<div class="carousel-item col-12 col-sm-6 col-md-4 col-lg-3">
							<img src="../IMAGES/home/love.png" class="img-fluid mx-auto d-block blur"  alt="img4">
                             <div class="carousel-caption">
                               <h5 style="color:black;">Order Food who You loves more.</h5>
                             </div>
						</div>
						
        			</div>
        			<a class="carousel-control-prev" href="#carousel-example" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carousel-example" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
        		</div>
        	</div>
             </div>
        </div>

    </div><!--carsoul end-->

<div class="text-center font">FOODS BY ZEPLIN</div>

<div class="fluid-container m-wrapper">
<div class="container-fluid" id="zeplin">
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
            <a href="zeplinproducts.aspx" class="btn btn-primary btn-sm btn-block pb-1">See Product <span class="material-icons pl-2 ">arrow_forward</span></a>
                </div>
          </div>
          </div>
             </ItemTemplate>
          </asp:Repeater>

        
          <div class="col-sm mehul float-left w-auto fl">
            <div class="float-center card w-auto p-4 mt-2 back1">
              <div class="back2">
                <div class="card-body">
                  <h1 class="card-title text-center">50+</h1>
                  <p class="card-text text-center">More than 10 categories and more food.</p>
                  <div class="mx-auto" style="width: 200px;">
                      <asp:Button ID="zeplinprodredirect" runat="server"  class="btn btn-outline-primary btn-lg btn-block" Text="See More" OnClick="zeplinprodredirect_Click" />
                 </div>
                  </div>
              </div>
           </div>
        </div>  

       
          </div>
          </div>
   </div>
<!--new hotels -->
   <div class="text-center font pt-4">BROWSE BY HOTELS</div>
 <div class="fluid-container m-wrapper">
    <div class="container-fluid" id="ourpartner">
        <div class="row">
            <asp:Repeater ID="repeater1" runat="server">
               <ItemTemplate>
            <div class="col-sm mehul">
                <div class="card animate hov mt-2 " style="width: 18rem;">
               <img class="card-img-top " src="../dbimg/hotelimg/<%#Eval("hotelimage") %>"  style="max-width:300px;" alt="hotel-image">
                    <div class="card-body">
                      <h5 class="card-title font"><%#Eval("hotelname") %></h5> 
                        <p class=" font-weight-light "><%#Eval("hoteltype") %></p> 
                        <img class="float-left flx"  src="../CSS/hotelpartner/Group 1@2x.png" /> <p class="text-capitalize text-right"><%#Eval("hoteldeliverytime") %></p> 
                        <img class="float-left flx pt-1"  style="width:14px;" src="../CSS/hotelpartner/purse.png" /> <p class="text-capitalize text-left">&nbsp;<%#Eval("hotelprice") %>&#8377; Hotel Price </p> 
                      <hr>
                      <div>   
                     <p class=" text-capitalize text-center color"><i class="material-icons color mater pt-1">new_releases</i><%#Eval("hoteloffer") %></p>
                      </div>
                    <a href="hotelpartnersview.aspx?IdeaId=<%# Eval("hotelid") %>" class="btn btn-primary btn-sm btn-block">QUICK VIEW</a>
                    </div>
              </div>
              </div>
              </ItemTemplate>
             </asp:Repeater>
              <div class="col-sm mehul float-left w-auto fl">
                <div class="float-center card w-auto p-4 mt-2 back pb-5" >
                    <div class="card-body">
                      <h1 class="card-title text-center">20+</h1>
                      <p class="card-text text-center">We are expanding our view more than 20 hotels trust Zeplin.</p>
                      <div class="mx-auto" style="width: 200px;">
                          <asp:Button ID="redirctpartners" runat="server"  class="btn btn-outline-primary btn-lg btn-block"  Text="See More Hotels" OnClick="redirctpartners_Click"/>
                     </div>
                      </div>
                  </div>
               
            </div>  
    

              </div>
              </div>
       </div>


<div class="mt-4"></div>




  </main>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>   
<script
	src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous">
	</script>
    <script src="../JAVASCRIPT/home/backstretch.min.js"></script>
    <script src="../JAVASCRIPT/home/wow.js"></script>
    <script src="../JAVASCRIPT/home/homer.js"></script>

</asp:Content>
