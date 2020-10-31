<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RainbowDynamic.aspx.cs" Inherits="GirlsGK.RainbowDynamic" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="css/fixed.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/custom-cs.css" rel="stylesheet" />
    <link rel="icon" href="img/brownielogo.jpg" />
    <title>Rainbow Admin</title>
    <!----Bootstrap--->
</head>
<body>
     <nav class="navbar navbar-expand-md navbar-dark bg-info fixed-top">
            <a class="navbar-brand" href="index.aspx">
                <img src="img/logo.png" />
            </a>
        </nav>
    <br />
    <br />
    <br />
    <br />
    <br />
    <form id="simpleForm" class="bg-white" runat="server">
        <br />
        <br />
        <br />
        <div class="container shadow-lg p-5 mb-auto bg-white rounded bg-light" data-spy="scroll" data-offset="0">
            <div class="row margin">
                <div class="col-md-12">
                    <center>
                        <h1><img src="img\Rainbowdyn.png" alt="Alternate Text" /></h1>
                     </center>
                    <hr class="line" />
                </div>
            </div>
            <!---Title--->
            <div class="col-md-5">
                <asp:TextBox ID="tbtitle" class="form-control" placeholder="Enter your Title" runat="server" />
                <asp:RequiredFieldValidator ErrorMessage="Please Enter your Name" CssClass="text-danger"
                    ControlToValidate="tbtitle" Visible="true" runat="server" />
            </div>
            <!--Images--->

            <div class="col-md-5">
                <asp:FileUpload ID="Fileimgsave" runat="server" Height="20px" Width="479px" />
            </div>
            <!----Calender start--->
            <div class="col-md-5">
                <asp:TextBox type="date" ID="txtDate" runat="server" BackColor="#99CCFF"
                    BorderColor="Blue" BorderStyle="Solid" Width="479px"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="Missing the field" CssClass="text-danger"
                    ControlToValidate="txtDate" Visible="true" runat="server" />
            </div>
            <!----Calender End--->
            <div class="col-1">
                <asp:TextBox ID="tbdesc" class="form-control" placeholder="Enter Description" TextMode="MultiLine"
                    Height="362px" runat="server" Width="1000px" BorderStyle="Solid" />
                <asp:RequiredFieldValidator ErrorMessage="Enter Description here..." CssClass="text-danger"
                    ControlToValidate="tbdesc" Visible="true" runat="server" />
            </div>

            <div class="col-md-5">
                <asp:Button Text="Add" type="Button" CssClass="btn btn-primary" runat="server" OnClick="Add_Click" Width="170px" />
                &nbsp;&nbsp;
              <asp:Button CssClass="btn btn-primary" Text="Logout" runat="server" CausesValidation="false" OnClick="logout_Session" />
                &nbsp;&nbsp;
              <asp:Button CssClass="btn btn-primary" Text="Update" runat="server" CausesValidation="false" OnClick="Unnamed5_Click" />
            </div>
            <div class="col-md-5">
                <asp:Label ID="lblmsg" runat="server" />
            </div>
        </div>

        <br />
        <br />
        <br />
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>
