<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewStudDetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        
        <asp:View ID="View1" runat="server">
            <table align="center">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td class="style3">
                        Students details</td>
                </tr>
                <tr align="center">
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                            CellPadding="4" CellSpacing="2" ForeColor="Black" Width="830px">
                            <Columns>
                                <asp:BoundColumn DataField="student_id" Visible="False"></asp:BoundColumn>
                                 <asp:TemplateColumn HeaderText="Stdent details">
                                     <ItemTemplate>
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                                         &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                                         <br />
                                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("house_name") %>'></asp:Label>
                                         <br />
                                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("place") %>'></asp:Label>
                                         <br />Pin : 
                                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                                     </ItemTemplate>
                                </asp:TemplateColumn>
                                 <asp:BoundColumn DataField="type_name" HeaderText="Room type"></asp:BoundColumn>
                                <asp:BoundColumn DataField="room_no" HeaderText="Room number"></asp:BoundColumn>
                                <asp:BoundColumn DataField="location" HeaderText="Room Location">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="phone" HeaderText="Phone"></asp:BoundColumn>
                                <asp:BoundColumn DataField="email" HeaderText="Email"></asp:BoundColumn>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" 
                                Mode="NumericPages" />
                            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:DataGrid>
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

