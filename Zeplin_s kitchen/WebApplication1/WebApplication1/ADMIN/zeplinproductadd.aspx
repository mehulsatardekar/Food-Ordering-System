<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="zeplinproductadd.aspx.cs" Inherits="WebApplication1.ADMIN.zeplinproductadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
    <main class="m-wrapper">
         <div class="container-fluid">
             
              <div class="container col-12">
                                <div class="row">
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>ADD CATEGORY DETAILS</h3>
                                                   <hr/>
                                                </div>
                                                <div class="col-8 mx-auto">
                                                    
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD CATEGORY NAME</label>
                                                     <asp:TextBox ID="TextBox1" class="form-control" runat="server" ></asp:TextBox>
                                                    <p class="font-weight-light">Add category name. (do not add any information related to dish and dont override the details look for the category table)</p>
                                                   </div>
                                                    
                                                     
                                                                   
                                                    <div class="form-group">
                                                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Add Category" OnClick="Button1_Click" />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                </div>
                              </div>
             <div class="alert alert-warning" role="alert">
                     <div class="font-weight-bold"> Note!.</div>While adding categories always put 1'st character of category word capital 
               </div>
                           <hr style="border:0; border-top:3px double #88cc88;"/>
    
              <div class="container col-12">
                                <div class="row">
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>ADD ZEPLIN PRODUCT DETAILS</h3>
                                                   <hr/>
                                                </div>
                                                <div class="col-8 mx-auto">
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD PRODUCT IMAGE</label>
                                                     <asp:FileUpload ID="FileUpload1" runat="server" />
                                                    <p class="font-weight-light">Add product image for zeplin. (better not to add any other image insted of dish image.)</p>

                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD PRODUCT NAME</label>
                                                     <asp:TextBox ID="productname" class="form-control" runat="server" ></asp:TextBox>
                                                    <p class="font-weight-light">Add product name. (do not add any information related to dish just dish name only.)</p>
                                                   </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD PRODUCT TYPE IMAGE</label>
                                                     <asp:FileUpload ID="FileUpload2" runat="server"  />
                                                    <p class="font-weight-light">Add Product type image.(ONLY veg,non-veg,drink,cake type image.)</p>
                                                    </div>
                                                     <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD PRODUCT CATEGORY</label>
                                                     <asp:TextBox ID="productcategory" class="form-control" runat="server" ></asp:TextBox>
                                                    <p class="font-weight-light">Add product name. (example if the image is pizza then name should be pizza ex:tacos:tacos,chicken:chicken)</p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD Product PRICE</label>
                                                    <asp:TextBox ID="productprice" class="form-control" runat="server" ></asp:TextBox>
                                                    <p class="font-weight-light">Add Product Price (example add only integer value no other data type. ex:300)</p>
                                                    </div>
                                                    <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD Product Detail</label>
                                                    <asp:TextBox ID="productdetails" class="form-control" runat="server" ></asp:TextBox>
                                                    <p class="font-weight-light">Add Product Detail (if drink price is 300 hundred then mention how much for 1 quantity ex:300 per shotz)</p>
                                                    </div>
                                                     
                                                                   
                                                    <div class="form-group">
                                                        <asp:Button ID="productadd" class="btn btn-primary" runat="server" Text="Add Hotel" OnClick="productadd_Click" />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>UPDATE ZEPLIN PRODUCTS</h3>
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
                                                    <label for="exampleDropdownFormEmail1">ADD PRODUCT IMAGE</label>
                                                     <asp:FileUpload ID="FileUpload3" runat="server" />
                                                    <p class="font-weight-light">Add product image for zeplin. (better not to add any other image insted of dish image.)</p>

                                                    </div>
                                                     <div class="form-group">
                                                    <label for="exampleDropdownFormEmail1">ADD PRODUCT TYPE IMAGE</label>
                                                     <asp:FileUpload ID="FileUpload4" runat="server" />
                                                    <p class="font-weight-light">Add Product type image.(ONLY veg,non-veg,drink,cake type image.)</p>
                                                    </div>
                                                                   
                                                  
                                               
                                                               
                                                    <div class="form-group">
                                                           <asp:Button ID="updatezeplinproducts" OnClick="updatezeplinproducts_Click" class="btn btn-primary" runat="server" Text="Update Hotel"  />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                  <div class="col-lg-4">
                                        <div class="">
                                                <div class=" text-center pt-3">
                                                   <h3>DELETE ZEPLIN PRODUCTS</h3>
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
                                                        <asp:Button ID="deletezeplinproducts" OnClick="deletezeplinproducts_Click" class="btn btn-primary" runat="server" Text="Delete Hotel" />
                                                    </div>
                                                </div>
                                                 
                                                
                                            </div>
                                  </div>
                                </div>
                              </div>

              <hr style="border:0; border-top:3px double #88cc88;"/>
            <div class="alert alert-warning" role="alert">
                     <div class="font-weight-bold"> Note!.</div>Following both tables have primary,foreign key concept. (dependencies table). 
               </div>
                <h1>CATEGORY List Table.</h1>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover thead-dark" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="categories" DataSourceID="categoryzeplin" ForeColor="Black" GridLines="Vertical">
                 <AlternatingRowStyle BackColor="#CCCCCC" />
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="catid" HeaderText="catid" InsertVisible="False" ReadOnly="True" SortExpression="catid" />
                     <asp:BoundField DataField="categories" HeaderText="categories" ReadOnly="True" SortExpression="categories" />
                 </Columns>
                 <FooterStyle BackColor="#CCCCCC" />
                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#808080" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#383838" />
              </asp:GridView>   

              <asp:SqlDataSource ID="categoryzeplin" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [categories] = @original_categories AND [catid] = @original_catid" InsertCommand="INSERT INTO [category] ([categories]) VALUES (@categories)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [catid] = @catid WHERE [categories] = @original_categories AND [catid] = @original_catid">
                  <DeleteParameters>
                      <asp:Parameter Name="original_categories" Type="String" />
                      <asp:Parameter Name="original_catid" Type="Int64" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="categories" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="catid" Type="Int64" />
                      <asp:Parameter Name="original_categories" Type="String" />
                      <asp:Parameter Name="original_catid" Type="Int64" />
                  </UpdateParameters>
              </asp:SqlDataSource>

             <hr style="border:0; border-top:3px double #88cc88;"/>
          <h1>ZEPLIN PRODUCT List Table.</h1>


             <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered table-hover thead-dark" AutoGenerateColumns="False" DataKeyNames="pid" DataSourceID="productszeplin">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                     <asp:BoundField DataField="pimage" HeaderText="pimage" SortExpression="pimage" />
                     <asp:BoundField DataField="pdishname" HeaderText="pdishname" SortExpression="pdishname" />
                     <asp:BoundField DataField="pimagetype" HeaderText="pimagetype" SortExpression="pimagetype" />
                     <asp:BoundField DataField="fwh" HeaderText="fwh" SortExpression="fwh" />
                     <asp:BoundField DataField="categories" HeaderText="categories" SortExpression="categories" />
                     <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                     <asp:BoundField DataField="pricedetails" HeaderText="pricedetails" SortExpression="pricedetails" />
                 </Columns>
              </asp:GridView>



              <asp:SqlDataSource ID="productszeplin" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [zeplinproducts] WHERE [pid] = @original_pid AND [pimage] = @original_pimage AND [pdishname] = @original_pdishname AND [pimagetype] = @original_pimagetype AND [fwh] = @original_fwh AND [categories] = @original_categories AND [price] = @original_price AND [pricedetails] = @original_pricedetails" InsertCommand="INSERT INTO [zeplinproducts] ([pimage], [pdishname], [pimagetype], [fwh], [categories], [price], [pricedetails]) VALUES (@pimage, @pdishname, @pimagetype, @fwh, @categories, @price, @pricedetails)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [zeplinproducts]" UpdateCommand="UPDATE [zeplinproducts] SET [pimage] = @pimage, [pdishname] = @pdishname, [pimagetype] = @pimagetype, [fwh] = @fwh, [categories] = @categories, [price] = @price, [pricedetails] = @pricedetails WHERE [pid] = @original_pid AND [pimage] = @original_pimage AND [pdishname] = @original_pdishname AND [pimagetype] = @original_pimagetype AND [fwh] = @original_fwh AND [categories] = @original_categories AND [price] = @original_price AND [pricedetails] = @original_pricedetails">
                  <DeleteParameters>
                      <asp:Parameter Name="original_pid" Type="Int64" />
                      <asp:Parameter Name="original_pimage" Type="String" />
                      <asp:Parameter Name="original_pdishname" Type="String" />
                      <asp:Parameter Name="original_pimagetype" Type="String" />
                      <asp:Parameter Name="original_fwh" Type="String" />
                      <asp:Parameter Name="original_categories" Type="String" />
                      <asp:Parameter Name="original_price" Type="Int64" />
                      <asp:Parameter Name="original_pricedetails" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="pimage" Type="String" />
                      <asp:Parameter Name="pdishname" Type="String" />
                      <asp:Parameter Name="pimagetype" Type="String" />
                      <asp:Parameter Name="fwh" Type="String" />
                      <asp:Parameter Name="categories" Type="String" />
                      <asp:Parameter Name="price" Type="Int64" />
                      <asp:Parameter Name="pricedetails" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="pimage" Type="String" />
                      <asp:Parameter Name="pdishname" Type="String" />
                      <asp:Parameter Name="pimagetype" Type="String" />
                      <asp:Parameter Name="fwh" Type="String" />
                      <asp:Parameter Name="categories" Type="String" />
                      <asp:Parameter Name="price" Type="Int64" />
                      <asp:Parameter Name="pricedetails" Type="String" />
                      <asp:Parameter Name="original_pid" Type="Int64" />
                      <asp:Parameter Name="original_pimage" Type="String" />
                      <asp:Parameter Name="original_pdishname" Type="String" />
                      <asp:Parameter Name="original_pimagetype" Type="String" />
                      <asp:Parameter Name="original_fwh" Type="String" />
                      <asp:Parameter Name="original_categories" Type="String" />
                      <asp:Parameter Name="original_price" Type="Int64" />
                      <asp:Parameter Name="original_pricedetails" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>



         </div>
    </main>

    
</asp:Content>
