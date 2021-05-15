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
            DataGrid1.DataSource = db.DataReturn("select surgery_id as ID, surgery_name as SURGERY, category_name as CATEGORY, duration as DURATION, amount as AMOUNT, description as DESCRIPTION from surgeries inner join surgery_category on surgery_category.category_id = surgeries.category_id where surgeries.hospital_id = " + Session["hospital_id"].ToString());
            DataGrid1.DataBind();

            DropDownList4.DataSource = db.DataReturn("select surgeon_id,first_name+' '+last_name as sname from surgeons where hospital_id='" + Session["hospital_id"].ToString() + "'");
            DropDownList4.DataValueField = "surgeon_id";
            DropDownList4.DataTextField = "sname";
            DropDownList4.DataBind();
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        DropDownList1.DataSource = db.DataReturn("select * from surgery_category");
        DropDownList1.DataValueField = "category_id";
        DropDownList1.DataTextField = "category_name";
        DropDownList1.DataBind();

        DropDownList2.DataSource = db.DataReturn("select surgeon_id,first_name+' '+last_name as sname from surgeons where hospital_id='" + Session["hospital_id"].ToString() + "'");
        DropDownList2.DataValueField = "surgeon_id";
        DropDownList2.DataTextField = "sname";
        DropDownList2.DataBind();

      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into surgeries (hospital_id,surgeon_id, category_id, surgery_name, duration, amount, description) values (" + Session["hospital_id"].ToString() + ", '" + DropDownList2.SelectedValue + "','" + DropDownList1.SelectedValue + "', '" + TextBox1.Text + "', '" + TextBox4.Text + "', " + TextBox3.Text + ", '" + TextBox2.Text + "')";
        db.DataNonReturn(str);
        Response.Write("<script>alert('Surgery Registered successfully')</script>");
        Response.Write("<script>window.location='hospital_surgery.aspx'</script>");

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox5.Text = e.Item.Cells[1].Text;
            TextBox6.Text = e.Item.Cells[3].Text;
            TextBox7.Text = e.Item.Cells[4].Text;
            TextBox8.Text = e.Item.Cells[5].Text;
        }
        if (e.CommandName == "d")
        {
            string qry = "delete from surgeries  where surgery_id='" + id + "'";
            db.DataNonReturn(qry);

            Response.Write("<script>alert('Deleted Successfully !!!');window.location='hospital_surgery.aspx'</script>");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry = "update surgeries set surgery_name='" + TextBox5.Text + "',surgeon_id='" + DropDownList4.SelectedValue.ToString() + "',duration='" + TextBox6.Text + "',amount='" + TextBox7.Text + "',description='" + TextBox8.Text + "' where surgery_id='" +id + "'";
        db.DataNonReturn(qry);

        Response.Write("<script>alert('Updated Successfully !!!');window.location='hospital_surgery.aspx'</script>");

    }
}