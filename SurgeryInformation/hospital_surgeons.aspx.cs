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
        MultiView1.SetActiveView(View1);
        DataGrid1.DataSource = db.DataReturn("select surgeon_id as ID, (first_name +' '+ last_name) as NAME, age as AGE, gender as GENDER, qualification as QUALIFICATION, years_of_experience as EXPERIENCE, phone as PHONE, email as EMAIL from surgeons where hospital_id = " + Session["hospital_id"].ToString());
        DataGrid1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = "";
        if (RadioButton1.Checked)
        {
            gender = "Male";
        }
        else if (RadioButton2.Checked)
        {
            gender = "Female";
        }
        string str = "insert into surgeons (hospital_id, first_name, last_name, age, gender, qualification, years_of_experience, phone, email) values (" + Session["hospital_id"].ToString() + ", '" + TextBox5.Text + "', '" + TextBox6.Text + "', "+TextBox7.Text+", '"+gender+"', '" + TextBox8.Text + "', '" + TextBox9.Text + "', '" + TextBox10.Text + "', '"+TextBox11.Text+"')";
        db.DataNonReturn(str);
        Response.Write("<script>alert('Surgeon Registered successfully')</script>");
        Response.Write("<script>window.location='hospital_surgeons.aspx'</script>");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox1.Text = e.Item.Cells[1].Text;
            TextBox3.Text = e.Item.Cells[2].Text;
            TextBox4.Text = e.Item.Cells[4].Text;
            TextBox12.Text = e.Item.Cells[5].Text;
            TextBox13.Text = e.Item.Cells[6].Text;
            TextBox14.Text = e.Item.Cells[7].Text;
        }
        if (e.CommandName == "d")
        {
            string qry = "delete from surgeons  where surgeon_id='" + id + "'";
            db.DataNonReturn(qry);
            Response.Write("<script>alert('Deleted Successfully !!!');window.location='hospital_surgeons.aspx'</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry = "update surgeons set age='" + TextBox3.Text + "',qualification='" + TextBox4.Text + "',years_of_experience='" + TextBox12.Text + "',phone='" + TextBox13.Text + "',email='" + TextBox14.Text + "' where surgeon_id='" + id + "'";
        db.DataNonReturn(qry);

        Response.Write("<script>alert('Updated Successfully !!!');window.location='hospital_surgeons.aspx'</script>");

    }
}