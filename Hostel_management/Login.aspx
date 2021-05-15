<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table" align="center" style="width:700px">
  
    <tr align="center">
        <td colspan="2">
            Login</td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" ForeColor="#FF6600"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Username</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" required="" class="form-control"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Password</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" required="" TextMode="Password" class="form-control"></asp:TextBox>
        </td>
    </tr>
    <tr align="center">
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" class="button" Text="Login" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

