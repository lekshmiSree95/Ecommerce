<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Ecommerce.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 302px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    
        <tr>
            <td>
                <asp:ImageButton ID="Cat_AddImageButton" runat="server" Height="250px" ImageUrl="~/images/AddCategory.jpg" OnClick="Cat_AddImageButton_Click" Width="264px" />
            </td>
            <td>
                <asp:ImageButton ID="Cat_EditImageButton" runat="server" Height="250px" ImageUrl="~/images/EditCategory.jpg" OnClick="Cat_EditImageButton_Click" Width="273px" />
            </td>
            <td class="auto-style1">
                <asp:ImageButton ID="Prd_AddImageButton" runat="server" Height="250px" ImageUrl="~/images/AddProduct.jpg" OnClick="Prd_AddImageButton_Click" Width="270px" />
            </td>
            <td>
                <asp:ImageButton ID="Prd_EditImageButton" runat="server" Height="250px" ImageUrl="~/images/EditProduct.jpg" OnClick="Prd_EditImageButton_Click" Width="269px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Btn_View" runat="server" BackColor="#B52E54" BorderStyle="None" OnClick="Btn_View_Click" Text="View Paid Orders" ForeColor="White" />
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                <asp:Button ID="Btn_Feedback" runat="server" BackColor="#B52E54" BorderStyle="None" OnClick="Btn_Feedback_Click" Text="View Feedback" ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
</asp:Content>
