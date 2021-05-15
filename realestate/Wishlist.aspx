<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Wishlist.aspx.cs" Inherits="Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyField="wid" OnItemCommand="DataList1_ItemCommand" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black" HorizontalAlign="Center" AlternatingItemStyle-HorizontalAlign="Center">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            &nbsp;<asp:Label ID="widLabel" runat="server" 
                Text='<%# Eval("wid") %>' Visible="False" />
            <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                Visible="False" />
            <strong><span style="font-size: medium; font-family: 'Book Antiqua'">
            Property_Owner</span></strong>:
            <asp:Label ID="pownerLabel" runat="server" Text='<%# Eval("powner") %>' />
            <br />
            <strong><span style="font-size: medium; font-family: 'Book Antiqua'">UserName</span></strong>:
            <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
            <br />
            <strong><span style="font-size: medium; font-family: 'Book Antiqua'">Sale_Status</span></strong>:
            <asp:Label ID="sstatusLabel" runat="server" 
                Text='<%# Eval("sstatus") %>' />
            <br />
            <br />
              <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("pid")+","+ Eval("powner") %>' CommandName="more">More Details</asp:LinkButton>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
        SelectCommand="SELECT * FROM [wish] WHERE ([uname] = @uname)">
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="uid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

