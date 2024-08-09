<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Exam_pro.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
        <br />
       
        <asp:Label ID="age" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="ph" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Edit" />
        <br />
        <asp:TextBox ID="name1" runat="server"></asp:TextBox>
        <asp:TextBox ID="age1" runat="server"></asp:TextBox>
        <asp:TextBox ID="ph1" runat="server"></asp:TextBox>
        <asp:TextBox ID="email1" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Update" />
    </form>
</asp:Content>
