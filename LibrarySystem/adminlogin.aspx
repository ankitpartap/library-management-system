<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="LibrarySystem.adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        document.title = 'Admin Login'
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <!--Making Admin Login Page-->
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <!-- mx-auto is a Bootstrap class for centering elements -->
                <div class="card">
                    <div class="card-body">

                        <center>
                            <!--Image-->
                            <img src="images/admin.png" width="170" />
                            <h3>Admin Login</h3>
                            <hr />
                        </center>

                        <div class="form-group">

                            <!--Admin ID-->
                            <!--CssClass is important -->
                            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Admin ID" runat="server"></asp:TextBox>
                            <br />

                            <!-- Password -->
                            <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <br />


                            <!-- Adding buttons -->
                            <div class="d-grid gap-2">
                                <asp:Button ID="Button1" class="btn btn-success btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />

</asp:Content>
