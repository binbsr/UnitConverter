<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration2.aspx.cs" Inherits="WebFormFromScratch.Registration" MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Firstname is Required" ForeColor="#FF33CC"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="SurName"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Surname is required" ForeColor="#FF33CC"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email is not valid" ForeColor="#FF33CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <label class="custom-file-label" for="FileUpload1">Your Avatar</label>
                </div>
            </div>

            <div class="form-group">
                <label>Gender</label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:Button CssClass="btn btn-outline-success" ID="Button1" runat="server" Text="Add User" OnClick="Button1_Click" />
        </form>
    </div>
</asp:Content>
