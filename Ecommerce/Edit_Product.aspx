<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="Ecommerce.Edit_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 237px;
        }
        .auto-style3 {
            width: 597px;
        }
        .auto-style4 {
            height: 237px;
            width: 597px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" AutoGenerateColumns="False" DataKeyNames="P_Id">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="P_Name" HeaderText="Name" />
                        <asp:BoundField DataField="P_Status" HeaderText="Status" />
                        <asp:ImageField DataImageUrlField="P_Image" HeaderText="Image">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="P_Price" HeaderText="Price" />
                        <asp:BoundField DataField="P_Stock" HeaderText="Stock" />
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr>
                        <td>
                            <asp:Label ID="lblCatId" runat="server" Text="Category Id"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlCatId" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
        <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblName" runat="server" Text=" Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
        <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
        <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblPrice" runat="server" Text=" Price"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        </td>
                    </tr>
        <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
        <tr>
                            <td __designer:mapid="60">
                                <asp:Label ID="lblImage0" runat="server" Text="Image"></asp:Label>
                            </td>
                            <td __designer:mapid="62">
                                <asp:TextBox ID="txtImagePath" runat="server"></asp:TextBox>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
        <tr>
                        <td class="auto-style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
        <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblDes" runat="server" Text="Description"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDes" runat="server"></asp:TextBox>
                        </td>
                    </tr>
        <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;&nbsp; &nbsp;</td>
                    </tr>
        <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblStock" runat="server" Text="Stock"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                        </td>
                    </tr>
        <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
        <tr>
                        <td class="auto-style3">
                            <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RdbtnStatus" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="Active">Active</asp:ListItem>
                                <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                                <asp:Button ID="Btn_Update" runat="server" Text="Update" OnClick="Btn_Update_Click" BackColor="#FFCCCC" />
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
