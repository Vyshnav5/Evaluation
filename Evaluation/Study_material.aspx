<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Study_material.aspx.cs" Inherits="Exam_pro.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
         <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
         <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Upload" />
     </form>
</asp:Content>
