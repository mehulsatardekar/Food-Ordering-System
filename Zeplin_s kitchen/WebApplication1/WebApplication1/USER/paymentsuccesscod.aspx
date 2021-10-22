<%@ Page Title="codPaymentsuccessed" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="paymentsuccesscod.aspx.cs" Inherits="WebApplication1.USER.paymentsuccesscod" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="../CSS/confirmation/demo.css" rel="stylesheet" />
    <link href="../CSS/confirmation/lunar.css" rel="stylesheet" />
    <meta http-equiv="Refresh" content="5;url=home.aspx" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="demo-area" style="background-color:gainsboro;">
    <button  type="button" id="meh" class="btnbtn-outline-light" data-toggle="modal" data-target="#demoModal" data-target="#myModal" data-toggle="modal" data-backdrop="static" data-keyboard="false">
    </button>
</div>
    <!-- Modal -->
    <div class="modal fade "   id="demoModal"  tabindex="-1" role="dialog"
         aria-labelledby="demoModal" aria-hidden="true">
        <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content">
               
                <div class="modal-body">
                    <div class="px-3 pt-3 text-center">
                        <div class="event-type error">
                            <div class="event-indicator ">
                              
                                <svg style="width:60px;height:60px" viewBox="0 0 24 24">
                                        <path fill="#ffffff" d="M21,7L9,19L3.5,13.5L4.91,12.09L9,16.17L19.59,5.59L21,7Z" />
                                    </svg>
                            </div>
                        </div>
                        <h3 class="pt-3">Hurrey!</h3>
                        <p class="text-muted">
                            Your order has  successfully placed. Continue Browsing food...
                            You will be redirected within 5 second.
                        </p>
                        <div>
                            <a href="#" class="badge badge-danger">Contact on:=Zeplin.co to get more info.</a>
                        </div>

                    </div>
                </div>
                <div class="modal-footer text-md-right">
                    <a href="home.aspx" class="btn btn-cstm-secondary" data-dismiss="modal" aria-label="Close" >Okay</a>
                </div>
            </div>
        </div>
    </div>




<!--javascript starts here-->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
                    $('#meh').hide();

            $('#demoModal').modal({ backdrop: 'static', keyboard: false });
        });
 
</script>

</asp:Content>
