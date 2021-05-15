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
        cmd.CommandText = "select * from student inner join rooms on student.room_id=rooms.room_id inner join roomtypes on roomtypes.type_id=rooms.type_id";
        dt = con.data_return(cmd);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        MultiView1.SetActiveView(View1);
    }
   
  
}