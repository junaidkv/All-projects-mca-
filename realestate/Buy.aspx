﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br />
    
    <asp:Label ID="Label3" runat="server" Text="Construction"></asp:Label>
        <asp:DropDownList ID="ddlconstruction" runat="server">
            <asp:ListItem>↓Select ↓</asp:ListItem>
            <asp:ListItem>1bhk</asp:ListItem>
            <asp:ListItem>2bhk</asp:ListItem>
            <asp:ListItem>3bhk</asp:ListItem>
            <asp:ListItem>4bhk</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" Text="Size(sq/m)"></asp:Label>
    <asp:DropDownList ID="ddlsize" runat="server">
        <asp:ListItem>↓Select ↓</asp:ListItem>
        <asp:ListItem>500-600</asp:ListItem>
        <asp:ListItem>601-700</asp:ListItem>
        <asp:ListItem>701-800</asp:ListItem>
        <asp:ListItem>801-900</asp:ListItem>
        <asp:ListItem>901-1000</asp:ListItem>
        <asp:ListItem>1001-1100</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label6" runat="server" Text="Price(in lakhs)"></asp:Label>
    <asp:DropDownList ID="ddlprice" runat="server">
        <asp:ListItem>↓Select ↓</asp:ListItem>
        <asp:ListItem>1-10</asp:ListItem>
        <asp:ListItem>11-20</asp:ListItem>
        <asp:ListItem>21-30</asp:ListItem>
        <asp:ListItem>31-40</asp:ListItem>
        <asp:ListItem>41-50</asp:ListItem>
        <asp:ListItem>51-60</asp:ListItem>
        <asp:ListItem>61-70</asp:ListItem>
        <asp:ListItem>71-80</asp:ListItem>
        <asp:ListItem>81-90</asp:ListItem>
        <asp:ListItem>91-1cr</asp:ListItem>
        <asp:ListItem>1cr-2cr</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label8" runat="server" Text="Area"></asp:Label>
    <asp:DropDownList ID="ddlarea" runat="server" 
    DataSourceID="SqlDataSource1" DataTextField="area" DataValueField="area">
</asp:DropDownList>
    <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Search" 
        onclick="Button1_Click" />
        <br /><br />
    
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
    SelectCommand="SELECT DISTINCT [area] FROM [property]"></asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="property_id" 
            DataSourceID="SqlDataSource2" BackColor="#EEEEEE" 
    BorderColor="#999999" BorderStyle="None" BorderWidth="4px" CellPadding="20" 
    GridLines="Both" align="center" onitemcommand="DataList1_ItemCommand" 
            ForeColor="#333333">
          <AlternatingItemStyle BackColor="#DCDCDC" />
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
          <ItemTemplate>
              <asp:Label ID="property_idLabel" runat="server" Text='<%# Eval("property_id") %>' Visible="False" />
              <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' Visible="False" />
              <span style="font-family: 'Book Antiqua'; font-size: medium"><strong>Area</strong></span>:
              <asp:Label ID="areaLabel" runat="server" Text='<%# Eval("area") %>' />
              <br />
              <span style="font-family: 'Book Antiqua'; font-size: medium"><strong>Address</strong></span>:
              <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
              <br />
              <span style="font-size: medium; font-family: 'Book Antiqua'"><strong>
              Construction</strong></span>:
              <asp:Label ID="constructionLabel" runat="server" 
                  Text='<%# Eval("construction") %>' />
              <br />
              <strong><span style="font-size: medium; font-family: 'Book Antiqua'">Size</span></strong>:
              <asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' />
              <br />
              <strong><span style="font-size: medium; font-family: 'Book Antiqua'">Approxprice</span></strong>:
              <asp:Label ID="approxpriceLabel" runat="server" 
                  Text='<%# Eval("approxprice") %>' />
              <br />
              
              <strong><span style="font-size: medium; font-family: 'Book Antiqua'">
              Sales_Status</span></strong>:
              <asp:Label ID="sales_statusLabel" runat="server" 
                  Text='<%# Eval("sales_status") %>' />
              <br />
              <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("property_id")+","+ Eval("uname") %>' CommandName="more">More Details</asp:LinkButton>
              <br />
              <br />
              <asp:Button ID="Button3" runat="server" Text="Add to wishlist" CommandArgument="add" CommandName="wish" Width="100%" />
              <br />
              <br />
        </ItemTemplate>
          <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SeparatorStyle BackColor="Black" Font-Bold="False" Font-Italic="False" 
              Font-Names="Algerian" Font-Overline="False" Font-Strikeout="False" 
              Font-Underline="False" ForeColor="Black" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
        SelectCommand="SELECT * FROM [property] WHERE ([type] = @type)">
            <SelectParameters>
                <asp:Parameter DefaultValue="flat" Name="type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />

</asp:Content>

