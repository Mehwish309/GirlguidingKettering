<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="GirlsGK.signin" %>

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
    <title>Sign In</title>

</head>
<br />
<br />

<body class="center">
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
    <br />
    <form class="form-signin" runat="server">
        <div class="container center shadow-lg p-3 mb-5 bg-white rounded bg-light" data-spy="scroll" data-offset="0">

            <div class="row margin">
                <div class="col-md-12">
                    <center>
                        <h1><img src="img\signin.png" alt="Alternate Text" /></h1>
                     </center>
                    <hr class="line" />
                </div>
            </div>


            <!---Email--->
            <div class="row margin">
                <div class="mb-3 col-md-5" style="text-align:center">                    
                     <asp:TextBox ID="tbusername" class="form-control" placeholder="Enter your Username" runat="server" />
                     <asp:RequiredFieldValidator ErrorMessage="Please Enter your Username" CssClass="text-danger"
                        ControlToValidate="tbusername" Visible="true" runat="server" />                                      
                </div>
            </div>
            <!----Password---->
            <div class="row margin">
                <div class="col-md-5">
                    <asp:TextBox ID="tbpwd" class="form-control" TextMode="Password" placeholder="Enter your Password" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter your Password" CssClass="text-danger"
                        ControlToValidate="tbpwd" Visible="true" runat="server" />
                </div>
            </div>


            <div class="checkbox mb-3">
                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me "></asp:Label>
            </div>
            <!---Button--->
            <div class="row margin">
                <div class="col-md-5">
                    <asp:Button ID="btSignin" runat="server" Class="center btn b btn-info w-25" Text="SignIn" OnClick="btSignin_Click"/>
                </div>
            </div>
            <asp:Label ID="lblerr" runat="server" CssClass="control-label" Text=""></asp:Label>

        </div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
