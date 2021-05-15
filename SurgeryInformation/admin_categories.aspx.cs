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
            DataGrid1.DataSource = db.DataReturn("select * from surgery_category");
            DataGrid1.DataBind();
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = "insert into surgery_category (category_name, category_description) values ('" + TextBox1.Text + "', '" + TextBox2.Text + "')";
        db.DataNonReturn(qry);
        Response.Write("<script>alert('Category added successfully')</script>");
        Response.Write("<script>window.location='admin_categories.aspx'</script>");
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox3.Text = e.Item.Cells[1].Text;
            TextBox4.Text = e.Item.Cells[2].Text;
       
        }
        if (e.CommandName == "d")
        {
            string qry = "delete from surgery_category  where category_id='" + id + "'";
            db.DataNonReturn(qry);

            Response.Write("<script>alert('Deleted Successfully !!!');window.location='admin_categories.aspx'</script>");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry = "update surgery_category set category_name='" + TextBox3.Text + "',category_description='" + TextBox4.Text + "' where category_id='" + id + "'";
        db.DataNonReturn(qry);

        Response.Write("<script>alert('Updated Successfully !!!');window.location='admin_categories.aspx'</script>");

    }
}