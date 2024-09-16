<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="LibrarySystem.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        document.title = 'Member Management';

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <div class="container-fluid">
        <div class="row">

            <!--Left side card (open)-->
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <center>
                            <!--Image-->
                            <h3>Member Details</h3>
                            <img src="images/signup.png" height="150"/>
                            <hr />
                        </center>

                        <div class="form-group">

                            <!--(Row 1) Member ID & Full Name & Account Status-->
                            <div class="row">
                                <!--Column 1-->
                                <div class="col-md-3">
                                    <label>Member ID</label>
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox>
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-primary ms-1" runat="server" Text="A" OnClick="LinkButton1_Click">
                                            <i class="fas fa-check-circle"></i>
                                        </asp:LinkButton>
                                    </div>
                                    <br />
                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>Full Name</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox> 
                                    <br />    
                                </div>

                                <!--Column 3-->
                                <div class="col-md-5">
                                    <label>Account Status</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control me-1" runat="server" ReadOnly="True"></asp:TextBox>
                                        
                                        <!-- Font-awesome Icons-->
                                        <!-- <i> tag of font-awesome will work only with asp:LinkButton -->
                                        <asp:LinkButton ID="LinkButtonB1" class="btn btn-success me-1" runat="server" Text="A" OnClick="LinkButtonB1_Click">
                                            <i class="fas fa-check-circle"></i>
                                        </asp:LinkButton>

                                        <asp:LinkButton ID="LinkButtonB2" class="btn btn-warning me-1" runat="server" Text="P" OnClick="LinkButtonB2_Click">
                                            <i class="fas fa-pause-circle"></i>
                                        </asp:LinkButton>

                                        <asp:LinkButton ID="LinkButtonB3" class="btn btn-danger me-1" runat="server" Text="D" OnClick="LinkButtonB3_Click">
                                            <i class="fas fa-times-circle"></i>
                                        </asp:LinkButton>
                                    </div>
                                    <br />    
                                </div>
                            </div>
                            <!-- Row 1 closed -->

                            <!--(Row 2) DOB & Contact No. & Email-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-3">
                                    <label>DOB</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox> 
                                    <br />    
                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>Contact Number</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>

                                <!--Column 3-->
                                <div class="col-md-5">
                                    <label>Email</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                            <!-- Row 2 closed -->

                            <!--(Row 3) State & City & Pin Code-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>State</label>
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox> 
                                    <br />    
                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>City</label>
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>

                                <!--Column 3-->
                                <div class="col-md-4">
                                    <label>Pin Code</label>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>
                            </div>
                            <!-- Row 3 closed -->

                            <!--(Row 4) Full Postal Address-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-12">
                                    <label>Full Address</label>
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" ReadOnly="True" TextMode="MultiLine"></asp:TextBox> 
                                    <br />    
                                </div>
                            </div>
                            <!-- Row 4 closed -->

                            <!--(Row 5) Adding buttons -->
                            <div class="row">
                                <div class="d-grid gap-2 col-12">
                                    <asp:Button ID="Button1" class="btn btn-danger " runat="server" Text="Delete User Permanently" OnClick="Button1_Click" />
                                </div>
                            </div> 
                            <!-- Row 5 closed -->

                        </div>
                    </div>
                </div>
            </div>
            <!--Left side card (closed)-->

            <!--Right side card (open)-->
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <center>
                            <h3>Member's List</h3>
                            <hr />
                        </center>

                        <din class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_details_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1" AllowPaging="True">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact Number" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </din>
               
                    </div>
                </div>
            </div>
            <!--Right side card (closed)-->
        </div>
    </div>
    <br />
    
</asp:Content>
