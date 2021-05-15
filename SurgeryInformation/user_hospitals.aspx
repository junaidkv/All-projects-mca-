<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="user_hospitals.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">

            <p>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hospitals</strong></p>
            <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Width="247px" AutoGenerateColumns="False" 
                onitemcommand="DataGrid1_ItemCommand">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="hospital_id" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="name" HeaderText="Hospital name"></asp:BoundColumn>
                    <asp:BoundColumn></asp:BoundColumn>
                    <asp:BoundColumn DataField="phone" HeaderText="Phone"></asp:BoundColumn>
                    <asp:BoundColumn DataField="email" HeaderText="Email"></asp:BoundColumn>
                    <asp:BoundColumn DataField="place" HeaderText="Place"></asp:BoundColumn>
                    <asp:BoundColumn DataField="pincode" HeaderText="Pincode"></asp:BoundColumn>
                    <asp:BoundColumn DataField="district" HeaderText="District"></asp:BoundColumn>
                    <asp:ButtonColumn CommandName="su" Text="View surgeons">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                            Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                    </asp:ButtonColumn>
                    <asp:ButtonColumn CommandName="sr" Text="View surgeries">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                            Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" />
                    </asp:ButtonColumn>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataGrid>

        </asp:View>
        <asp:View ID="View2" runat="server">


            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Surgeons<br />
            </strong>


            <br />
            <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="247px">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="surgeon_id" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="first_name" HeaderText="First name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="last_name" HeaderText="Last name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="age" HeaderText="Age"></asp:BoundColumn>
                    <asp:BoundColumn DataField="gender" HeaderText="Gender"></asp:BoundColumn>
                    <asp:BoundColumn DataField="qualification" HeaderText="Qualification"></asp:BoundColumn>
                    <asp:BoundColumn DataField="years_of_experience" 
                        HeaderText="Year of experience"></asp:BoundColumn>
                    <asp:BoundColumn DataField="phone" HeaderText="Phone"></asp:BoundColumn>
                    <asp:BoundColumn DataField="email" HeaderText="Email"></asp:BoundColumn>
                   </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataGrid>


    </asp:View>
    <asp:View ID="View3" runat="server">


            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Surgeries<br />
            </strong>


            <br />
            <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="247px">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="surgery_id" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="category_name" HeaderText="Category name"></asp:BoundColumn>
                    
                    <asp:BoundColumn DataField="sname" HeaderText="Surgeon"></asp:BoundColumn>
                    
                    <asp:BoundColumn DataField="surgery_name" HeaderText="Surgery name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="duration" HeaderText="Duration"></asp:BoundColumn>
                    <asp:BoundColumn DataField="amount" HeaderText="Amount"></asp:BoundColumn>
                    <asp:BoundColumn DataField="description" HeaderText="Description"></asp:BoundColumn>
                    
                   </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataGrid>


    </asp:View>
    </asp:MultiView>
            
            </asp:Content>

