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
        cmd.CommandText = "select * from rooms inner join roomtypes on rooms.type_id=roomtypes.type_id";
        dt = con.data_return(cmd);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        MultiView1.SetActiveView(View1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into rooms values('"+DropDownList1.SelectedValue.ToString()+"','"+TextBox1.Text+"','"+TextBox2.Text+"')";
        con.data_nonreturn(cmd);
        Response.Redirect("AdminManageRooms.aspx");
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        if (e.CommandName == "d")
        {
            cmd.CommandText = "delete from rooms where room_id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Redirect("AdminManageRooms.aspx");
        }
        if (e.CommandName == "u")
        {
            MultiView1.SetActiveView(View3);
            TextBox3.Text = e.Item.Cells[2].Text;
            TextBox4.Text = e.Item.Cells[3].Text;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        cmd.CommandText = "select * from roomtypes";
        dt = con.data_return(cmd);
        DropDownList1.DataTextField = "type_name";
        DropDownList1.DataValueField = "type_id";
        DropDownList1.DataSource = dt;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "update rooms set room_no='" + TextBox3.Text + "',location='"+TextBox4.Text+"' where room_id='" + id + "'";
        con.data_nonreturn(cmd);
        Response.Write("<script>alert('Updated Successfully');window.location='AdminManageRooms.aspx'</script>");
 
    }
}