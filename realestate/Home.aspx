<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Debug="true" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<div align="center">
     <div id="my" align="center">
                    <img alt="real" class="my" width="70%" height="400" src="img/dining_room_mme.png"/>
	        </div>
            <br />
            <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx" 
        BackColor="White" ForeColor="Black" 
    style="font-size: xx-large; font-family: Algerian; background-color: #999999">Login</asp:LinkButton>
    </div>
<br />
</asp:Content>

