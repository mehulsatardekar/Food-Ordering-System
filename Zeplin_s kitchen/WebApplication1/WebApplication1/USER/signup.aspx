<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.USER.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <link href="../CSS/signup/signuppage.css" rel="stylesheet" />
      
</head>
<body>
    <form id="form1" runat="server" method="post" class="needs-validation" novalidate>
         <section class="testimonial py-5" id="testimonial">
                <div class="container">
                    <div class="row ">
                        <div class="col-md-4  py-5 bg-primary text-white text-center ">
                            <div class=" ">
                                <div class="card-body">
                                    <img src="../IMAGES/signuppage/diet.svg"  style="width:30%"/>
                                    <img src="../IMAGES/signuppage/beer.svg"  style="width:30%"/>
                                    <img src="../IMAGES/signuppage/lunch.svg"  style="width:30%"/>
                                    <h2 class="py-5" style="color:gold;">Registration</h2>
                                    <p>It will take just 2 minute to create account. Fill the information and enjoy food. </p>
                                    <small> already got an account?</small> <br>
                                        <small>  <a href="login.aspx">Log in  </a>  </small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 py-4 border">
                            <h4 class="pb-4 text-center">Register With Us</h4>
                                <div class="form-row">
                                  
                                    <div class="form-group col-md-7 mx-auto pb-3">
                                            <label for="exampleInputEmail1">Username</label>
                                        <asp:TextBox ID="username"  runat="server" class="form-control"  placeholder="Username"   required autofocus></asp:TextBox>
                                        
                                    <div class="invalid-feedback">
                                        username required.
                                     </div>
                                    </div>
                                  </div> 
                                <div class="form-row">
                                    <div class="form-group  col-md-7 mx-auto pb-3">
                                            <label for="exampleInputEmail1">Email-id</label>
                                        <asp:TextBox ID="emailaddress" runat="server" class="form-control" type="email" placeholder="Email address"  pattern="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$" required autofocus></asp:TextBox>
                                     <div class="invalid-feedback">
                                            Email must be atleast with alphanumerical and not contail any special character and it must have domail name gmail.com ex:= me1234@gmail.com
                                     </div>
                                    </div>

                                    <div class="form-group col-md-7 mx-auto pb-3">
                                            <label for="exampleInputEmail1">Password</label>
                                           <asp:TextBox ID="passwordinput" runat="server" type="password"  class="form-control" placeholder="Password" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" required></asp:TextBox>
                                      <div class="invalid-feedback">
                                        Password must have Minimum eight characters, at least one uppercase letter, one lowercase letter and one number
                                      </div>
                                    </div>
                                    
                                      
                                    <div class="form-group col-md-7 mx-auto pb-3">
                                            <label for="exampleInputEmail1">Phone number</label>
                                            <asp:TextBox ID="phonenumber" runat="server" class="form-control" placeholder="Password" pattern="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" required></asp:TextBox>
                                        <div class="invalid-feedback">
                                        phone number must be 10 digit.
                                      </div>
                                    </div>
                                     
                                </div>
                                <div class="form-row">
                                    <div class="form-group mx-auto">
                                        <div class="form-group">
                                            <div class="form-check">
                                              <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required/>
                                              <label class="form-check-label" for="invalidCheck2">
                                                <small>By clicking Submit, you agree to our Terms and policy.</small>
                                              </label>
                                            </div>
                                          </div>
                                
                                      </div>
                                </div>
                                
                                <div class="form-row mx-auto">
                                    <asp:Button ID="Button1" runat="server" Text="Sign-up" class="btn btn-primary btn-lg  col-md btn-block" OnClick="Button1_Click"/>
                          
                                </div>
                        </div>
                    </div>
                </div>
            </section>
         


    </form>

    <script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
 
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   <noscript><meta http-equiv="refresh" content="0; url=javascriptdisable.html" /></noscript>
</body>
</html>
