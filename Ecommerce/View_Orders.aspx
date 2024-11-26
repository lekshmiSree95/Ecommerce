<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="View_Orders.aspx.cs" Inherits="Ecommerce.View_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
            <td>
               
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#B52E54" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#f25d95" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#B52E54" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#f25d95" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#f25d95" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
               
            </td>
            <td>&nbsp;</td>
    </tr>
    <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
    </tr>
    <tr>
            <td class="auto-style1">
                </td>
            <td class="auto-style1">
                <asp:Button ID="Btn_Update" runat="server" BackColor="#B52E54" BorderStyle="None" OnClick="Btn_Update_Click" Text="Update Orders" ForeColor="White" />
            </td>
            <td class="auto-style1"></td>
    </tr>
    <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
    </tr>
    <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back</asp:LinkButton>
            </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
