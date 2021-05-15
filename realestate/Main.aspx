<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Panel ID="User" runat="server">
    <table align="center" style="font-family: 'Bookman Old Style'; font-size: medium">
    <tr>
    <td>
        <br /><br />
        <asp:DataList ID="DataList2" runat="server" DataKeyField="username" 
            DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal" RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <strong><span style="text-decoration: underline; font-size: large">Your Details</span><br />
                <br />
                UserName </strong>:
                <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                <br />
                <br />
                <strong>Name</strong> :
                <asp:Label ID="fnLabel" runat="server" Text='<%# Eval("fn") %>' />
&nbsp;<asp:Label ID="lnLabel" runat="server" Text='<%# Eval("ln") %>' />
                <br />
                <br />
                <strong>Phone</strong>:
                <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                <br />
                <br />
                <strong>City</strong>:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
            SelectCommand="SELECT [username], [fn], [ln], [phone], [city] FROM [user1] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="uid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </td>
    </tr>
    </table>
    </asp:Panel>
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Buy.aspx">Properties available for purchasing</asp:LinkButton>&nbsp;&nbsp;&nbsp; <asp:LinkButton
        ID="LinkButton2" runat="server" PostBackUrl="~/Rent.aspx">Properties available for rent</asp:LinkButton>


</asp:Content>

