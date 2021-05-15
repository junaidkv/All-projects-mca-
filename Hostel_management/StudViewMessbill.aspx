<%@ Page Title="" Language="C#" MasterPageFile="~/StudMasterPage.master" AutoEventWireup="true" CodeFile="StudViewMessbill.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
            width: 15px;
        }
        .style5
        {
            width: 248px;
        }
        .style6
        {
            width: 177px;
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
                        View mess bill</td>
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
                            CellPadding="4" CellSpacing="2" ForeColor="Black" Width="570px" 
                            onitemcommand="DataGrid1_ItemCommand">
                            <Columns>
                                <asp:BoundColumn DataField="mess_bill_id" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="fee_pay_date" HeaderText="Fee pay date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="fee_days_no" HeaderText="Fee days no">
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="amount" HeaderText="Amount"></asp:BoundColumn>
                                <asp:BoundColumn DataField="pay_status" HeaderText="Status"></asp:BoundColumn>
                                <asp:ButtonColumn CommandName="p" Text="Pay"></asp:ButtonColumn>
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
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="style6">
                        Amount</td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox1" runat="server" required="" class="form-control" 
                            ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
              
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Pay" class="button" />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>

    </asp:MultiView>
</asp:Content>

