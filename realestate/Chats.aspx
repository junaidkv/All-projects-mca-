<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chats.aspx.cs" Inherits="Chats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
Chat with<asp:RadioButton ID="RadioButton1" runat="server" GroupName="Chat" 
        oncheckedchanged="RadioButton1_CheckedChanged" Text="Client" 
        AutoPostBack="True" />
    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Chat" 
        Text="Admin" AutoPostBack="True" 
        oncheckedchanged="RadioButton2_CheckedChanged" />


        <asp:Panel ID="Panel1" runat="server" Visible="False">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
        
    SelectCommand="SELECT [username] FROM [user1] WHERE ([usertype] = @usertype)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="usertype" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>

     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" 
            HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="5" 
            ForeColor="Black" GridLines="Both" Width="20%">
        <ItemTemplate>
            &nbsp;<asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' 
                style="font-weight: 700" />
            :<asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
        SelectCommand="SELECT [sender],[receiver],[message] FROM [chat] WHERE (([sender] = @sender) AND ([receiver] = @receiver) OR ([sender] = @sender2) AND ([receiver] = @receiver2)) ORDER BY [date], [time]">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="sender" SessionField="uid" 
                Type="String" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="receiver" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="sender2" 
                PropertyName="SelectedValue" Type="String" />
            <asp:SessionParameter Name="receiver2" SessionField="uid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" placeholder="Type a message"></asp:TextBox>
    <br />
             <br />
    <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" />
    <br />
             <br />
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server" Visible="False">
    <br />
    <br />
     <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" 
            HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="5" 
            ForeColor="Black" GridLines="Both" Width="20%">
            <ItemTemplate>
            &nbsp;<asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' 
                    style="font-weight: 700" />
            :<asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
            <br />
            <br />
        </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
            SelectCommand="SELECT [sender],[receiver],[message] FROM [chat] WHERE (([sender] = @sender) AND ([receiver] = 'admin') OR ([sender] = 'admin') AND ([receiver] = @receiver2)) ORDER BY [date], [time]">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="sender" SessionField="uid" 
                Type="String" />
                <asp:SessionParameter Name="receiver2" SessionField="uid" Type="String" />
         </SelectParameters>
             </asp:SqlDataSource>
             <br />
             <br />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" placeholder="Type a message"></asp:TextBox>
        <br />
             <br />
        <asp:Button ID="Button2" runat="server" Text="Button" onclick="Button2_Click" />
        <br />
             <br />
    </asp:Panel>
</asp:Content>

