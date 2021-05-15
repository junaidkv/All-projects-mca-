using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class pview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");
        foreach (string strfile in Directory.GetFiles(Server.MapPath("~/User/" + Session["uname"] + "/" + Session["property_id"] + "/")))
        {
            ImageButton imageButton = new ImageButton();
            FileInfo fi = new FileInfo(strfile);
            imageButton.ImageUrl = "~/User/" + Session["uname"] + "/" + Session["property_id"] + "/" + fi.Name;
            imageButton.Height = Unit.Pixel(100);
            imageButton.Style.Add("padding", "5px");
            imageButton.Width = Unit.Pixel(100);
            imageButton.Click += new ImageClickEventHandler(imageButton_Click);
            Panel1.Controls.Add(imageButton);
        }
    }
    protected void imageButton_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(((ImageButton)sender).ImageUrl);
    }
}