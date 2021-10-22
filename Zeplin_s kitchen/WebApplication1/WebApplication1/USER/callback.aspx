<%@ Page Title="" Language="C#" MasterPageFile="~/USER/master.Master" AutoEventWireup="true" CodeBehind="callback.aspx.cs" Inherits="WebApplication1.USER.callback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="m-wrapper">
     <div class="container-fluid">
            <div class="jumbotron jumbotron-fluid">
                <h1 runat="server" id="h1Message"></h1>
                <p runat="server" id="pTxnId"></p>
                <p>Click here to go to home</p>
                <p><a class="btn btn-primary btn-lg" href="home.aspx" role="button">Home</a></p>
            </div>
        </div>
        </div>
</asp:Content>
