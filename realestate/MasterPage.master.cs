using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cid"] != null)
        {
            LinkButton1.Visible = false;
        }
        if (Session["uid"] == null && Session["username"] == null)
        {
            lnkLogin.Visible = true;
            lnkHome.Visible = true;
            lblUser.Text = "Guest";
            lnkChngPwd.Visible = false;
            lnkWishlist.Visible = false;
            LinkButton1.Visible = false;
        }
        else if (Session["utype"]=="agent")
        {
            lnkWishlist.Visible = false;
            lnkChngPwd.Visible = true;
            lnkLogin.Text = "Logout";
            lblUser.Text = Session["uid"].ToString();
        }
        else if (Session["utype"]=="client")
        {
            lnkWishlist.Visible = true;
            lnkChngPwd.Visible = true;
            lnkLogin.Text = "Logout";
            lblUser.Text = Session["uid"].ToString();
        }
        else
        {

            lnkLogin.Text = "Logout";
            lblUser.Text = Session["username"].ToString();
            lnkChngPwd.Visible = false;
            lnkWishlist.Visible = false;
            LinkButton1.Visible = false;
        }
        
    }
    protected void lnkLogin_Click(object sender, EventArgs e)
    {
       /* if (Session["uid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Session.Clear();
            Response.Redirect("Admin.aspx");
        }*/


        if (Session["uid"] != null || Session["username"] != null)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
        else
            Response.Redirect("Login.aspx"); 

    }
    protected void lnkChngPwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChngPasswd.aspx");
    }
    protected void lnkRates_Click(object sender, EventArgs e)
    {
        Response.Redirect("rates.aspx");
    }
    protected void lnkHome_Click(object sender, EventArgs e)
    {
        if (Session["utype"] == "agent")
            Response.Redirect("sell.aspx");
        else if (Session["utype"] == "client")
            Response.Redirect("main.aspx");
        else if (Session["username"] != null)
            Response.Redirect("admin.aspx");
        else
            Response.Redirect("home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["utype"] == "agent")
        {       Response.Redirect("Chats.aspx");
        }
        else if (Session["utype"] == "client")
        {
            Response.Redirect("Chat.aspx");
        }
        else { }
    }
}
