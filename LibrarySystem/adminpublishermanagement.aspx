<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="LibrarySystem.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        document.title = 'Publisher Management';

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
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
                            <h3>Publisher Details</h3>
                            <img src="images/publisher.png" height="150"/>
                            <hr />
                        </center>

                        <div class="form-group">

                            <!--Row 1 (Full Name & DOB)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>Publisher ID</label>
                                    <!-- class="input-group" is used to groud two type of input as a single element -->
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox> 
                                    </div>
                                    <br />    

                                </div>

                                <!--Column 2-->
                                <div class="col-md-8">
                                    <label>Publisher name</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ></asp:TextBox>
                                    <br />
                                </div>

                            </div>

                            <!-- Adding buttons -->
                             <div class="row">
                                <div class="d-grid gap-2 col-4 mx-auto">
                                    <asp:Button ID="Button1" class="btn btn-success btn-lg " runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                                <div class="d-grid gap-2 col-4 mx-auto">
                                    <asp:Button ID="Button2" class="btn btn-primary btn-lg" runat="server" Text="Update" OnClick="Button2_Click"/>
                                </div>
                                <div class="d-grid gap-2 col-4 mx-auto">
                                    <asp:Button ID="Button3" class="btn btn-danger btn-lg" runat="server" Text="Delete" OnClick="Button3_Click"/>
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
                            <h3>Publisher List</h3>
                            <hr />
                        </center>

                        <din class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_details_tbl]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="Publisher ID" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="Publisher Name" SortExpression="publisher_name" />
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
