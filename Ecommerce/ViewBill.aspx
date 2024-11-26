<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ViewBill.aspx.cs" Inherits="Ecommerce.ViewBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
       table{
           
            
       }
       .border1{
           border: 2px solid #B52E54;
           
           border-left:0px;
           border-right:0px;
           
       }
       .C1{
           margin-left:200px;
           border: 2px solid #B52E54;

       }
       .C2{
           margin-left:200px;
           border: 2px solid #000000;
       }
       
       .s1{
           margin-left:50px;

       }
      
      
   </style>
    <table class="C1">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="lblInvoicehead" runat="server" BorderStyle="Solid" Text="INVOICE" BackColor="#B52E54" ForeColor="White" BorderWidth="5px" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="s1">
                &nbsp;</td>
            <td class="s1">
                &nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/favicon.png" Height="30px" Width="30px" />
            </td>
            <td>&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Invoice No"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style4">
                :<asp:Label ID="lblInv" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="s1">
                &nbsp;</td>
            <td class="s1">
            &nbsp;&nbsp;
                <asp:Label ID="lblGifty" runat="server" Text="GIFTY "></asp:Label>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:Label ID="lblCustName" runat="server" Text="Bill To"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style2">
                :<asp:Label ID="lblCust" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;<asp:Label ID="Label1" runat="server" Text="Ernakulam"></asp:Label>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:Label ID="lblDt" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="auto-style2">
                :<asp:Label ID="lblDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
              
                            <table class="w-100">
                                <tr>
                        <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" ForeColor="#333333" GridLines="None" AllowPaging="True"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="P_Name" HeaderText="Items" />
                        <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                         <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                        <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                         <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                        <asp:BoundField DataField="P_Price" HeaderText="Price" />
                                                <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                         <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                                <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                         <asp:BoundField  ItemStyle-CssClass="hide" HeaderStyle-CssClass="hide" />
                        <asp:BoundField DataField="SubTotal" HeaderText="Total" />
                    </Columns>
                    <FooterStyle BackColor="#B52E54" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#B52E54" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                        </td>
                    </tr>
                </table>
            
                   
                <table class="w-100">
                    <tr>
            <td>
                &nbsp;</td>
                    </tr>
                    <tr>
            <td class="border1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Total"></asp:Label>
                <span style="color: rgb(77, 81, 86); font-family: Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><asp:Label ID="Total" runat="server"></asp:Label>
            </td>
                    </tr>
                    <tr>
            <td>
                &nbsp;</td>
                    </tr>
                    <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Thankyou for Choosing Us!!"></asp:Label>
            </td>
                    </tr>
                    <tr>
            <td>
                <asp:Button ID="Btn_Payment" runat="server" Text="Payment" OnClick="Btn_Payment_Click" />
            </td>
                    </tr>
                    <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                </table>
                        </td>
                    
            <td>
                &nbsp;</td>
                    </tr>
                    <tr>
            <td>
                 </table>
              
                       
       

</asp:Content>
