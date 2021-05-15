using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("Login.aspx");
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime date = DateTime.Now;
        string date3 = date.ToString("yyyy-MM-dd");
        string time = date.ToString("HH:mm");

        con.Open();

        string message = TextBox2.Text;
        //SqlCommand cmd = new SqlCommand("insert into chat values('"+Session["uid"].ToString()+"','"+RadioButtonList1.SelectedValue.ToString()+"','"+message+"','"+date3+"','"+time+"')", con);
        SqlCommand cmd = new SqlCommand("insert into chat values('admin','" + RadioButtonList1.SelectedValue.ToString() + "','" + TextBox2.Text + "','" + date3 + "','" + time + "')", con);
        cmd.ExecuteNonQuery();

        DataList1.DataBind();
        if (TextBox2.Text != null)
        {
            TextBox2.Text = "";
        }
        con.Close();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from chat", con);
        cmd1.CommandType = CommandType.Text;
        SqlDataReader dr = cmd1.ExecuteReader();
        
        if (dr.HasRows == true)
        {
            dr.Read();
            DataList1.DataBind();
        }
        if(DataList1.Items.Count==0)
        {
                Response.Write("<script type = 'text/javascript'>" + "window.onload=function(){" + "alert('No messages available')};" + "</script>");
            }
        dr.Close();
        con.Close();

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = true;
    }
}