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
    public static string id, studid, typeid,roomtype;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from student_requests inner join roomtypes on student_requests.type_id=roomtypes.type_id inner join student on student.student_id=student_requests.student_id where student_requests.request_status='Pending'";
        dt = con.data_return(cmd);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        MultiView1.SetActiveView(View1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "update student_requests set request_status='Accepted' where request_id='" + id + "'";
        con.data_nonreturn(cmd);

        cmd.CommandText = "update student set room_id='"+DropDownList1.SelectedValue.ToString()+"' where student_id='" + studid + "'";
        con.data_nonreturn(cmd);

        cmd.CommandText = "update login set usertype='student' where login_id=(select login_id from student where student_id='"+studid+"')";
        con.data_nonreturn(cmd);

        Response.Write("<script>alert('Approved Successfully');window.location='AdminViewStudRequest.aspx'</script>");
 
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        id = e.Item.Cells[0].Text;
        studid = e.Item.Cells[3].Text;
        typeid = e.Item.Cells[2].Text;
        roomtype = e.Item.Cells[4].Text;
        if (e.CommandName == "a")
        {
            MultiView1.SetActiveView(View2);
            if (roomtype == "Single Room")
            {
                cmd.CommandText = "select * from rooms where type_id='" + typeid + "' and room_id not in (select room_id from student)";
                dt = con.data_return(cmd);
                DropDownList1.DataTextField = "room_no";
                DropDownList1.DataValueField = "room_id";
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            if (roomtype == "Double Room")
            {
                cmd.CommandText = "select * from rooms where type_id='" + typeid + "'";
                dt = con.data_return(cmd);
                DropDownList1.DataTextField = "room_no";
                DropDownList1.DataValueField = "room_id";
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));

                cmd.CommandText = "SELECT COUNT(room_id) AS rcount, room_id FROM  student where room_id!='0' GROUP BY room_id";
                dt = con.data_return(cmd);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (Convert.ToInt32(dr["rcount"]) >= 2)
                        {
                            DropDownList1.Items.Remove(DropDownList1.Items.FindByValue(dr["room_id"].ToString()));
                        }
                    }
                }
            }
            if (roomtype == "Triple Room")
            {
                cmd.CommandText = "select * from rooms where type_id='" + typeid + "'";
                dt = con.data_return(cmd);
                DropDownList1.DataTextField = "room_no";
                DropDownList1.DataValueField = "room_id";
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));

                cmd.CommandText = "SELECT COUNT(room_id) AS rcount, room_id FROM  student where room_id!='0' GROUP BY room_id";
                dt = con.data_return(cmd);
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (Convert.ToInt32(dr["rcount"]) >= 3)
                        {
                            DropDownList1.Items.Remove(DropDownList1.Items.FindByValue(dr["room_id"].ToString()));
                        }
                    }
                }
            }

        }
        if (e.CommandName == "r")
        {
            cmd.CommandText = "update student_requests set request_status='Rejected' where request_id='" + id + "'";
            con.data_nonreturn(cmd);
            Response.Write("<script>alert('Rejected Successfully');window.location='AdminViewStudRequest.aspx'</script>");
 
        }
    }
  
       
  
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}