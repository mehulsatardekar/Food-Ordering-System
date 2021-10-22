<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="hotelproductadd.aspx.cs" Inherits="WebApplication1.ADMIN.hotelproductadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main class="m-wrapper">
         <div class="container-fluid">
                   <div class="container col-12">
                        <div class="row">
                          <div class="col-lg-4">
                                <div class="">
                                        <div class=" text-center pt-3">
                                           <h3>ADD HOTEL  VIEW CONTENT DETAILS</h3>
                                           <hr/>
                                        </div>
                                        <div class="col-8 mx-auto">
                                           <div class="form-group">
                                           <label for="exampleDropdownFormEmail1">ADD Food IMAGE</label>
                                               <asp:FileUpload ID="FileUpload1" runat="server" />
                                           <p class="font-weight-light">Add food content type image. (it will be non veg or veg or other.) </p>

                                           </div>                                                          
                                            <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">ADD DISH NAME</label>
                                                <asp:TextBox ID="dishname" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="font-weight-light">Add dish name. (use first word of every character capital letter.) </p>

                                            </div>
                                            <div class="form-group">
                                           <label for="exampleDropdownFormEmail1">ADD Food Type IMAGE</label>
                                               <asp:FileUpload ID="FileUpload2" runat="server" />
                                           <p class="font-weight-light">Add food content type image. (it will be non veg or veg or other.) </p>

                                           </div>                                                          
                                           
                                            <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">ADD DISH PRICE</label>
                                                <asp:TextBox ID="dishprice" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="font-weight-light">Add dish PRICE. (it must have integer value example it should'nt have any other value.:300 ) </p>
                                            </div>
                                              <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">Food from hotel</label>
                                                 <asp:TextBox ID="ffwh" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="font-weight-light">Add hotel name. (Add hotel name to determine the food is from which hotel.) </p>
                                            </div>
                                           
                                             <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">ADD HOTEL DISH TYPE</label>
                                                 <asp:TextBox ID="dishtype" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="font-weight-light">Add dish type non veg or veg or other (it only contain one value from this.) </p>
                                            </div>
                                             <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">ADD Hotel Id </label>
                                                <asp:TextBox ID="hotelid" class="form-control text-uppercase" runat="server"></asp:TextBox>
                                            <p class="font-weight-light">Add Hotel id. (Note! this id is refering to parent tables be careful to add content. ) </p>
                                            </div>
                                           
                                            
                                            <div class="form-group">
                                                <asp:Button ID="Button4" class="btn btn-primary" runat="server" Text="ADD DISH" OnClick="Button4_Click" />
                                            </div>
                                        </div>
                                         
                                        
                                    </div>
                          </div>
                          
                          <div class="col-lg-4">
                                <div class="">
                                        <div class=" text-center pt-3">
                                           <h3>DELETE HOTEL DISHESH CONTENT DETAILS</h3>
                                           <hr/>
                                        </div>
                                        <div class="col-8 mx-auto">
                                            <div class="form-group">
                                            <label for="exampleDropdownFormEmail1">DELETE HOTEL DISHESH BY SELECTING</label>
                                            <div class="dropdown">
                                                <asp:DropDownList ID="DropDownList4" Width="220" Height="35" runat="server"></asp:DropDownList>
                                                    </div> 
                                        </div>
                                       
                                                        
                                            <div class="form-group">
                                                <asp:Button ID="Button5" class="btn btn-primary" runat="server" Text="Delete dish" OnClick="Button5_Click" />
                                            </div>
                                        </div>
                                         
                                        
                                    </div>
                          </div>   
                            

                           

 
                        </div>
  <hr style="border:0; border-top:3px double #88cc88;"/>
          <h1>Locations List </h1>
           
                       <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover thead-dark" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="locationid" DataSourceID="locationadd" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                           <AlternatingRowStyle BackColor="#CCCCCC" />
                           <Columns>
                               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                               <asp:BoundField DataField="locationid" HeaderText="locationid" InsertVisible="False" ReadOnly="True" SortExpression="locationid" />
                               <asp:BoundField DataField="loctionname" HeaderText="loctionname" SortExpression="loctionname" />
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



                        <asp:SqlDataSource ID="locationadd" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [locationlists] WHERE [locationid] = @original_locationid AND [loctionname] = @original_loctionname" InsertCommand="INSERT INTO [locationlists] ([loctionname]) VALUES (@loctionname)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [locationlists]" UpdateCommand="UPDATE [locationlists] SET [loctionname] = @loctionname WHERE [locationid] = @original_locationid AND [loctionname] = @original_loctionname">
                            <DeleteParameters>
                                <asp:Parameter Name="original_locationid" Type="Int64" />
                                <asp:Parameter Name="original_loctionname" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="loctionname" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="loctionname" Type="String" />
                                <asp:Parameter Name="original_locationid" Type="Int64" />
                                <asp:Parameter Name="original_loctionname" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>



          <h1>Hotels List Table. (HOTEL VIEW)</h1>
                       <asp:GridView ID="GridView3" runat="server" CssClass="table table-bordered table-hover thead-dark" AutoGenerateColumns="False" DataKeyNames="hotelid" DataSourceID="hotellist">
                           <Columns>
                               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                               <asp:BoundField DataField="hotelid" HeaderText="hotelid" InsertVisible="False" ReadOnly="True" SortExpression="hotelid" />
                               <asp:BoundField DataField="hotelimage" HeaderText="hotelimage" SortExpression="hotelimage" />
                               <asp:BoundField DataField="hotelname" HeaderText="hotelname" SortExpression="hotelname" />
                               <asp:BoundField DataField="hoteltype" HeaderText="hoteltype" SortExpression="hoteltype" />
                               <asp:BoundField DataField="hotelratings" HeaderText="hotelratings" SortExpression="hotelratings" />
                               <asp:BoundField DataField="hoteloffer" HeaderText="hoteloffer" SortExpression="hoteloffer" />
                               <asp:BoundField DataField="hoteldeliverytime" HeaderText="hoteldeliverytime" SortExpression="hoteldeliverytime" />
                               <asp:BoundField DataField="locationid" HeaderText="locationid" SortExpression="locationid" />
                               <asp:BoundField DataField="hotelprice" HeaderText="hotelprice" SortExpression="hotelprice" />
                           </Columns>
                        </asp:GridView>

                        <asp:SqlDataSource ID="hotellist" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [hotelpage] WHERE [hotelid] = @original_hotelid AND [hotelimage] = @original_hotelimage AND [hotelname] = @original_hotelname AND [hoteltype] = @original_hoteltype AND [hotelratings] = @original_hotelratings AND (([hoteloffer] = @original_hoteloffer) OR ([hoteloffer] IS NULL AND @original_hoteloffer IS NULL)) AND [hoteldeliverytime] = @original_hoteldeliverytime AND [locationid] = @original_locationid AND [hotelprice] = @original_hotelprice" InsertCommand="INSERT INTO [hotelpage] ([hotelimage], [hotelname], [hoteltype], [hotelratings], [hoteloffer], [hoteldeliverytime], [locationid], [hotelprice]) VALUES (@hotelimage, @hotelname, @hoteltype, @hotelratings, @hoteloffer, @hoteldeliverytime, @locationid, @hotelprice)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [hotelpage]" UpdateCommand="UPDATE [hotelpage] SET [hotelimage] = @hotelimage, [hotelname] = @hotelname, [hoteltype] = @hoteltype, [hotelratings] = @hotelratings, [hoteloffer] = @hoteloffer, [hoteldeliverytime] = @hoteldeliverytime, [locationid] = @locationid, [hotelprice] = @hotelprice WHERE [hotelid] = @original_hotelid AND [hotelimage] = @original_hotelimage AND [hotelname] = @original_hotelname AND [hoteltype] = @original_hoteltype AND [hotelratings] = @original_hotelratings AND (([hoteloffer] = @original_hoteloffer) OR ([hoteloffer] IS NULL AND @original_hoteloffer IS NULL)) AND [hoteldeliverytime] = @original_hoteldeliverytime AND [locationid] = @original_locationid AND [hotelprice] = @original_hotelprice">
                            <DeleteParameters>
                                <asp:Parameter Name="original_hotelid" Type="Int64" />
                                <asp:Parameter Name="original_hotelimage" Type="String" />
                                <asp:Parameter Name="original_hotelname" Type="String" />
                                <asp:Parameter Name="original_hoteltype" Type="String" />
                                <asp:Parameter Name="original_hotelratings" Type="String" />
                                <asp:Parameter Name="original_hoteloffer" Type="String" />
                                <asp:Parameter Name="original_hoteldeliverytime" Type="String" />
                                <asp:Parameter Name="original_locationid" Type="Int64" />
                                <asp:Parameter Name="original_hotelprice" Type="Int64" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="hotelimage" Type="String" />
                                <asp:Parameter Name="hotelname" Type="String" />
                                <asp:Parameter Name="hoteltype" Type="String" />
                                <asp:Parameter Name="hotelratings" Type="String" />
                                <asp:Parameter Name="hoteloffer" Type="String" />
                                <asp:Parameter Name="hoteldeliverytime" Type="String" />
                                <asp:Parameter Name="locationid" Type="Int64" />
                                <asp:Parameter Name="hotelprice" Type="Int64" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="hotelimage" Type="String" />
                                <asp:Parameter Name="hotelname" Type="String" />
                                <asp:Parameter Name="hoteltype" Type="String" />
                                <asp:Parameter Name="hotelratings" Type="String" />
                                <asp:Parameter Name="hoteloffer" Type="String" />
                                <asp:Parameter Name="hoteldeliverytime" Type="String" />
                                <asp:Parameter Name="locationid" Type="Int64" />
                                <asp:Parameter Name="hotelprice" Type="Int64" />
                                <asp:Parameter Name="original_hotelid" Type="Int64" />
                                <asp:Parameter Name="original_hotelimage" Type="String" />
                                <asp:Parameter Name="original_hotelname" Type="String" />
                                <asp:Parameter Name="original_hoteltype" Type="String" />
                                <asp:Parameter Name="original_hotelratings" Type="String" />
                                <asp:Parameter Name="original_hoteloffer" Type="String" />
                                <asp:Parameter Name="original_hoteldeliverytime" Type="String" />
                                <asp:Parameter Name="original_locationid" Type="Int64" />
                                <asp:Parameter Name="original_hotelprice" Type="Int64" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

               <hr style="border:0; border-top:3px double #88cc88;"/>
          <h1>Hotels Products List Table.</h1>
                       <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered table-hover thead-dark" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="hotelproductlist">
                           <Columns>
                               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                               <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                               <asp:BoundField DataField="dishimage" HeaderText="dishimage" SortExpression="dishimage" />
                               <asp:BoundField DataField="dishname" HeaderText="dishname" SortExpression="dishname" />
                               <asp:BoundField DataField="dishimagetype" HeaderText="dishimagetype" SortExpression="dishimagetype" />
                               <asp:BoundField DataField="dishprice" HeaderText="dishprice" SortExpression="dishprice" />
                               <asp:BoundField DataField="fwhotel" HeaderText="fwhotel" SortExpression="fwhotel" />
                               <asp:BoundField DataField="foodtype" HeaderText="foodtype" SortExpression="foodtype" />
                               <asp:BoundField DataField="hotelid" HeaderText="hotelid" SortExpression="hotelid" />
                           </Columns>
                        </asp:GridView>

                        <asp:SqlDataSource ID="hotelproductlist" runat="server" ConnectionString="<%$ ConnectionStrings:zeplinConnectionString %>" DeleteCommand="DELETE FROM [hotelproducts] WHERE [id] = @id" InsertCommand="INSERT INTO [hotelproducts] ([dishimage], [dishname], [dishimagetype], [dishprice], [fwhotel], [foodtype], [hotelid]) VALUES (@dishimage, @dishname, @dishimagetype, @dishprice, @fwhotel, @foodtype, @hotelid)" SelectCommand="SELECT * FROM [hotelproducts]" UpdateCommand="UPDATE [hotelproducts] SET [dishimage] = @dishimage, [dishname] = @dishname, [dishimagetype] = @dishimagetype, [dishprice] = @dishprice, [fwhotel] = @fwhotel, [foodtype] = @foodtype, [hotelid] = @hotelid WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int64" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="dishimage" Type="String" />
                                <asp:Parameter Name="dishname" Type="String" />
                                <asp:Parameter Name="dishimagetype" Type="String" />
                                <asp:Parameter Name="dishprice" Type="Int64" />
                                <asp:Parameter Name="fwhotel" Type="String" />
                                <asp:Parameter Name="foodtype" Type="String" />
                                <asp:Parameter Name="hotelid" Type="Int64" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="dishimage" Type="String" />
                                <asp:Parameter Name="dishname" Type="String" />
                                <asp:Parameter Name="dishimagetype" Type="String" />
                                <asp:Parameter Name="dishprice" Type="Int64" />
                                <asp:Parameter Name="fwhotel" Type="String" />
                                <asp:Parameter Name="foodtype" Type="String" />
                                <asp:Parameter Name="hotelid" Type="Int64" />
                                <asp:Parameter Name="id" Type="Int64" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                      </div>

             </div>
         </main>
</asp:Content>
