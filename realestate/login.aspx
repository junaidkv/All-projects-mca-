<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
            <div id="tab">
            <div id="tab1">
            <table align="center" bgcolor="#353337" cellpadding="15" cellspacing="15">
<tr>
<td colspan="2" align="center"><strong>Login as client or agent</strong></td>
</tr>
<tr>
<td>
<asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
<td>        <asp:TextBox ID="txtUName" runat="server"></asp:TextBox></td></tr>
        <tr>
       <td> <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
       <td colspan="2" align="center">
           <asp:Label ID="lblInvalid" runat="server"></asp:Label>
        </td></tr>
        <tr>
       <td colspan=2 align=center>
        <asp:Button ID="Button1" runat="server" 
            Text="Sign in" onclick="Button1_Click" />
        </td></tr>
        <tr>
         <td colspan=2 align=center>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx" ForeColor="Black">Not registered?</asp:HyperLink>
             </td></tr>

</table>

</div>

<div id="tab2">

<table align="center" bgcolor="#353337" cellpadding="15" cellspacing="15">
<tr>
<td colspan="2" align="center"><strong>Login as Admin</strong></td>
</tr>
<tr>
<td>
<asp:Label ID="lblAUser" runat="server" Text="Username"></asp:Label></td>
<td>        <asp:TextBox ID="txtAUName" runat="server"></asp:TextBox></td></tr>
        <tr>
       <td> <asp:Label ID="lblAPwd" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="txtAPwd" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
       <td colspan="2" align="center">
           <asp:Label ID="lblAInvalid" runat="server"></asp:Label>
        </td></tr>
        <tr>
       <td colspan=2 align=center>
        <asp:Button ID="Button2" runat="server" 
            Text="Sign in" onclick="Button2_Click" />
        </td></tr>
        <tr>
         <td colspan=2 align=center>
       <br />
             </td></tr>

</table>
</div>
</div>
</asp:Content>

