using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    db_operator db = new db_operator();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataGrid1.DataSource = db.DataReturn("select user_id as ID, (first_name + ' ' + last_name) as NAME, phone as PHONE, email as EMAIL, place as PLACE, pincode as PINCODE, gender as GENDER, dob as DOB from users");
        DataGrid1.DataBind();
    }
}