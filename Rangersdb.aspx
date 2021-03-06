﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rangersdb.aspx.cs" Inherits="GirlsGK.Rangersdb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="css/fixed.css" rel="stylesheet" />


    <link href="Content/custom-cs.css" rel="stylesheet" />
    <link rel="icon" href="img/brownielogo.jpg" />
        <title>Rangers & YoungLeaders</title>


</head>
<body class="center">
    <form id="simpleForm" class="bg-light" runat="server">
         <nav class="navbar navbar-expand-md navbar-dark bg-info fixed-top">
            <a class="navbar-brand" href="index.aspx">

                <img src="img/logo.png" />
            </a>
        </nav>
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <br />
        <br />
        <br />
               <h1 style="color:darkred">Rangers and Young Leader</h1>
               <asp:GridView ID="gvRangers" runat="server" AutoGenerateColumns="False" BackColor="White"
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                    GridLines="Vertical" 
                    OnRowCancelingEdit="gvRangers_RowCancelingEdit"
                    OnRowEditing="gvRangers_RowEditing"
                    OnRowUpdating="gvRangers_RowUpdating"
                    ShowFooter="True" 
                    OnRowDeleting="gvRangers_RowDeleting" Width="1077px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField HeaderText="User Id">
                            <EditItemTemplate>
                                <asp:Label ID="lbluserid" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbluserid1" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Image">
                            <EditItemTemplate>
                                <asp:Label ID="txtimg" runat="server" Text='<%# Eval("Image") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblimg" runat="server" Text='<%# Eval("Image") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Title">
                            <EditItemTemplate>
                                <asp:TextBox ID="txttitle" runat="server" Text='<%# Eval("title") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lbltitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdate" type="date" runat="server" Text='<%# Bind("date", "{0:dd/MM/yyyy}") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ErrorMessage="Please select date" CssClass="text-danger"
                            ControlToValidate="txtdate" Visible="true" runat="server" />
                            </EditItemTemplate>                            
                            <ItemTemplate>
                                <asp:Label ID="lbldate" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdesc" runat="server" Text='<%# Eval("description") %>'></asp:TextBox>
                            </EditItemTemplate>                            
                            <ItemTemplate>
                                <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Operation">
                            <EditItemTemplate>
                                <asp:LinkButton ID="lnbtnupdate" runat="server" CommandName="update">Update</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="lnkbtncancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                            </EditItemTemplate>                            
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnedit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="lnkbtndelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
&nbsp;<asp:Label ID="Label8" runat="server"></asp:Label>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConn %>" SelectCommand="SELECT * FROM [RangersActivity]"></asp:SqlDataSource>
                </center>
        
            <a href="RangersDynamic.aspx">Back To Admin Page</a>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
