<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudViewRoomDetails.aspx.cs" Inherits="_Default" %>

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
                        View assigned room details</td>
                </tr>
                <tr align="center">
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                            CellPadding="4" CellSpacing="2" ForeColor="Black" Width="570px">
                            <Columns>
                                <asp:BoundColumn DataField="room_id" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="room_no" HeaderText="Room_no"></asp:BoundColumn>
                                <asp:BoundColumn DataField="location" HeaderText="Location">
                                </asp:BoundColumn>
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

