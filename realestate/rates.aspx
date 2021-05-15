<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rates.aspx.cs" Inherits="rates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="locality" DataSourceID="SqlDataSource1" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical" style="text-align: center">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="locality" HeaderText="locality" ReadOnly="True" 
            SortExpression="locality" />
        <asp:BoundField DataField="time_frame" HeaderText="time_frame" 
            SortExpression="time_frame" />
        <asp:BoundField DataField="RCurrent_Sale_Rate" HeaderText="RCurrent_Sale_Rate" 
            SortExpression="RCurrent_Sale_Rate" />
        <asp:BoundField DataField="RPrevious_Sale_Rate" 
            HeaderText="RPrevious_Sale_Rate" SortExpression="RPrevious_Sale_Rate" />
        <asp:BoundField DataField="RCurrent_Rent_Rate" HeaderText="RCurrent_Rent_Rate" 
            SortExpression="RCurrent_Rent_Rate" />
        <asp:BoundField DataField="RPrevious_Rent_Rate" 
            HeaderText="RPrevious_Rent_Rate" SortExpression="RPrevious_Rent_Rate" />
        <asp:BoundField DataField="CCurrent_Sale_Rate" HeaderText="CCurrent_Sale_Rate" 
            SortExpression="CCurrent_Sale_Rate" />
        <asp:BoundField DataField="CPrevious_Sale_Rate" 
            HeaderText="CPrevious_Sale_Rate" SortExpression="CPrevious_Sale_Rate" />
        <asp:BoundField DataField="CCurrent_Rent_Rate" HeaderText="CCurrent_Rent_Rate" 
            SortExpression="CCurrent_Rent_Rate" />
        <asp:BoundField DataField="CPrevious_Rent_Rate" 
            HeaderText="CPrevious_Rent_Rate" SortExpression="CPrevious_Rent_Rate" />
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
    SelectCommand="SELECT * FROM [rates]"></asp:SqlDataSource>
</asp:Content>

