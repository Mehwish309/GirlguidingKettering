<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="GirlsGK.RegistrationForm" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/custom-cs.css" rel="stylesheet" />
    <link rel="icon" href="img/brownielogo.jpg" />
</head>
<body>
    <div id="home">
        <nav class="navbar navbar-expand-md navbar-dark bg-info fixed-top">
            <a class="navbar-brand" href="index.aspx">

                <img src="img/logo.png" />
            </a>
        </nav>
    </div>
    <br />
    <br />
    <br />
    <br />


    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <div class="container">
            <div class="container shadow-lg p-3 mb-5 bg-white rounded bg-light" data-spy="scroll" data-offset="0">

                <!----Heding---->
                <div class="row margin">
                    <div class="col-md-12">
                        <center>
                            <h1><img src="img\Register.png" alt="Alternate Text" /></h1>
                            <hr class="line" />
                        </center>
                    </div>
                </div>

                <!----UserName---->
                <div class="row margin">
                    <div class="col-md-5">
                        <asp:TextBox ID="tbUname" class="form-control" placeholder="Enter your Username" runat="server" />
                        <asp:RequiredFieldValidator ErrorMessage="Please Enter your Name" CssClass="text-danger"
                            ControlToValidate="tbUname" Visible="true" runat="server" />
                    </div>
                </div>


                <!----Name---->
                <div class="row margin">
                    <div class="col-md-5">
                        <asp:TextBox ID="tbname" class="form-control" placeholder="Enter your Name" runat="server" />
                        <asp:RequiredFieldValidator ErrorMessage="Please Enter your Name" CssClass="text-danger"
                            ControlToValidate="tbname" Visible="true" runat="server" />
                    </div>
                </div>


                <!----Email---->
                <div class="row margin">
                    <div class="col-md-5">
                        <asp:TextBox ID="tbemail" class="form-control" placeholder="Enter your Email" runat="server" />
                        <asp:RequiredFieldValidator ErrorMessage="Please Enter your Email" CssClass="text-danger"
                            ControlToValidate="tbemail" Visible="true" runat="server" />
                    </div>
                </div>

                <!----Password---->

                <div class="row margin">
                    <div class="col-md-5">
                        <asp:TextBox ID="tbpwd" class="form-control" placeholder="Enter your Password" TextMode="Password" runat="server" />
                        <asp:RequiredFieldValidator ErrorMessage="Please enter your Password" CssClass="text-danger"
                            ControlToValidate="tbpwd" Visible="true" runat="server" />
                    </div>
                </div>
                <!----Confirm PAssword---->
                <div class="row margin">
                    <div class="col-md-5">
                        <asp:TextBox ID="tbCpwd" class="form-control" placeholder="Re-type your Password" TextMode="Password" runat="server" />
                        <asp:RequiredFieldValidator ErrorMessage="Re-type your Password" CssClass="text-danger"
                            ControlToValidate="tbCpwd" Visible="true" runat="server" />
                    </div>
                </div>

                <!----Unit---->
                <div class="row margin">
                    <div class="col-md-5">
                        <asp:TextBox ID="tbunit" class="form-control" placeholder="Enter your unit name" runat="server" />
                        <asp:RequiredFieldValidator ErrorMessage="Select your Unit Name" CssClass="text-danger"
                            ControlToValidate="tbunit" Visible="true" runat="server" />
                    </div>
                </div>

                <br />


                <!-----Register Button--->
                <div class="row margin">
                    <div class="col-md-5">
                        <asp:Button ID="submit" CssClass="btn btn-primary btn-lg" Text="Register" runat="server" OnClick="Submit_Click" />
                    </div>
                </div>

                <!-----SignIn Button--->


                <!----Label---->
                <div class="row margin">
                    <div class="col-md-5">
                        <asp:Label ID="lblmsg" Text="" runat="server" />
                    </div>
                </div>

                <a href="AdminDashboard.aspx" style="color:darkgreen">Back to Admin Page</a>

            </div>
        </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
