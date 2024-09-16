<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="LibrarySystem.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        document.title = 'Book Inventory';

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
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
                            <h3>Book Details</h3>
                            <img id="imgview" src="book_inventory/books.png" height="150" />
                        </center>
                        <hr />

                        <div class="form-group">

                            <!--Row 1 (File Upload)-->
                            <div class="row">
                                <div class="col-md-12 mb-4">
                                    <asp:FileUpload onchange="readURL(this);" ID="FileUpload1" CssClass="form-control" runat="server" />
                                </div>
                            </div>

                            <!--Row 2 (Book ID & Book Name)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>Book ID</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button4" class="btn btn-dark" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                    <br />
                                </div>

                                <!--Column 2-->
                                <div class="col-md-8">
                                    <label>Book name</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <!--Row 3 (Language & Author name & Publish Date)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>Language</label>
                                    <div class="form-group mb-3">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                                            <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                            <asp:ListItem Text="Punjabi" Value="Punjabi"></asp:ListItem>
                                            <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                            <asp:ListItem Text="Urdu" Value="Urdu"></asp:ListItem>
                                            <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                            <asp:ListItem Text="German" Value="German"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <br />
                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>Author Name</label>
                                    <div class="form-group mb-3">
                                        <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                                            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                                            <asp:ListItem Text="A1" Value="A1"></asp:ListItem>
                                            <asp:ListItem Text="A2" Value="A2"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <br />
                                </div>

                                <!-- Column 3-->
                                <div class="col-md-4">
                                    <label>Publish Date</label>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                                <!--Row 4-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Genre</label>
                                            <div class="form-group mb-3">
                                                <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server" SelectionMode="Multiple" Rows="5">
                                                    <asp:ListItem Text="Happiness" Value="Happiness"></asp:ListItem>
                                                    <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                                    <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                                    <asp:ListItem Text="Romantic" Value="Romantic"></asp:ListItem>
                                                    <asp:ListItem Text="Sic-Fi" Value="Sic-Fi"></asp:ListItem>
                                                    <asp:ListItem Text="Comedy" Value="Comedy"></asp:ListItem>
                                                    <asp:ListItem Text="Self-Help" Value="Self-Help"></asp:ListItem>
                                                    <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                                    <asp:ListItem Text="Mystery" Value="Mystery"></asp:ListItem>
                                                    <asp:ListItem Text="Autobiography" Value="Autobiography"></asp:ListItem>
                                                    <asp:ListItem Text="Biography" Value="Biography"></asp:ListItem>
                                                    <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                                                    <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                                </asp:ListBox>
                                            </div>
                                        </div>
                                    </div>

                            

                            <!--Row 5 (Edition & Book Cost & Pages)-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-md-4">
                                    <label>Edition</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                                    <br />
                                </div>

                                <!--Column 2-->
                                <div class="col-md-4">
                                    <label>Book Cost</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>

                                <!--Column 3-->
                                <div class="col-md-4">
                                    <label>Pages</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <!--Row 6 (Actual Stock & Current Stock & Issued Books)-->
                            <div class="row">

                                <!--Column 1 (Actual Stock)-->
                                <div class="col-md-4">
                                    <label>Actual Stock</label>
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>

                                <!--Column 2 (Current Stock)-->
                                <div class="col-md-4">
                                    <label>Current Stock</label>
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>

                                <!--Column 3 (Issued Books0-->
                                <div class="col-md-4">
                                    <label>Issued books</label>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <!--(Row 7) Book Description-->
                            <div class="row">

                                <!--Column 1-->
                                <div class="col-12">
                                    <label>Book Description</label>
                                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" TextMode="MultiLine">
                                    </asp:TextBox>
                                    <br />
                                </div>
                            </div>

                            <!-- Row 8 (Add & Update & Delete Buttons) -->
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
                            <h3>List of Books</h3>
                            <hr />
                        </center>

                        <din class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_details_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <!--grid view-->
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" ReadOnly="True" SortExpression="book_id" >
                                        
                                        <ControlStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <!--For details-->
                                                        <div class="col-lg-10">
                                                            <!--For Book Title-->
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <!--For Details-->
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Author -
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language -
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <!--For Details-->
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    &nbsp;| Publish Date -
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publisher_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <!--For Details-->
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Cost -
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Total Books -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available Books -
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                            <!--For Description-->
                                                            <div class="row">
                                                                <div class="col-12">

                                                                    Description -
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <!--For image-->
                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" class="img-fluid p-2" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </din>

                    </div>
                </div>
            </div>
            <!--Left side card (closed)-->

        </div>
    </div>
    <br />

</asp:Content>
