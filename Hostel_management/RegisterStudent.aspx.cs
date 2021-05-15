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
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View2);
            cmd.CommandText = "select * from course";
            dt = con.data_return(cmd);
            DropDownList1.DataTextField = "course";
            DropDownList1.DataValueField = "course_id";
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));

            cmd.CommandText = "select * from roomtypes";
            dt = con.data_return(cmd);
            DropDownList2.DataTextField = "type_name";
            DropDownList2.DataValueField = "type_id";
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("--Select--", "0"));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into login values('" + uname.Text + "','" + password.Text + "','Pending')";
        con.data_nonreturn(cmd);

        cmd.CommandText = "insert into student values((select max(login_id) from login),'" + fname.Text + "','" + lname.Text + "','"+DropDownList1.SelectedValue.ToString()+"','0','"+hname.Text+"','"+place.Text+"','"+pin.Text+"','"+phone.Text+"','"+email.Text+"')";
        con.data_nonreturn(cmd);

        cmd.CommandText = "insert into student_requests values((select max(student_id) from student),'" + DropDownList2.SelectedValue.ToString() + "','" + System.DateTime.Now.ToShortDateString() + "','Pending')";
        con.data_nonreturn(cmd);

        Response.Write("<script>alert('Registered Successfully');window.location='RegisterStudent.aspx'</script>");
 
    }
   
}