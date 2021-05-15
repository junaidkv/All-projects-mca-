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
            MultiView1.SetActiveView(View1);
            cmd.CommandText = "select * from student inner join rooms on student.room_id=rooms.room_id  where login_id='" + Session["logid"] + "'";
            dt = con.data_return(cmd);
            if (dt.Rows.Count > 0)
            {
                DataGrid1.DataSource = dt;
                DataGrid1.DataBind();
            }
            else
            {
                Label1.Text = "Room not assigned";
            }
        }
    }
   
}