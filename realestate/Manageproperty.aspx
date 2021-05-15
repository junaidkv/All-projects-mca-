<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manageproperty.aspx.cs" Inherits="Manageproperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="property_id" 
        OnPageIndexChanging="GridView1_PageIndexChanging" 
        OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating"  DataSourceID="SqlDataSource1" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="property_id" HeaderText="property_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="property_id" Visible="False" />
            <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
            <asp:BoundField DataField="area" HeaderText="area" SortExpression="area" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="construction" HeaderText="construction" 
                SortExpression="construction" />
            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
            <asp:BoundField DataField="approxprice" HeaderText="approxprice" 
                SortExpression="approxprice" />
            <asp:BoundField DataField="entrydate" HeaderText="entrydate" 
                SortExpression="entrydate" />
            <asp:BoundField DataField="sales_status" HeaderText="sales_status" 
                SortExpression="sales_status" />
                <asp:CommandField ShowEditButton="true" />
            <asp:CommandField ShowDeleteButton="true" />
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
        SelectCommand="SELECT * FROM [property]" DeleteCommand="DELETE FROM [property] WHERE property_id=@property_id" UpdateCommand="UPDATE [property] SET uname=@uname,area=@area,address=@address,type=@type,construction=@construction,size=@size,approxprice=@approxprice,entrydate=@entrydate,sales_status=@sales_status WHERE property_id=@property_id"></asp:SqlDataSource>
</asp:Content>

