using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ConnectionClass1
/// </summary>
public class ConnectionClass1
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Study materials\Hostel_management\hostelmangement.mdf;Integrated Security=True;Connect Timeout=30");
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
	public ConnectionClass1()
	{
		//
		// TODO: Add constructor logic here
		//
	}



    public DataTable data_return(SqlCommand cmd)
    {
        dt = new DataTable();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(dt);
        return dt;
    }

    public void data_nonreturn(SqlCommand cmd)
    {
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

}