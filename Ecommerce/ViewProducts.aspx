<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="Ecommerce.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 38px;
        }
        .auto-style2 {
            height: 38px;
            width: 3px;
        }
        .auto-style3 {
            width: 364px;
        }
        .auto-style4 {
            text-align: right;
            width: 3px;
        }
        .auto-style5 {
            height: 38px;
            width: 47px;
        }
        .auto-style6 {
            text-align: right;
            width: 47px;
        }
        .auto-style7 {
            width: 83px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style6" rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="374px" Width="305px" />
            </td>
            <td class="auto-style4" rowspan="5">
                &nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblDes" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                ₹<asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblStock" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlQuantity" runat="server" Height="26px" Width="88px" AutoPostBack="True" OnSelectedIndexChanged="ddlQuantity_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="lblTotal" runat="server" Text="Total Amount"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;₹<asp:Label ID="lblAmount" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                &nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3" colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="83px" ImageUrl="~/images/Addtocart.jpg" OnClick="ImageButton1_Click" Width="215px" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="150px" ImageUrl="~/images/continue.jpg" OnClick="ImageButton2_Click1" Width="150px" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="83px" ImageUrl="~/images/Viewcart.jpg" OnClick="ImageButton3_Click" Width="215px" />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
