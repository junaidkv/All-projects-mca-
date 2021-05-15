using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    db_operator db = new db_operator();
    public static string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            DataGrid1.DataSource = db.DataReturn("select *  from hospital where login_id='" + Session["login_id"] + "' ");
            DataGrid1.DataBind();
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View2);
            TextBox1.Text = e.Item.Cells[1].Text;
            TextBox3.Text=e.Item.Cells[2].Text;
            TextBox4.Text = e.Item.Cells[3].Text;
            TextBox5.Text = e.Item.Cells[4].Text;
            TextBox6.Text = e.Item.Cells[5].Text;
            TextBox7.Text = e.Item.Cells[6].Text;
        }
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "update hospital set phone='" + TextBox3.Text + "',email='" + TextBox4.Text + "',place='" + TextBox5.Text + "',pincode='" + TextBox6.Text + "',district='" + TextBox7.Text + "' where login_id='" + Session["login_id"] + "'";
        db.DataNonReturn(qry);

        Response.Write("<script>alert('Updated Successfully !!!');window.location='hospital_viewprofile.aspx'</script>");

    }
}