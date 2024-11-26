<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Ecommerce.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
                            <td __designer:mapid="252">
                                <asp:Label ID="Label8" runat="server" Text="Payment Details"></asp:Label>
                            </td>
                            <td __designer:mapid="254">&nbsp;</td>
                            <td __designer:mapid="254">&nbsp;</td>
                        </tr>
        <tr>
                            <td __designer:mapid="256">&nbsp;</td>
                            <td __designer:mapid="257">&nbsp;</td>
                            <td __designer:mapid="257">&nbsp;</td>
                        </tr>
        <tr>
                            <td __designer:mapid="259">
                                <asp:Label ID="Label2" runat="server" Text="Total Payable"></asp:Label>
                            </td>
                            <td __designer:mapid="25b">
                ₹<asp:Label ID="lblTotal" runat="server"></asp:Label>
                            </td>
                            <td __designer:mapid="25b">
                                &nbsp;</td>
                        </tr>
        <tr>
                            <td __designer:mapid="25e">&nbsp;</td>
                            <td __designer:mapid="25f">&nbsp;</td>
                            <td __designer:mapid="25f">&nbsp;</td>
                        </tr>
        <tr>
                            <td __designer:mapid="261">
                                <asp:Label ID="Label9" runat="server" Text="Account Number"></asp:Label>
                            </td>
                            <td __designer:mapid="263">
                                <asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox>
                            </td>
                            <td __designer:mapid="263">
                                &nbsp;</td>
                        </tr>
        <tr>
                            <td __designer:mapid="261">
                                &nbsp;</td>
                            <td __designer:mapid="263">
                                &nbsp;</td>
                            <td __designer:mapid="263">
                                &nbsp;</td>
                        </tr>
        <tr>
                            <td __designer:mapid="266">&nbsp;</td>
                            <td __designer:mapid="267">&nbsp;</td>
                            <td __designer:mapid="267">&nbsp;</td>
                        </tr>
        <tr>
                            <td __designer:mapid="269">&nbsp;</td>
                            <td __designer:mapid="26a">
                                <asp:Button ID="Btn_Pay" runat="server" Text="Pay" OnClick="Btn_Pay_Click" />
                            </td>
                            <td __designer:mapid="26a">
                                &nbsp;</td>
                        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblmsg0" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
