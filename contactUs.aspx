<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="GirlsGK.contactUs" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>mail system</title>
    <link href="css/fixed.css" rel="stylesheet" />

</head>
<body>
    <br />
    <br />
    <form id="form1" runat="server">
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

        <div class="container shadow-lg p-3 mb-5 bg-white rounded bg-light" data-spy="scroll" data-offset="0">
            <div class="row margin">
                <div class="col-md-12">
                    <center>
                        <h1><img src="img\Contact.png" alt="Alternate Text" /></h1>
                     </center>
                    <hr class="line" />
                </div>
            </div>

            <div class="row margin">
                <div class="col-md-5">
                    <asp:TextBox ID="tbname" class="form-control" placeholder="Enter your Name" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter your name" CssClass="text-danger"
                        ControlToValidate="tbname" Visible="true" runat="server" />
                </div>
            </div>

            <div class="row margin">
                <div class="col-md-5">
                    <asp:TextBox ID="tbemail" class="form-control" placeholder="Enter Your Email" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter your email" CssClass="text-danger"
                        ControlToValidate="tbemail" Visible="true" runat="server" />
                </div>
            </div>

            <div class="row margin">
                <div class="col-md-5">
                    <asp:TextBox ID="tbSubject" CssClass="form-control" placeholder="Reason for Contact" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please fill the required field" CssClass="text-danger"
                        ControlToValidate="tbSubject" Visible="true" runat="server" />
                </div>
            </div>



            <div class="row margin">
                <div class="col-md-5">
                    <asp:TextBox ID="tbmsg" class="form-control" placeholder="Enter your message here..." TextMode="MultiLine"
                        Height="80px" runat="server" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter your message here" CssClass="text-danger"
                        ControlToValidate="tbmsg" Visible="true" runat="server" />
                </div>
            </div>

            <div class="row margin">
                <div class="col-md-5">
                    <asp:TextBox ID="txtCaptcha" runat="server" Text="" />
                    <asp:RequiredFieldValidator ErrorMessage="Missing Text" CssClass="text-danger"
                        ControlToValidate="txtCaptcha" Visible="true" runat="server" />

                </div>
            </div>


            <div class="row margin">
                <div class="col-md-5">
                    <BotDetect:WebFormsCaptcha ID="CaptchaBox" runat="server" />
                </div>
            </div>

            <div class="row margin">
                <div class="col-md-5">
                    <asp:Button ID="Submit" CssClass="btn btn-primary btn-lg" Text="Submit" runat="server" OnClick="Submit_Click" />

                </div>
            </div>

            <div class="row margin">
                <div class="col-md-5">
                    <asp:Label ID="Labelmsg" Text="" runat="server" />
                </div>
            </div>





        </div>

    </form>
    
         
    <script src="https://use.fontawesome.com/releases/v5.6.1/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>--%>
  </body>
</html>
