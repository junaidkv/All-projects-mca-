<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalMaster.master" AutoEventWireup="true" CodeFile="hospital_surgeons.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong>Surgeons</strong></p>
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Register New Surgeon</asp:LinkButton>
            <br />
            <br />
                &nbsp;<asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="247px" AutoGenerateColumns="False" 
                    onitemcommand="DataGrid1_ItemCommand">
                    <AlternatingItemStyle BackColor="White" />
                    <Columns>
                        <asp:BoundColumn DataField="ID" HeaderText="ID"></asp:BoundColumn>
                        <asp:BoundColumn DataField="NAME" HeaderText="NAME"></asp:BoundColumn>
                        <asp:BoundColumn DataField="AGE" HeaderText="AGE"></asp:BoundColumn>
                        <asp:BoundColumn DataField="GENDER" HeaderText="GENDER"></asp:BoundColumn>
                        <asp:BoundColumn DataField="QUALIFICATION" HeaderText="QUALIFICATION">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="EXPERIENCE" HeaderText="EXPERIENCE">
                        </asp:BoundColumn>
                        <asp:BoundColumn DataField="PHONE" HeaderText="PHONE"></asp:BoundColumn>
                        <asp:BoundColumn DataField="EMAIL" HeaderText="EMAIL"></asp:BoundColumn>
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
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="auto-style1">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Surgeon&nbsp; Registrtion</strong></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
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
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            First Name</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"  required=""></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Last Name</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"  required=""></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Age</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox7" ErrorMessage="Enter valid age" ForeColor="Red" 
                                ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Gender</td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" 
                                GroupName="gender" Text="Male" />
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" 
                                Text="Female" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Qualification</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"  required=""></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Years of Experience</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="TextBox9" ErrorMessage="Enter valid experience" 
                                ForeColor="Red" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Phone</td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="TextBox10" ErrorMessage="Enter valid  number" 
                                ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Email</td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                ControlToValidate="TextBox11" ErrorMessage="Enter valid  email" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
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
                        <td>
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
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="auto-style1">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Update Surgeon&nbsp; Details</strong></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
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
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Full Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"  required="" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Age</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="Enter valid age" ForeColor="Red" 
                                ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Qualification</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"  required=""></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Years of Experience</td>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                ControlToValidate="TextBox12" ErrorMessage="Enter valid experience" 
                                ForeColor="Red" ValidationExpression="[0-9]{1,2}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Phone</td>
                        <td>
                            <asp:TextBox ID="TextBox13" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                ControlToValidate="TextBox13" ErrorMessage="Enter valid  number" 
                                ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            Email</td>
                        <td>
                            <asp:TextBox ID="TextBox14" runat="server"  required=""></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                ControlToValidate="TextBox14" ErrorMessage="Enter valid  email" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
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
                        <td>
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

