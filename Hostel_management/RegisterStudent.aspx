<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="RegisterStudent.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
        }
        .style6
        {
            width: 253px;
        }
        .style7
        {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        
        <asp:View ID="View2" runat="server">
            <table align="center">
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        First Name</td>
                    <td class="style6">
                        <asp:TextBox ID="fname" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Last Name</td>
                    <td class="style6">
                        <asp:TextBox ID="lname" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="style7">
                        Select Course</td>
                    <td class="style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="*" Font-Bold="True" 
                            ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        House name</td>
                    <td class="style6">
                        <asp:TextBox ID="hname" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Place</td>
                    <td class="style6">
                        <asp:TextBox ID="place" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Pincode</td>
                    <td class="style6">
                        <asp:TextBox ID="pin" runat="server" required="" class="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="pin" ErrorMessage="Enter valid pin number" ForeColor="Red" 
                            ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Phone numnber</td>
                    <td class="style6">
                        <asp:TextBox ID="phone" runat="server" required="" class="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="phone" ErrorMessage="Enter valid phone number" 
                            ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Email</td>
                    <td class="style6">
                        <asp:TextBox ID="email" runat="server" required="" class="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="email" ErrorMessage="Enter valid email" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Select Room type</td>
                    <td class="style6">
                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList2" ErrorMessage="*" Font-Bold="True" 
                            ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Username</td>
                    <td class="style6">
                        <asp:TextBox ID="uname" runat="server" required="" class="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Password</td>
                    <td class="style6">
                        <asp:TextBox ID="password" runat="server" class="form-control" required=""></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="style4" colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" class="button" />
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>

