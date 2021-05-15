<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sell.aspx.cs" Inherits="Sell" %>

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
    <asp:Button ID="Button2" runat="server" Text="ViewProperty" 
        onclick="Button2_Click" Font-Size="X-Large" />
    &nbsp;
    <asp:Button ID="Button3" runat="server" Text="PostProperty" 
        onclick="Button3_Click" Font-Size="X-Large" />
        <br /><br />
    <asp:Panel ID="View" runat="server" >
    <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="property_id" 
            DataSourceID="SqlDataSource1" onitemcommand="DataList1_ItemCommand" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" GridLines="Both" HorizontalAlign="Center" 
            AlternatingItemStyle-HorizontalAlign="Center" RepeatColumns="3" 
            RepeatDirection="Horizontal">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <br />
                area:
                <asp:Label ID="areaLabel" runat="server" Text='<%# Eval("area") %>' />
                <br />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
                <br />
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
                <br />
                construction:
                <asp:Label ID="constructionLabel" runat="server" 
                    Text='<%# Eval("construction") %>' />
                <br />
                <br />
                size:
                <asp:Label ID="sizeLabel" runat="server" Text='<%# Eval("size") %>' />
                <br />
                <br />
                approxprice:
                <asp:Label ID="approxpriceLabel" runat="server" 
                    Text='<%# Eval("approxprice") %>' />
                <br />
                <br />
              <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("property_id") %>'
                            Width="90px">More Detail</asp:LinkButton>
              <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:realConnectionString %>" 
            SelectCommand="SELECT * FROM [property] WHERE ([uname] = @uname)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="uname" SessionField="uid" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </asp:Panel>


    <asp:Panel ID="Post" runat="server">
    <table ali align="center">
       <tr><td><asp:Label ID="Label1" runat="server" Text="Type"></asp:Label></td><td><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>flat</asp:ListItem>
            <asp:ListItem>rent</asp:ListItem>
    </asp:DropDownList></td></tr>
       <tr><td> <asp:Label ID="Label3" runat="server" Text="Construction"></asp:Label></td><td><asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>1bhk</asp:ListItem>
            <asp:ListItem>2bhk</asp:ListItem>
            <asp:ListItem>3bhk</asp:ListItem>
            <asp:ListItem>4bhk</asp:ListItem>
    </asp:DropDownList></td></tr>
   <tr><td><asp:Label ID="Label2" runat="server" Text="Size"></asp:Label></td><td>
       <asp:TextBox ID="txtsize" runat="server" MaxLength="6"></asp:TextBox></td><td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ErrorMessage="Please enter size" ControlToValidate="txtsize" ForeColor="Red"></asp:RequiredFieldValidator>
           <br />
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
               ControlToValidate="txtsize" ErrorMessage="Please enter Valid Size" 
               ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
           <br />
           <asp:RangeValidator ID="RangeValidator1" runat="server" 
               ControlToValidate="txtsize" ErrorMessage="Please enter no between 500 to 1100" 
               ForeColor="Red" MaximumValue="1100" MinimumValue="500" Type="Integer"></asp:RangeValidator>
       </td></tr>
    <tr><td><asp:Label ID="Label6" runat="server" Text="Price"></asp:Label></td><td> 
        <asp:TextBox ID="txtprice" runat="server" MaxLength="8"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Please enter price" ControlToValidate="txtprice" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="txtprice" ErrorMessage="Please enter Valid price" 
            ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            <br />
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ControlToValidate="txtprice" 
            ErrorMessage="Please enter price between 1lakh and 2cr" ForeColor="Red" 
            MaximumValue="20000000" MinimumValue="100000"></asp:RangeValidator>
        </td></tr>
    <tr><td><asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td><td> 
        <asp:TextBox ID="txtaddress" runat="server" MaxLength="30"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Please enter address" ControlToValidate="txtaddress" 
                ForeColor="Red"></asp:RequiredFieldValidator></td></tr>
   <tr><td><asp:Label ID="Label8" runat="server" Text="Area"></asp:Label></td><td> 
       <asp:TextBox ID="txtarea" runat="server" MaxLength="15"></asp:TextBox></td><td>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
               ErrorMessage="Please enter area" ControlToValidate="txtarea" ForeColor="Red"></asp:RequiredFieldValidator>
           <br />
           <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
               ControlToValidate="txtarea" ErrorMessage="Please enter Valid area" 
               ForeColor="Red" ValidationExpression="([A-Za-z])+( [A-Za-z]+)*"></asp:RegularExpressionValidator>
       </td></tr>
<tr><td><asp:Label ID="Label7" runat="server" Text="Image"></asp:Label></td><td><asp:FileUpload ID="FileUpload1" runat="server" Multiple="true" /></td><td>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
        ErrorMessage="Please upload image" ControlToValidate="FileUpload1" 
        ForeColor="Red" 
        ValidationExpression="^.*\.(jpg|JPG|jpeg|JPEG|png|PNG|gif|GIF)$"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="FileUpload1" ErrorMessage="Please enter image" 
        ForeColor="Red"></asp:RequiredFieldValidator>
    </td></tr>
<tr>
<td colspan="2"><asp:Button ID="Button1" runat="server" Text="Post" onclick="Button1_Click" />
        </td>
</tr>
</table>
        
        <br />
        <br />
    </asp:Panel>

</asp:Content>

