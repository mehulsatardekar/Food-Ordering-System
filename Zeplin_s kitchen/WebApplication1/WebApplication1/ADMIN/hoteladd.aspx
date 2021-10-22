<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="hoteladd.aspx.cs" Inherits="WebApplication1.ADMIN.hoteladd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Hotel</title>
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main class="m-wrapper">
         <div class="container-fluid">
             <div class="container col-12">
                                <div class="row">
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>ADD LOCATION DETAILS</h3>
                                                   <hr/>
                                                </div>
                                                <div class="col-8 mx-auto">
                                                    
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD LOCATION</label>
                                                     <asp:TextBox ID="TextBox1" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add location (do not add any information and avoid adding  multiple location, look for the location list table. )</p>
                                                   </div>
                                                     
                                                                   
                                                    <div class="form-group">
                                                        <asp:Button ID="Button4" class="btn btn-primary" runat="server" Text="Add Location" OnClick="Button4_Click" />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                  
                                </div>
                              </div>
             
                              <div class="alert alert-warning" role="alert">
                                        <div class="font-weight-bold"> Note!.</div>For deleting updating go to editable section .
                                      </div>
                                           <hr style="border:0; border-top:3px double #88cc88;"/>

              <div class="container col-12">
                                <div class="row">
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>ADD HOTEL  VIEW DETAILS</h3>
                                                   <hr/>
                                                </div>
                                                <div class="col-8 mx-auto">
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL IMAGE</label>
                                                     <asp:FileUpload ID="FileUpload1" runat="server" />
                                                    <p class="font-weight-light">Add hotel image. (better not to add any other image insted of hotel name image.)</p>

                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTLE NAME</label>
                                                     <asp:TextBox ID="hotelname" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add hotel name. (do not add any information related to hotel just hotel name only.)</p>
                                                   </div>
                                                     <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL TYPE</label>
                                                     <asp:TextBox ID="hoteltype" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add hotel type. (it may contain cuisins type like punjai,mughlai,kokani.)</p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL RATING</label>
                                                    <asp:TextBox ID="hotelrating" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add ratings (example 3.7 rating .)</p>

                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL DELIVERY TIME</label>
                                                    <asp:TextBox ID="hoteldeliverytime" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add delivery time (example Foods in 30 minute)</p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL OFFER</label>
                                                     <asp:TextBox ID="hoteloffer" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add hotel offer it depend it is not necessary to have it.(example 15%off every dishesh.)</p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL LOCATION</label>
                                                      <asp:TextBox ID="hotellocation" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add Location  (example kalyan. this field contains only integer value. check for references table)</p>
                                                    </div>
                                                     <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL PRICE</label>
                                                      <asp:TextBox ID="hotelprice" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                                    <p class="font-weight-light">Add Hotel price  (example 300. this field contains only 1 integer value.)</p>
                                                    </div>
                                                                   
                                                    <div class="form-group">
                                                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Add Hotel" OnClick="Button1_Click" />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>UPDATE HOTEL  VIEW DETAILS</h3>
                                                   <hr/>
                                                </div>
                                                <div class="col-8 mx-auto">
                                                        <label for="exampleDropdownFormEmail1">SELECT HOTEL ID</label>
                                                        <div class="dropdown">
                                                            <asp:DropDownList ID="DropDownList1"  Width="220"  Height="35" runat="server">
                                                                </asp:DropDownList>
                                                                <hr/>
                                                        </div>   
                                                       
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD HOTEL IMAGE</label>
                                                    <asp:FileUpload ID="FileUpload3" runat="server" />
                                                    <p class="font-weight-light">update hotel image. (better not to add any other image insted of hotel name image.)</p>

                                                    </div>
                                                    
                                                               
                                                    <div class="form-group">
                                                           <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Update Hotel" OnClick="Button2_Click" />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>DELETE HOTEL VIEW DETAILS</h3>
                                                   <hr/>
                                                </div>
                                                <div class="col-8 mx-auto">
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">DELETE HOTL DETAILS BY SELECTING</label>
                                                    <div class="dropdown">
                                                        <asp:DropDownList ID="DropDownList2"  class="" data-toggle="dropdown" width="220" Height="30" aria-haspopup="true" aria-expanded="false" runat="server"></asp:DropDownList>
                                                              
                                                    </div> 
                                                </div>
                                                              
                                                    <div class="form-group"> 
                                                        <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Delete Hotel" OnClick="Button3_Click" />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                </div>
                              </div>
                              <div class="alert alert-warning" role="alert">
                                        <div class="font-weight-bold"> Note!.</div>Before heading to another devision to add product you have to add this section first then you have to click on submit.once the data get inserted you can jump to another section.
                                      </div>
                                       
                              <hr style="border:0; border-top:3px double #88cc88;"/>
            <div class="alert alert-warning" role="alert">
                     <div class="font-weight-bold"> Note!.</div>Following both tables have primary,foreign key concept. (dependencies table). 
               </div>
                <h1>Locations List Table.</h1>
                   <table class="table table-bordered table-hover ">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Location-id (Primary Key). </th>
                              <th scope="col">Location-name</th>
                            </tr>
                          </thead>
                         <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                         <tbody>
                            <tr>
                              <th scope="row"><%#Eval("locationid") %></th>
                              <td><%#Eval("loctionname") %></td>
                            </tr>
                      </tbody>
                        </ItemTemplate>
                       </asp:Repeater>
                  </table>
             <hr style="border:0; border-top:3px double #88cc88;"/>
          <h1>Hotels List Table.</h1>
              <table class="table table-bordered table-hover ">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Hotel-id</th>
                              <th scope="col">Hotel-image</th>
                              <th scope="col">Hotel-name</th>
                              <th scope="col">Hotel-type</th>
                              <th scope="col">Hotel-Rating</th>
                              <th scope="col">Hotel-offer</th>
                              <th scope="col">Hotel-deliverytime</th>
                              <th scope="col">Hotel-locationid(Foreign key)</th>
                              <th scope="col">Hotel-price</th>
                            </tr>
                          </thead>
                         <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate> 
                         <tbody>
                            <tr>
                              <th scope="row"><%#Eval("hotelid") %></th>
                              <td><%#Eval("hotelimage") %></td>
                               <td><%#Eval("hotelname") %></td>
                               <td><%#Eval("hoteltype") %></td>
                               <td><%#Eval("hotelratings") %></td>
                               <td><%#Eval("hoteloffer") %></td>
                               <td><%#Eval("hoteldeliverytime") %></td>
                               <td><%#Eval("locationid") %></td>
                               <td><%#Eval("hotelprice") %></td>
                            </tr>
                      </tbody>
                        </ItemTemplate>
                       </asp:Repeater>
                  </table>

 
                  



         </div>
    </main>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</asp:Content>
