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
        DataGrid1.DataSource = db.DataReturn("select surgeon_id as ID, (first_name +' '+ last_name) as NAME, name as HOSPITAL, age as AGE, gender as GENDER, qualification as QUALIFICATION, years_of_experience as EXPERIENCE, surgeons.phone as PHONE, surgeons.email as EMAIL from surgeons inner join hospital on hospital.hospital_id = surgeons.hospital_id");
        DataGrid1.DataBind();
    }
}