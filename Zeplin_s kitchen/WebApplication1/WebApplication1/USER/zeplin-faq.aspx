<%@ Page Title="" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="zeplin-faq.aspx.cs" Inherits="WebApplication1.USER.zeplin_faq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="../JAVASCRIPT/faq/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="../JAVASCRIPT/faq/css/style.css"> <!-- Resource style -->
	<script src="../JAVASCRIPT/faq/js/modernizr.js"></script> <!-- Modernizr -->
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <header>
	<h1>Zeplin FAQ</h1>
</header>
      <div class="m-wrapper">
<section class="cd-faq">
	<ul class="cd-faq-categories">
		<li><a class="selected" href="#basics">Basics</a></li>
		<li><a href="#payments">Payments</a></li>
		<li><a href="#privacy">Privacy</a></li>
		<li><a href="#delivery">Delivery</a></li>
	</ul> <!-- cd-faq-categories -->

	<div class="cd-faq-items">
		<ul id="basics" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Basics</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">How do I change my password?</a>
				<div class="cd-faq-content">
					<p>Changeing the  password you have to provide your working google gmail id and we will send you a reset link once its get verified you can reset password.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How do I sign up?</a>
				<div class="cd-faq-content">
					<p>Creating a zeplin account is very easy you just have to provide a valid credentials for creating account and you are good to go.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Is there are multiples hotels avaliable?</a>
				<div class="cd-faq-content">
					<p>Yes. there are more than 50 hotels and more coming. </p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">what if i add to provide some dish in add note so does it will get charged?</a>
				<div class="cd-faq-content">
					<p>Yes ofcourse. if you will add in note section to add dish u will be charged . note section is only for you can add some notes about to add some sause, no onions etc.</p>
				</div> <!-- cd-faq-content -->
            </li>
            
            <li>
				<a class="cd-faq-trigger" href="#0">want to contact us?</a>
				<div class="cd-faq-content">
					<p>https://github.com/mehulsatardekar</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

	
		<ul id="payments" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Payments</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Do we have online mode payment?</a>
				<div class="cd-faq-content">
					<p>Yes we have online mode payment but it has only integrated with paytm .</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Why did my credit card or Paytm payment fail?</a>
				<div class="cd-faq-content">
					<p>Because of there might be some internet issue or you might canceled the payment this cause payment fail.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Do you accepts cash on delivery?</a>
				<div class="cd-faq-content">
					<p>Yes we also accept cash on delivery also from zeplin's kitchen and our partners.</p>
				</div> <!-- cd-faq-content -->
            </li>
            
            <li>
				<a class="cd-faq-trigger" href="#0">why is not there online payment in zeplin's kitchen checkout?</a>
				<div class="cd-faq-content">
					<p>We glad you like our service we are working on it to add online payment in zeplin's kitchen. thanks for your appreciate.</p>
				</div> <!-- cd-faq-content -->
			</li>
		</ul> <!-- cd-faq-group -->

		<ul id="privacy" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Privacy</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">Is my zeplin account safe?</a>
				<div class="cd-faq-content">
					<p>Yes your zeplin account is safe we are using modern technologies to secure your credentials unless you tried to exposed yourself.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Sharing my account with someone is it safe?</a>
				<div class="cd-faq-content">
					<p>Sharing the account may cause big trouble for you he can make unlimited purchase and he has also access of your online gateway credentials so sharing of your account think twice.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">How can I delete my account?</a>
				<div class="cd-faq-content">
					<p>You can't delete your account once you register yourself in zeplin there is no way yo delete your account is you really want to delete account see the basic section to contact us.</p>
				</div> <!-- cd-faq-content -->
			</li>

			
		</ul> <!-- cd-faq-group -->

		<ul id="delivery" class="cd-faq-group">
			<li class="cd-faq-title"><h2>Delivery</h2></li>
			<li>
				<a class="cd-faq-trigger" href="#0">What should I do if my order hasn't been delivered yet?</a>
				<div class="cd-faq-content">
					<p>you can contact us on https://github.com/mehulsatardekar to get answers about your delivery.</p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Is zeplin multinational comapnay?</a>
				<div class="cd-faq-content">
					<p>Glad to see you like our service we are about to expanding our company at international level. </p>
				</div> <!-- cd-faq-content -->
			</li>

			<li>
				<a class="cd-faq-trigger" href="#0">Can i cancle the  order once i confirmed the order?</a>
				<div class="cd-faq-content">
					<p>There is no way to cancle the order so before procedding to confirmed please check your cart.</p>
				</div> <!-- cd-faq-content -->
			</li>

			
		</ul> <!-- cd-faq-group -->
	</div> <!-- cd-faq-items -->
	<a href="#0" class="cd-close-panel">Close</a>
</section> <!-- cd-faq -->
        </div>
<script src="../JAVASCRIPT/faq/js/jquery.mobile.custom.min.js"
 ></script>
  <script src="../JAVASCRIPT/faq/js/jquery-2.1.1.js"></script>
<script src="../JAVASCRIPT/faq/js/main.js"></script> 

</asp:Content>
