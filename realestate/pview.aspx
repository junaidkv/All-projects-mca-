<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pview.aspx.cs" Inherits="pview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="username" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" AlternatingItemStyle-HorizontalAlign="Center">
        <ItemTemplate>
            <table style="text-align: left">
                <tr>
                    <td align="center" colspan="3">
                        Property Detail</td>
                </tr>
                <tr>
                    <td>
                        Area</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("area") %>'></asp:Label></td>
                </tr>
                 <tr>
                    <td>
                        Estate Address</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("address") %>'></asp:Label></td>
                </tr>
                
                
                <tr>
                    <td>
                        Type</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("type") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Construction</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("construction") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Size(sq. ft)</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("size") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Price in Rs.</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("approxprice") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Entry Date</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("entrydate") %>'></asp:Label></td>
                </tr>
                 <tr>
                    <td>
                        Sale Status</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("sales_status") %>'></asp:Label></td>
                </tr>
                
                <tr>
                    <td align="center" colspan="3">
                        Owner Detail</td>
                </tr>
                <tr>
                    <td>
                        Owner
                    </td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("username") %>'></asp:Label></td>
                </tr>
                
                <tr>
                    <td>
                        City</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("city") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        Phone No.</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("phone") %>'></asp:Label></td>
                </tr>
                
                <tr>
                    <td>
                        Email</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("email") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
SelectCommand="SELECT user1.*, property.* FROM property INNER JOIN user1 ON property.uname = user1.username WHERE property_id=@property_id">
        <SelectParameters>
            <asp:SessionParameter Name="property_id" SessionField="property_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table align="center">
    <tr>
    <td>
    <asp:Panel ID="Panel1" runat="server"  Width="440px" BorderStyle="Dashed" BorderColor="#000066" HorizontalAlign="Center">
   </asp:Panel>
   </td>
   </tr>
   </table>
</asp:Content>

