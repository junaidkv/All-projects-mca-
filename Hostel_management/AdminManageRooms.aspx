﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminManageRooms.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 65px;
        }
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
        }
        .style5
        {
            height: 65px;
            width: 235px;
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
                        Manage Rooms</td>
                </tr>
                <tr align="center">
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td>
                        <asp:Button ID="Button2" runat="server" class="button"  onclick="Button2_Click" 
                            Text="Add Rooms" />
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                            CellPadding="4" CellSpacing="2" ForeColor="Black" Width="570px" 
                            onitemcommand="DataGrid1_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="room_id" Visible="False"></asp:BoundColumn>
                                 <asp:BoundColumn DataField="type_name" HeaderText="Room type"></asp:BoundColumn>
                                <asp:BoundColumn DataField="room_no" HeaderText="Room number"></asp:BoundColumn>
                                <asp:BoundColumn DataField="location" HeaderText="Location">
                                </asp:BoundColumn>
                                <asp:ButtonColumn CommandName="d" Text="Delete"></asp:ButtonColumn>
                                 <asp:ButtonColumn CommandName="u" Text="Update"></asp:ButtonColumn>
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
        <asp:View ID="View2" runat="server">
            <table align="center">
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Room Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" 
                            ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        Room Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Location</td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox2" runat="server" required=""></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" class="button"  onclick="Button1_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table align="center">
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Room Number</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" required=""></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Location</td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox4" runat="server" required=""></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button3" runat="server" class="button"  Text="Update" onclick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

