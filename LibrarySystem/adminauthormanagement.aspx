<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="LibrarySystem.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        document.title = 'Author Management'
        //<!--function alt1() {
          //  document.getElementById("alert1");
        //}
        //function alt2() {
          //  document.getElementById("alert2");
        //}
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--<style>
        #alert1{
            display: none;
        }
    </style>

    <!--Update Success Alert
    <div id="alert1" class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Author Updated Successfully!</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    
    <!--ID not exist Alert->
    <div id="alert2" class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Author ID does not exist!</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div> -->

    <br />
    <div class="container">
        <div class="row">

            <!--Left side card (open)-->
            <div class="col-md-5">
                <!-- mx-auto is a Bootstrap class for centering elements -->
                <div class="card">
                    <div class="card-body">

                        <center>
                            <!--Image-->
                            <h3>Author Details</h3>
                            <img src="images/pic1.png" height="150" />
                            <hr />
                        </center>

                        <div class="form-group">

                            <!--Row 1 (Full Name & DOB)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>Author ID</label>
                                    <!-- class="input-group" is used to groud two type of input as a single element -->
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                                        
                                    </div>
                                    <br />

                                </div>

                                <!--Column 2-->
                                <div class="col-md-8">
                                    <label>Author name</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <!-- Adding buttons -->
                            <div class="row">
                                <div class="d-grid gap-2 col-4 mx-auto">
                                    <asp:Button ID="Button1" class="btn btn-success btn-lg " runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                                <div class="d-grid gap-2 col-4 mx-auto">
                                    <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="Update" OnClick="Button2_Click" />
                                </div>
                                <div class="d-grid gap-2 col-4 mx-auto">
                                    <asp:Button ID="Button3" class="btn btn-danger btn-lg" runat="server" Text="Delete" OnClick="Button3_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--Left side card (closed)-->

            <!--Right side card (open)-->
            <div class="col-md-7">
                <!-- <div class="col-md-5"> -->
                <!-- mx-auto is a Bootstrap class for centering elements -->
                <div class="card">
                    <div class="card-body">
                        <center>
                            <h3>Author List</h3>
                            <hr />
                        </center>

                        <din class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_details_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="Author ID" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="Author Name" SortExpression="author_name" />
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
