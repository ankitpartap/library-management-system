<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membersignup.aspx.cs" Inherits="LibrarySystem.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        document.title = 'Member SignUp'
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <center>
        <marquee>
            <h1>Hello Friends! SignUp kr lo!</h1></marquee>
    </center>
    <!--Making Admin Login Page-->
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <!-- mx-auto is a Bootstrap class for centering elements -->
                <div class="card">
                    <div class="card-body">
                        <center>

                            <!--Image-->
                            <img src="images/signup.png" width="100" />
                            <h3>Member SignUp</h3>
                            <hr />
                        </center>
                        <div class="form-group">

                            <!--Row 1 (Full Name & DOB)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-6">
                                    <label>Full Name</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />

                                </div>

                                <!--Column 2-->
                                <div class="col-md-6">
                                    <label>DOB</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </div>
                            
                            
                            <!--Row 2 (Contact number & Email)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-6">
                                    <label>Contact Number</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />

                                </div>

                                <!--Column 2-->
                                <div class="col-md-6">
                                    <label>Email</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox4" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
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
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                    
                                    <br />

                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>City</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>

                                <!--Column 3-->
                                <div class="col-md-4">
                                    <label>Pin Code</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Number" MaxLength="6"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>

                            </div>


                            <!--Row 4 (Full Address)-->
                            <div class="row">

                                <!--Column 1-->
                                <!--class="col" means it will take all spaces-->
                                <div class="col"> 
                                    <label>Address</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />

                                </div>
                            </div>


                            <!--Row 5 (User ID & Password)-->
                            <div class="row">
                                <center>
                                    <span class="badge bg-primary">Login Credentials</span>
                                </center>
                                <br /> <br />

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>Member ID</label>
                                    <!--CssClass is important -->
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>Password</label>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>

                                <!--Column 3-->
                                <div class="col-md-4">
                                    <label>Confirm Password</label>
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                                    <br />
                                </div>

                            </div>


                            <!-- Adding buttons -->
                            <div class="d-grid gap-2">
                                <asp:Button ID="Button1" class="btn btn-success " OnClick="Button1_Click" runat="server" Text="Sign Up" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />

</asp:Content>
