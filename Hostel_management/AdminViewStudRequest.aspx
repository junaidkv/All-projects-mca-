<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewStudRequest.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-size: x-large;
        }
        .style4
        {
        }
        .style6
        {
            width: 290px;
        }
        .style7
        {
            width: 385px;
        }
        .style8
        {
            width: 85px;
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
                        View Requests</td>
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
                            CellPadding="4" CellSpacing="2" ForeColor="Black" Width="570px" 
                            onitemcommand="DataGrid1_ItemCommand" 
                            onselectedindexchanged="DataGrid1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundColumn DataField="request_id" Visible="False"></asp:BoundColumn>
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
                                 <asp:BoundColumn DataField="type_id" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="student_id" Visible="False"></asp:BoundColumn>
                                 <asp:BoundColumn DataField="type_name" HeaderText="Room type"></asp:BoundColumn>
                                <asp:BoundColumn DataField="request_date" HeaderText="Request date"></asp:BoundColumn>
                                <asp:BoundColumn DataField="request_status" HeaderText="Request status">
                                </asp:BoundColumn>
                                <asp:ButtonColumn CommandName="a" Text="Approve"></asp:ButtonColumn>
                                <asp:ButtonColumn CommandName="r" Text="Reject"></asp:ButtonColumn>
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
            <table align="center" class="style7">
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        Select Room</td>
                    <td class="style8">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" 
                            ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" class="button" Text="Assign" />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

