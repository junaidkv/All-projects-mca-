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

    ConnectionClass1 con = new ConnectionClass1();
    SqlCommand cmd = new SqlCommand();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        dt = con.data_return(cmd);
        if (dt.Rows.Count > 0)
        {
            Session["logid"] = dt.Rows[0][0].ToString();
            if (dt.Rows[0][3].ToString() == "admin")
            {
                Response.Redirect("adminhome.aspx");
            }
            if (dt.Rows[0][3].ToString() == "student")
            {
                Response.Redirect("studenthome.aspx");
            }
            if (dt.Rows[0][3].ToString() == "Pending")
            {
                Response.Write("<script>alert('Your request is pending....wait for the approval.');window.location='Login.aspx'</script>");
            }
            else
            {
                Label1.Text = "Invalid username or password";
            }
        }
        else
        {
            Label1.Text = "Invalid username or password";
        }
    }
}