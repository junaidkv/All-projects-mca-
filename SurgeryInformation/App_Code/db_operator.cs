using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for db_operator
/// </summary>
public class db_operator
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\Study materials\SurgeryInformation\app_data\db_surgery.mdf;Integrated Security=True;Connect Timeout=30");
    SqlCommand cmd;
    public void DataNonReturn(string query)
    {
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public DataTable DataReturn(string query)
    {
        cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
    }
}