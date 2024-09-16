<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="LibrarySystem.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        document.title = "Nalanda - Let's Become a Leader"
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- First section of the homepage-->
    <section>
        <!-- where image is to be added -->
        <img src="images/nalanda.png" class="img-fluid" height="150" />
        <!-- <video src="" class="fluid"></video> -->
        <!--class="img-fluid" make width= 100%-->
    </section>
    <br />
    <h2>
        <marquee>Welcome to Nalanda! Grab a book & upgrade your knowledge to become a Leader</marquee>
    </h2>

    <!-- Second section of the homepage-->
    <section>
        <div class="container">
            <!--Row 1-->
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Primary Features</b></p>
                    </center>
                </div>
            </div>

            <!--Row 2-->
            <div class="row">
                <!--here md stand for medium devices (for responsiveness). md defines a breakpoint after which this one division will occupied the enitre row-->
                <!--Column 1-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <center>
                                <img width="150" src="images/inventry.png" />
                                <h3>Digital Inventory</h3>
                                <p class="text-justify">We have huge stock of books, in paper & digital format</p>
                            </center>
                        </div>
                    </div>
                </div>

                <!--Column 2-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <center>
                                <img src="images/serch.png" width="150" />
                                <h3>Search</h3>
                                <p class="text-justify">Here you can search any book in E-Library. Go check it out which book you require</p>
                            </center>
                        </div>
                    </div>
                </div>

                <!--Column 3-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <center>
                                <img src="images/alert.png" width="150" />
                                <h3>Our Policy</h3>
                                <p class="text-justify">We have some policies which every user have to follow. Zero Tolarance is priority</p>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br />
    <hr />

    <!-- 3rd section of the homepage-->
    <section>
        <div class="container">
            <!--Row 1-->
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <p><b>We have 3 simple steps to begin</b></p>
                    </center>
                </div>
            </div>

            <!--Row 2-->
            <div class="row">
                <!--here md stand for medium devices (for responsiveness). md defines a breakpoint after which this one division will occupied the enitre row-->
                <!--Column 1-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <center>
                                <img src="images/signup.png" width="150" />
                                <h3>SignUp</h3>
                                <p class="text-justify">To get the access to all books in this E-Library, you have to sign up.</p>
                            </center>
                        </div>
                    </div>
                </div>

                <!--Column 2-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <center>
                                <img src="images/serch.png" width="150" />
                                <h3>Search</h3>
                                <p class="text-justify">Here you can search any book in E-Library. Go check it out which book you require</p>
                            </center>
                        </div>
                    </div>
                </div>

                <!--Column 3-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <center>
                                <img src="images/library.png" width="150" />
                                <h3>Visit Us</h3>
                                <p class="text-justify">Just confirm the opening timing before you plan a visit.</p>
                            </center>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
        </div>
    </section>

</asp:Content>

