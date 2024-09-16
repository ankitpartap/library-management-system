<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="LibrarySystem.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        document.title = 'Issuing New Books';

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
                <!-- mx-auto is a Bootstrap class for centering elements -->
                <div class="card">
                    <div class="card-body">
                        <center>
                            <!--Image-->
                            <h3>Book Issuing</h3>
                            <img src="images/books.png" height="150"/>
                            <hr />
                        </center>
                        <div class="form-group">

                            <!--(Row 1) Member & Book ID-->
                            <div class="row">
                                <!--Column 1-->
                                <div class="col-md-6">
                                    <label>Member ID</label>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox> 
                                    <br />    

                                </div>

                                <!--Column 2-->
                                <div class="col-md-6">
                                    <label>Book ID</label>
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ></asp:TextBox>
                                    <asp:Button ID="Button4" class="btn btn-dark" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                    <br />
                                </div>
                            </div>

                            <!--(Row 2) Memeber & Book Name-->
                            <div class="row">
                                <!--Column 1-->
                                <div class="col-md-6">
                                    <label>Member Name</label>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox> 
                                    <br />    

                                </div>

                                <!--Column 2-->
                                <div class="col-md-6">
                                    <label>Book Name</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <!--(Row 3) Issue & Return Date-->
                            <div class="row">
                                <!--Column 1-->
                                <div class="col-md-6">
                                    <label>Issue Date</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox> 
                                    <br />    

                                </div>

                                <!--Column 2-->
                                <div class="col-md-6">
                                    <label>Return Date</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <!--(Row 4) Adding buttons -->
                            <div class="row">
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <asp:Button ID="Button1" class="btn btn-primary " runat="server" Text="Issue" OnClick="Button1_Click" />
                                </div>
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <asp:Button ID="Button2" class="btn btn-success " runat="server" Text="Return" OnClick="Button2_Click" />
                                </div>
                            </div> 

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
                            <h3>Issued Book List</h3>
                            <hr />
                        </center>

                        <din class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
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
