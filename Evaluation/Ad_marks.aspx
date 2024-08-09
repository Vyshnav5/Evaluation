<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Ad_marks.aspx.cs" Inherits="Exam_pro.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <form runat="server">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="202px" Width="215px">
                 <Columns>
                     <asp:BoundField DataField="s_name" HeaderText="Student Name" />
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:Button ID="Mark" runat="server" OnClick="Mark_Click" CommandArgument='<%# Eval("s_id")%>' Text="Mark" />
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>

                 <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                 <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                 <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                 <RowStyle BackColor="White" ForeColor="#003399" />
                 <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                 <SortedAscendingCellStyle BackColor="#EDF6F6" />
                 <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                 <SortedDescendingCellStyle BackColor="#D6DFDF" />
                 <SortedDescendingHeaderStyle BackColor="#002876" />

             </asp:GridView>
             <br />
             <asp:Label ID="Label1" runat="server" Text=" " BorderColor="White" ForeColor="White"></asp:Label>
             <asp:TextBox ID="name" runat="server"></asp:TextBox>
             <br />
             Maths<asp:TextBox ID="maths" runat="server"></asp:TextBox>
             <br />
             English<asp:TextBox ID="english" runat="server"></asp:TextBox>
             <br />
             Java<asp:TextBox ID="java" runat="server"></asp:TextBox>
             <br />
             C++<asp:TextBox ID="C" runat="server"></asp:TextBox>
             <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />

              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="145px" Width="686px">
                  <AlternatingRowStyle BackColor="White" />
     <Columns>
         <asp:BoundField DataField="s_name" HeaderText="Student Name" />
         <asp:BoundField DataField="c_maths" HeaderText="Maths" />
         <asp:BoundField DataField="c_english" HeaderText="English" />
         <asp:BoundField DataField="c_java" HeaderText="Java" />
         <asp:BoundField DataField="c_C" HeaderText="C++" />
       
     </Columns>

                  <EditRowStyle BackColor="#2461BF" />
                  <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EFF3FB" />
                  <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F5F7FB" />
                  <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                  <SortedDescendingCellStyle BackColor="#E9EBEF" />
                  <SortedDescendingHeaderStyle BackColor="#4870BE" />

 </asp:GridView>
         </form>

</asp:Content>
