<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.USER.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"/>
     <link rel="stylesheet" href="../CSS/login/loginpage.css" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server" class="needs-validation" novalidate>
        <div class="login-block">
        <div class="container">
            <div class="row">
                <div class="col-md-4 login-sec color">
                    <h2 class="text-center">Login Now</h2>
                    <div class="">
                            <div class="form-group user pb-3">
                                <label for="exampleInputEmail1">Email address</label>
                                <asp:TextBox ID="username" runat="server" class="form-control"  placeholder="Email address" required autofocus></asp:TextBox>
                                 <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
      
                                <div class="invalid-feedback">
                                     Email id required.
                               </div>
                            </div>
                            <div class="form-group user pb-3">
                                <label for="exampleInputPassword1">Password</label>
                                
                                
                                <div class="input-group mb-3">
                                 <asp:TextBox ID="password" type="password" runat="server" class="form-control" placeholder="Password"  aria-label="Text input with checkbox" required></asp:TextBox>

                                        <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                  <input type="checkbox" aria-label="Checkbox for following text input" onclick="Toggle()"/>
                                                </div>
                                              </div>  
                                    <div class="invalid-feedback">
                                     Password is required.
                               </div>
                                    </div>
                                
                                   
                            </div>
                           
                            <div class="text-right p-t-8 p-b-31">
                                <a href="forgotpassword.aspx">
                                    Forgot password?
                                </a>
                            </div>
                            <div class="container-login100-form-btn">
                                <div class="wrap-login100-form-btn ">
                                    <asp:Button ID="Button1" runat="server" Text="Sign-In"  class="btn btn-primary col-sm-btn btn-primary btn-lg btn-block" OnClick="Button1_Click"/>
                                   
                                </div>
                            </div>        
                  </div>
                     <div class="copy-text">New to
                        <a href="signup.aspx">Zeplin's kitchen</a> 
                            <i class="fa fa-heart"></i>?
                     </div>
                  
                </div>
                <div class="col-md-8 banner-sec  d-sm-none d-md-block d-none d-sm-block  d-md-none d-lg-block">   
                  <div class="signup__overlay"></div>          
    <div class="banner">
        <div id="demo" class="carousel slide carousel-fade" data-ride="carousel">
            <ol class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
      </ol>

            <div class="carousel-inner">
                <div class="carousel-item">   
                <img src="../IMAGES/loginpage/1image.jpg" alt="appetezier" style: width="auto" height= "600px" max-height="700px"/>
                </div>
                <div class="carousel-item">
                    <img src="../IMAGES/loginpage/2image.jpg" alt="barbeque" style: width="auto" height= "600px" max-height="700px" />

                </div>

                <div class="carousel-item active">
                    <img src="../IMAGES/loginpage/3image.jpg" alt="barbeque" style: width="auto" height= "600px" max-height="700px" />
    

                </div>

                <div class="carousel-item">
                    <img src="../IMAGES/loginpage/4image.jpg" alt="barbeque" style: width="auto" height= "600px" max-height="700px" />
   

                </div>

                <div class="carousel-item">
                    <img src="../IMAGES/loginpage/5image.jpg" alt="barbeque" style: width="auto" height= "600px" max-height="700px" />


                </div>
            </div>
        </div>
    </div>

                </div>
            </div>
            
    </div>

</div>


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
function Toggle() { 
            let temp = document.getElementById("password"); 
            if (temp.type === "password") { 
                temp.type = "text"; 
            } 
            else { 
                temp.type = "password"; 
            } 
        } 


</script>

    <!--javascript file for faster webpage loading-->
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
    <noscript><meta http-equiv="refresh" content="0; url=javascriptdisable.html" /></noscript>

</body>
</html>
