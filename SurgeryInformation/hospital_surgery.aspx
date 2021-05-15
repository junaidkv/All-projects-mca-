<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalMaster.master" AutoEventWireup="true" CodeFile="hospital_surgery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 64px;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            color: #FF6600;
        }
        .auto-style5 {
            width: 64px;
            color: #FF6600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong>Surgeries</strong></p>
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Register New Surgery</asp:LinkButton>
            <br />
            <br />
                <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="696px" AutoGenerateColumns="False" 
                    onitemcommand="DataGrid1_ItemCommand">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="SURGERY" HeaderText="SURGERY"></asp:BoundColumn>
                        <asp:BoundColumn DataField="CATEGORY" HeaderText="CATEGORY"></asp:BoundColumn>
                        <asp:BoundColumn DataField="DURATION" HeaderText="DURATION"></asp:BoundColumn>
                        <asp:BoundColumn DataField="AMOUNT" HeaderText="AMOUNT"></asp:BoundColumn>
                        <asp:BoundColumn DataField="DESCRIPTION" HeaderText="DESCRIPTION">
                        </asp:BoundColumn>
                        <asp:ButtonColumn CommandName="u" Text="Update">
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                        </asp:ButtonColumn>
                        <asp:ButtonColumn CommandName="d" Text="Delete">
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                        </asp:ButtonColumn>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataGrid>
            <br />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table class="style1">
                    <tr class="auto-style3">
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td>
                            <strong class="auto-style4">New Surgery&nbsp; Registrtion</strong></td>
                        <td>
                            <span class="auto-style4"></span></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            </span></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Surgery Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" required="" class="form-control"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Category Name</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Surgeon Name</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Duration(in hr)</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"  required="" class="form-control"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Enter valid number" ForeColor="Red" 
                                ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Amount</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"  required="" class="form-control"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="Enter valid amount" ForeColor="Red" 
                                ValidationExpression="[0-9]{1,9}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Description</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"  required="" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Register" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table class="style1">
                    <tr class="auto-style3">
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td>
                            <strong class="auto-style4">Update Surgery&nbsp; Details</strong></td>
                        <td>
                            <span class="auto-style4"></span></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            </span></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Surgery Name</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" required="" class="form-control"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Surgeon Name</td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Duration(in hr)</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"  required="" class="form-control"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="Enter valid number" ForeColor="Red" 
                                ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Amount</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"  required="" class="form-control"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="TextBox7" ErrorMessage="Enter valid amount" ForeColor="Red" 
                                ValidationExpression="[0-9]{1,9}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            Description</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"  required="" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" 
                                Text="Update" onclick="Button2_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

