using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Sell : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["utype"] != "agent")
            Response.Redirect("Login.aspx");
        if (Session["uid"] == null)
            Response.Redirect("Login.aspx");
        Post.Visible = false;
        View.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());
            if (FileUpload1.HasFile)
            {
                string a = Session["uid"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into property(uname,area,address,type,construction,size,approxprice,entrydate,sales_status) values('" + a + "','" + txtarea.Text + "','" + txtaddress.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + DropDownList2.SelectedValue.ToString() + "'," + txtsize.Text + "," + txtprice.Text + ",'" + DateTime.Now.ToString() + "','NO')SELECT @@IDENTITY", con);
                int id = Convert.ToInt32(cmd.ExecuteScalar());

                con.Close();
                System.IO.Directory.CreateDirectory(MapPath("~/User/" + a + "/") + id);

                dynamic fileUploadControl = FileUpload1;
                foreach (var file in fileUploadControl.PostedFiles)
                {
                    string strname = Path.GetFileName(file.FileName);
                    string strpath = System.IO.Path.GetExtension(file.FileName);
                    if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".gif" && strpath != ".png")
                    {
                        Post.Visible = true;
                        Label1.Visible = true;
                        Label1.Text = "Plz upload the image!!!!";
                    }
                    else
                    {
                        file.SaveAs(Server.MapPath("~/User/" + a + "/" + id + "/") + strname);
                    }
                }
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Post.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataList1.DataBind();
        View.Visible = true;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["property_id"] = e.CommandArgument.ToString();
        Session["uname"] = Session["uid"];
        Response.Redirect("pview.aspx");

    }
}