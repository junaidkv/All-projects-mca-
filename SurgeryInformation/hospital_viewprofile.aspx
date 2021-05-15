<%@ Page Title="" Language="C#" MasterPageFile="~/HospitalMaster.master" AutoEventWireup="true" CodeFile="hospital_viewprofile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">

            <p>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hospitals</strong></p>
          
            <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Width="315px" AutoGenerateColumns="False" 
                onitemcommand="DataGrid1_ItemCommand">
                <AlternatingItemStyle BackColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="hospital_id" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="name" HeaderText="Hospital name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="phone" HeaderText="Phone"></asp:BoundColumn>
                    <asp:BoundColumn DataField="email" HeaderText="Email"></asp:BoundColumn>
                    <asp:BoundColumn DataField="place" HeaderText="Place"></asp:BoundColumn>
                    <asp:BoundColumn DataField="pincode" HeaderText="Pincode"></asp:BoundColumn>
                    <asp:BoundColumn DataField="district" HeaderText="District"></asp:BoundColumn>
                    <asp:ButtonColumn CommandName="u" Text="Update">
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


              <table align="center">
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td class="style1">
                          Name</td>
                      <td>
                          <asp:TextBox ID="TextBox1" runat="server" class="form-control" required="" 
                              ReadOnly="True"></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td class="style1">
                          Phone</td>
                      <td>
                          <asp:TextBox ID="TextBox3" runat="server" class="form-control" required=""></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                      <td>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                              ControlToValidate="TextBox3" ErrorMessage="Enter valid  number" ForeColor="Red" 
                              ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td class="style1">
                          Email</td>
                      <td>
                          <asp:TextBox ID="TextBox4" runat="server" class="form-control" required=""></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                      <td>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                              ControlToValidate="TextBox4" ErrorMessage="Enter valid  email" ForeColor="Red" 
                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td class="style1">
                          Place</td>
                      <td>
                          <asp:TextBox ID="TextBox5" runat="server" class="form-control" required=""></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td class="style1">
                          Pincode</td>
                      <td>
                          <asp:TextBox ID="TextBox6" runat="server" class="form-control" required=""></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                      <td>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                              ControlToValidate="TextBox6" ErrorMessage="Enter valid  pin" ForeColor="Red" 
                              ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td class="style1">
                          District</td>
                      <td>
                          <asp:TextBox ID="TextBox7" runat="server" class="form-control" required=""></asp:TextBox>
                      </td>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td class="style1">
                          &nbsp;</td>
                      <td>
                          <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                              Text="Update" />
                      </td>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
              </table>


            </asp:View>
    </asp:MultiView>
            
            </asp:Content>

