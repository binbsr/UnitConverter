<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllStudents.aspx.cs" Inherits="StudentManagementSystem.AllStudents" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <footerstyle backcolor="#F7DFB5" forecolor="#8C4510" />
        <headerstyle backcolor="#A55129" font-bold="True" forecolor="White" />
        <pagerstyle forecolor="#8C4510" horizontalalign="Center" />
        <rowstyle backcolor="#FFF7E7" forecolor="#8C4510" />
        <selectedrowstyle backcolor="#738A9C" font-bold="True" forecolor="White" />
        <sortedascendingcellstyle backcolor="#FFF1D4" />
        <sortedascendingheaderstyle backcolor="#B95C30" />
        <sorteddescendingcellstyle backcolor="#F1E5CE" />
        <sorteddescendingheaderstyle backcolor="#93451F" />
    </asp:GridView>
</asp:Content>
