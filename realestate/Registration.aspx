<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" style="width: 440px; height: 411px">
       <tr> <td><asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter first name" ForeColor="#FF3300" 
                Display="Dynamic" Font-Names="Bookman Old Style" Font-Size="Medium"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" 
                ErrorMessage="Only alphabets required" ForeColor="#FF3300" 
                ValidationExpression="^[a-zA-Z]+$" Font-Names="Bookman Old Style" 
                Font-Size="Medium"></asp:RegularExpressionValidator>
           </td></tr>
       <tr>
       <td><asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server" MaxLength="10"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter Last name" ForeColor="#FF3300" 
                Display="Dynamic" Font-Names="Bookman Old Style" Font-Size="Medium"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="TextBox2" Display="Dynamic" 
                ErrorMessage="Only alphabets required" ForeColor="#FF3300" 
                ValidationExpression="^[a-zA-Z]+$" Font-Names="Bookman Old Style" 
                Font-Size="Medium"></asp:RegularExpressionValidator></td></tr>
       <tr>
       <td>Username</td>
       <td><asp:TextBox ID="TextBox7" runat="server" MaxLength="10"></asp:TextBox></td>
       <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
               ControlToValidate="TextBox7" ErrorMessage="Enter a valid name" ForeColor="#FF3300" 
                Display="Dynamic" Font-Names="Bookman Old Style" Font-Size="Medium"></asp:RequiredFieldValidator>
           <asp:Label ID="Label7" runat="server"></asp:Label>
           </td></tr>
       <tr>
        <td><asp:Label ID="Label3" runat="server" Text="Email"></asp:Label></td>
        <td><asp:TextBox ID="TextBox3" runat="server" MaxLength="20"></asp:TextBox></td>
        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Enter valid mail id" 
                ValidationExpression="^([\w\.\-]+)@([a-zA-Z]+)((\.[a-zA-Z]{2,3})+)$" 
                ForeColor="#FF3300" Display="Dynamic" Font-Names="Bookman Old Style" 
                Font-Size="Medium"></asp:RegularExpressionValidator></td></tr>
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Phone no"></asp:Label></td>
        <td><asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox></td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ControlToValidate="TextBox4" 
                ErrorMessage="Enter phone number" ForeColor="#FF3300" 
                Display="Dynamic" Font-Names="Bookman Old Style" Font-Size="Medium"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
         ControlToValidate="TextBox4" ErrorMessage="Enter valid phone no" 
                ValidationExpression="\d{10}" Display="Dynamic" ForeColor="#FF3300" Font-Names="Bookman Old Style" 
                Font-Size="Medium"></asp:RegularExpressionValidator></td></tr>
        <tr>
        <td>City</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" MaxLength="15"></asp:TextBox>
            </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  ControlToValidate="TextBox8" 
                ErrorMessage="Enter city" ForeColor="#FF3300" 
                Display="Dynamic" Font-Names="Bookman Old Style" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td></tr>
        <tr>
        <td><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="TextBox5" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Enter password" ForeColor="#FF3300" 
                Display="Dynamic" Font-Names="Bookman Old Style" Font-Size="Medium"></asp:RequiredFieldValidator></td></tr>
        <tr>
       <td><asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label></td>
       <td> <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox></td>
<td><asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
        ErrorMessage="Enter same password as above" ForeColor="#FF3300" Display="Dynamic" Font-Names="Bookman Old Style" 
                Font-Size="Medium"></asp:CompareValidator></td></tr>
        <tr>
        <td colspan="2" align=center>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
                <asp:ListItem>Client</asp:ListItem>
                <asp:ListItem>Agent</asp:ListItem>
            </asp:RadioButtonList>
            </td>
<td>       
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ControlToValidate="RadioButtonList1" ErrorMessage="Select option" 
        ForeColor="#FF3300" 
                Display="Dynamic" Font-Names="Bookman Old Style" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td></tr>
<tr><td colspan=2 align="center">
    <asp:Button ID="Button1" runat="server" 
            Text="Register" onclick="Button1_Click" /></td><td></td></tr>
            </table>

</asp:Content>

