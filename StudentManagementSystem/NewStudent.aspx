﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewStudent.aspx.cs" Inherits="StudentManagementSystem.NewStudent" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>    
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br/>
    <asp:Button ID="Button1" runat="server" Text="Register Student" />
</asp:Content>
