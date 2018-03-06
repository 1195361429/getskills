using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 已选课程 : System.Web.UI.Page
{
    public SqlConnection createconn()
    {
 String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        return conn;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection conn = createconn();
        conn.Open();
        String comstr = "select * from SC where Sno="+Session["usrname"].ToString();
        SqlCommand com = new SqlCommand(comstr);
        int i = Convert.ToInt32(com.ExecuteScalar());

        SqlDataReader sdr = com.ExecuteReader();


        GridView1.DataSource = sdr;
        GridView1.DataBind();
        conn.Close();

       

    }
}