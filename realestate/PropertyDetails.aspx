<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PropertyDetails.aspx.cs" Inherits="PropertyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Property Details" 
        Font-Names="Algerian" Font-Size="X-Large"></asp:Label>
            <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="10" 
        DataKeyNames="property_id" ForeColor="Black" GridLines="Vertical" 
        style="text-align: center" HorizontalAlign="Center" AlternatingItemStyle-HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="area" HeaderText="Area" SortExpression="area" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="construction" HeaderText="Construction" 
                SortExpression="construction" />
            <asp:BoundField DataField="size" HeaderText="Size" 
                SortExpression="size" />
            <asp:BoundField DataField="approxprice" HeaderText="Approx_Price" 
                SortExpression="approxprice" />
            <asp:BoundField DataField="entrydate" HeaderText="EntryDate" 
                SortExpression="entrydate" />
            <asp:BoundField DataField="sales_status" HeaderText="Sales_Status" 
                SortExpression="sales_status" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
        
        SelectCommand="SELECT * FROM [property]"></asp:SqlDataSource>
    <br />
</asp:Content>

