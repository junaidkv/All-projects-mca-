<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminManageCourse.aspx.cs" Inherits="_Default" %>

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
                        Manage course</td>
                </tr>
                <tr align="center">
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="Add course" class="button" />
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
                                <asp:BoundColumn DataField="course_id" Visible="False"></asp:BoundColumn>
                                <asp:BoundColumn DataField="course" HeaderText="Course Name"></asp:BoundColumn>
                                <asp:BoundColumn DataField="description" HeaderText="Course Description">
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
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Course Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Description</td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"  required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" class="button" />
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
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        Course Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Description</td>
                    <td class="style2">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"  required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button3" runat="server"  Text="Update" class="button" 
                            onclick="Button3_Click" />
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

