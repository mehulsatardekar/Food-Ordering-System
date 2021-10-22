<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="WebApplication1.USER.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Forgot password</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"/>
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"/>
        <link rel="stylesheet" href="../CSS/forgotpassword/forgotpassword.css" type="text/css"/>
        <link rel="shortcut icon" href="../IMAGES/fogotpasswordpage/icon.png" type="image/png/gif/jpeg">

   
</head>
<body>
    <form id="form1" runat="server" class="needs-validation" novalidate>
       <div class="login-block shadow-lg p-3 mb-5 mt-5  bg-white rounded ">
            <div class="row">
                 <div class="col-md-4  color ">
                         <h2 class="text-center space font pt-2">Zeplin'</h2>
                         <img src="../IMAGES/fogotpasswordpage/Group 3.jpg" class="image-space"/>
                 </div>
                 <div class="d-sm-none d-md-block d-none d-sm-block d-md-none d-lg-block">
                      
                 </div>
        <div class="col-md-8  mb-5 ">   
                 
                   
                        
                        <div class="space "><h3>Forgot your password?</h3></div>
                          <div class="space">  Not to worry. Just enter your email address below and we'll send you an<br/>
                         instruction email for recovery.</div>      
                        <div class="form-group user space space-marg">
                                <label for="exampleInputEmail1">Email address</label>
                                <asp:TextBox ID="TextBox1" type="email" runat="server"  pattern="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$"  class="form-control" placeholder="Email address" required autofocus></asp:TextBox>
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="wrap-login100-form-btn pb-5 ">
                            <asp:Button ID="resetpassword" runat="server" Text="Reset Password" class="btn btn-primary btn-lg  float-right mr-5 " OnClick="resetpassword_Click" />
                               <asp:Label ID="lblPassRec" runat="server"></asp:Label>
                            </div>
                        

 
        </div>
            </div>
             
    
 
   </div>

    </form>
 



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
   <noscript><meta http-equiv="refresh" content="0; url=javascriptdisable.html" /></noscript>

</body>
</html>
