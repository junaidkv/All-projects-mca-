using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    db_operator db = new db_operator();
    protected void Page_Load(object sender, EventArgs e)
    {
        string qry = "select * from hospital where login_id = " + Session["login_id"].ToString();
        DataTable dt = new DataTable();
        dt = db.DataReturn(qry);
        DataRow dr = dt.Rows[0];
        Session["hospital_id"] = dr["hospital_id"].ToString();
    }
}