<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="ViewCart.aspx.cs" Inherits="Ecommerce.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="P_Id" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:ImageField DataImageUrlField="P_Image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="P_Name" HeaderText="Name" />
                    <asp:BoundField DataField="P_Price" HeaderText="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" />
                    <asp:CommandField ShowDeleteButton="True" />


                </Columns>
                <EmptyDataTemplate>
                    <asp:Image ID="Image1" runat="server" />
                </EmptyDataTemplate>
            </asp:GridView>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="125px" ImageUrl="~/images/Confirm.jpg" Width="216px" OnClick="ImageButton1_Click1" />
                </td>
                <td>
                    &nbsp;</td>
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
