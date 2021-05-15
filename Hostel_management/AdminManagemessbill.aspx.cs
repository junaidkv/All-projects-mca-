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
        cmd.CommandText = "select * from messbill inner join student on messbill.student_id=student.student_id";
        dt = con.data_return(cmd);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        MultiView1.SetActiveView(View1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into messbill values('" + DropDownList1.SelectedValue.ToString() + "','"+TextBox2.Text+"','"+TextBox3.Text+"','" + TextBox1.Text + "','Pending')";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManagemessbill.aspx");
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        cmd.CommandText = "select *,student.fname+' '+student.lname as sname from student inner join rooms on student.room_id=rooms.room_id ";
        dt = con.data_return(cmd);
        DropDownList1.DataTextField = "sname";
        DropDownList1.DataValueField = "student_id";
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "d")
        {
            cmd.CommandText = "delete from messbill where mess_bill_id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManagemessbill.aspx");
        }
    }
}