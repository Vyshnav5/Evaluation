<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AD_student_details.aspx.cs" Inherits="Exam_pro.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="s_reg_no" HeaderText="Register No" />
                <asp:BoundField DataField="s_name" HeaderText="Student Name" />
                <asp:BoundField DataField="s_age" HeaderText="Student Age" />
                <asp:BoundField DataField="s_mobile" HeaderText="Student Ph" />
                <asp:BoundField DataField="s_class" HeaderText="Student Class" />
                <asp:BoundField DataField="s_email" HeaderText="Student email" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
