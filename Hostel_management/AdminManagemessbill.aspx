<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminManagemessbill.aspx.cs" Inherits="_Default" %>

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
        .style6
        {
            width: 302px;
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
                        Manage Mess Bill</td>
                </tr>
                <tr align="center">
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td>
                        <asp:Button ID="Button2" runat="server" class="button"  onclick="Button2_Click" 
                            Text="Add Amount" />
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
                            CellPadding="4" CellSpacing="2" ForeColor="Black" Width="570px" onitemcommand="DataGrid1_ItemCommand" 
                            >
                            <Columns>

                                <asp:BoundColumn DataField="mess_bill_id" Visible="False"></asp:BoundColumn>
                                 <asp:TemplateColumn HeaderText="Stdent details">
                                     <ItemTemplate>
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                                         &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                                         <br />
                                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("house_name") %>'></asp:Label>
                                         <br />
                                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("place") %>'></asp:Label>
                                     </ItemTemplate>
                                </asp:TemplateColumn>
                                 <asp:BoundColumn DataField="fee_pay_date" HeaderText="Fee pay date"></asp:BoundColumn>
                                  <asp:BoundColumn DataField="fee_days_no" HeaderText="Fee days No"></asp:BoundColumn>
                                 <asp:BoundColumn DataField="amount" HeaderText="Fee Amount"></asp:BoundColumn>
                                <asp:BoundColumn DataField="pay_status" HeaderText="Payment status"></asp:BoundColumn>
                           <asp:ButtonColumn CommandName="d" Text="Delete"></asp:ButtonColumn>
                             
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
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        Select student</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" 
                            ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="style6">
                        Fee Pay date</td>
                    <td>
                        <asp:TextBox ID="TextBox2" type="date" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="style6">
                        Fee day no</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" class="button"  Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

