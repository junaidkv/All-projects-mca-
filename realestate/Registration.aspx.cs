using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["realConnectionString"].ToString());

    public void clear()
    {

        TextBox1.Text = "";

        TextBox2.Text = "";

        TextBox3.Text = "";

        TextBox4.Text = "";

        TextBox5.Text = "";

        TextBox6.Text = "";

        RadioButtonList1.ClearSelection();
    }



    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select * From user1 Where username='" + TextBox7.Text + "'", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Close();
                Label7.Text = "User Name Already Exist";
                Label7.ForeColor = Color.Red;
                TextBox7.Focus();
                con.Close();

            }
            else
            {
                System.IO.Directory.CreateDirectory(MapPath("~/User/" + TextBox7.Text));
                dr.Close();
                SqlCommand cmd = new SqlCommand("insert into user1 values('" + TextBox7.Text + "','" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + RadioButtonList1.SelectedIndex + "','" + TextBox8.Text + "')", con);
                cmd.CommandType = CommandType.Text;

                try
                {



                    cmd.ExecuteNonQuery();

                    //Response.Write("Data inserted successfully");
                    Response.Redirect("Login.aspx");
                    con.Close();

                    clear();
                }

                catch (Exception ex)
                {

                    Response.Write(ex.Message);

                    clear();

                }

            }
        }
    }
}