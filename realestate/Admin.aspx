<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr>
    <td>
<td><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Manageuser.aspx">Manage user</asp:LinkButton></td>
<td><asp:LinkButton ID="LinkButton3" runat="server" 
    PostBackUrl="~/Manageproperty.aspx">Manage property</asp:LinkButton></td>
<td><asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Chat</asp:LinkButton></td>
</tr>
<tr><td colspan="2"><br /><br /></td></tr>
</table>
    <asp:Panel ID="Panel2" runat="server" Visible="true">
    <table align="center" cellpadding="10" cellspacing="3" bgcolor="#FFFFCC" 
            style="color: #000000">
    <tr>
    <td style="width: 127px">Company name:</td><td>Land Agent</td></tr>
    <tr><td style="width: 127px">Address:</td><td>Shop No. 2, LandAgent Realtors<br /> 
        AVN Apartment,Borivali</td></tr>
    <tr><td style="width: 127px">City:</td><td>Dombivli</td></tr>
    <tr><td style="width: 127px">Contact Person 1:</td><td>Anukumar Nair</td></tr>
    <tr><td style="width: 127px">Mobile No:</td><td>9702057370</td></tr>
    <tr><td style="width: 127px">Contact Person 2:</td><td>Vivek Nair</td></tr>
    <tr><td style="width: 127px">Mobile No:</td><td>7718975935</td></tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <br />
    <asp:Label ID="Label1" runat="server" Text="List of Users" 
        Font-Names="Algerian" Font-Size="X-Large"></asp:Label>
            <br />
    <br />
    <table align="center">
    <tr align="left">
    <td>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="username" 
        DataValueField="username" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
        AutoPostBack="True" ForeColor="White">
    </asp:RadioButtonList>
    </td>
    </tr>
</table>
<br />
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
        
    SelectCommand="SELECT [username] FROM [user1]">
        
</asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
            HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="5" 
            ForeColor="Black" GridLines="Both" Width="20%">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            &nbsp;<asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' 
                style="font-weight: 700" />
            :<asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
        SelectCommand="SELECT [sender],[receiver],[message] FROM [chat] WHERE (([sender] = 'admin') AND ([receiver] = @receiver) OR ([sender] = @sender2) AND ([receiver] = 'admin')) ORDER BY [date], [time]">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadioButtonList1" Name="receiver" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="sender2" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" placeholder="Type a message"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" />
    </asp:Panel>
</asp:Content>

