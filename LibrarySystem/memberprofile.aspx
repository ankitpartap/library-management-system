<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="memberprofile.aspx.cs" Inherits="LibrarySystem.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        document.title = 'Member Profile';

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container-fluid">
        <div class="row">

            <!--Left Side of Page-->
            <div class="col-md-5">
                <!-- mx-auto is a Bootstrap class for centering elements -->
                <div class="card">
                    <div class="card-body">
                        <center>

                            <!--Image-->
                            <img src="images/signup.png" width="100" />
                            <h3>Your Profile</h3>
                            <span>Account Status-</span>
                            <asp:Label ID="Label1" class="badge rounded-pill bg-info text-dark" runat="server" Text="Your status"></asp:Label>
                            <hr />
                        </center>
                        <div class="form-group">

                            <!--Row 1 (Full Name & DOB)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-6">
                                    <label>Full Name</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox> 
                                    <br />    

                                </div>

                                <!--Column 2-->
                                <div class="col-md-6">
                                    <label>DOB</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                    <br />
                                </div>

                            </div>
                            
                            
                            <!--Row 2 (Contact number & Email)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-6">
                                    <label>Contact Number</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />

                                </div>

                                <!--Column 2-->
                                <div class="col-md-6">
                                    <label>Email</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                    <br />
                                </div>

                            </div>
                            

                            <!--Row 3 (State, City, Pin Code)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>State</label>
                                    <!--CssClass is important -->
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="--Select from List--" Value="Select from List" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pardesh" Value="Himachal Pardesh" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="J & K" Value="J & K" />
                                        <asp:ListItem Text="Uttar Pardesh" Value="Uttar Pardesh" />
                                        <asp:ListItem Text="Uttrakhand" Value="Uttrakhand" />
                                        <asp:ListItem Text="Gujrat" Value="Gujrat" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharshtra" Value="Maharshtra" />
                                    </asp:DropDownList>
                                    <br />

                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>City</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <br />
                                </div>

                                <!--Column 3-->
                                <div class="col-md-4">
                                    <label>Pin Code</label>
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>

                            </div>


                            <!--Row 4 (Full Address)-->
                            <div class="row">

                                <!--Column 1-->
                                <!--class="col" means it will take all spaces-->
                                <div class="col"> 
                                    <label>Full Address</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    <br />

                                </div>
                            </div>


                            <!--Row 5 (User ID & Password & New Password)-->
                            <div class="row">
                                <center>
                                    <span class="badge bg-success">Login Credentials</span>
                                </center>
                                <br /> <br />

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>User ID</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                    <br />

                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>Old Password</label>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>
                                
                                <!--Column 3-->
                                <div class="col-md-4">
                                    <label>New Password</label>
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br />
                                </div>

                            </div>


                            <!-- Adding buttons -->
                            <div class="d-grid gap-2 col-6 mx-auto">
                                <asp:Button ID="Button1" class="btn btn-primary btn-lg " runat="server" Text="Update" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Right Side of Page-->
            <div class="col-md-7">
                <!-- <div class="col-md-5"> -->
                <!-- mx-auto is a Bootstrap class for centering elements -->
                <div class="card">
                    <div class="card-body">
                        
                        <center>

                            <!--Image-->
                            <img src="images/books.png" width="100" />
                            <h3>Your Issued Books</h3>
                            <asp:Label ID="Label2" class="badge rounded-pill bg-info text-dark" runat="server" Text="Your Books Info"></asp:Label>
                            <hr />
                        </center>

                        <din class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
                            </div>
                        </din>
               
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br />
</asp:Content>
