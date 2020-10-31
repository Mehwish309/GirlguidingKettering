<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Brownie.aspx.cs" Inherits="GirlsGK.Brownie" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
 <link rel="icon" href="img/brownielogo.jpg" />
    <title>Brownies (7-10) | Girlguiding</title>
</head>
<body class="bg-dark">
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-md navbar-dark bg-info fixed-top">
            <a class="navbar-brand" href="index.aspx">

                <img src="img/logo.png" />
            </a>
        </nav>
        <div class="container bg-dark">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <h1 style="color: aqua">Welcome To Brownie Kettering</h1>
            <h3 style="color: aqua">All Latest Announcement & News are added here</h3>
        </div>
        <div>
            <div class="container shadow-lg p-5 mb-auto rounded bg-light" data-spy="scroll"
                data-offset="0" style="text-align: center">
                    <div class="text-center">
                        <asp:ListView ID="LVBrownie" runat="server">
                            <ItemTemplate>
                            <div class="container bg-white shadow-sm">
                                <table width="100%">
                                        <tr align="center">
                                            <td>
                                                <h1 style="color: brown"><%# Eval("Title") %></h1>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h4 style="color: aqua">Date:&nbsp<%# Eval("Date","{0:dd/M/yyyy}") %></h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <h1 style="color:beige">
                                                    <img src="ImagePath/<%# Eval("Image") %>" style="border:solid"; width="150" height="220" /></h1>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <p><%# Eval("Description") %></p>
                                            </td>
                                        </tr>
                                    </table>
                                    <hr style="color:blue"/>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <asp:PlaceHolder ID="itemPlaceholder" runat="server"></asp:PlaceHolder>
                            </LayoutTemplate>
                        </asp:ListView>
                    
                </div>
                <br />
                <br />

                <a href="DashboardBrownie.aspx" style="color: aqua">Back To Dashboard</a>
            </div>
        </div>



        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConn %>" SelectCommand="SELECT * FROM [BrownieActivity]"></asp:SqlDataSource>
    </form>
</body>

</html>
