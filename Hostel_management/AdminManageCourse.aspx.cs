using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    ConnectionClass1 con = new ConnectionClass1();
    DataTable dt = new DataTable();
    public static string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from course";
        dt = con.data_return(cmd);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        MultiView1.SetActiveView(View1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into course values('"+TextBox1.Text+"','"+TextBox2.Text+"')";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManageCourse.aspx");
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "d")
        {
            cmd.CommandText ="delete from course where course_id='"+id+"'";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManageCourse.aspx");
        }
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox3.Text = e.Item.Cells[1].Text;
            TextBox4.Text = e.Item.Cells[2].Text;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "update course set course='"+TextBox3.Text+"',description='"+TextBox4.Text+"' where course_id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Write("<script>alert('Updated Successfully');window.location='AdminManageCourse.aspx'</script>");
 
    }
}