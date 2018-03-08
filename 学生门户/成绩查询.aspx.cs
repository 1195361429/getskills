using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 成绩查询 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Session["usrname"] + "您好，您的成绩情况：");
        String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        String str = "select * from Grade where Sno=" + Session["usrname"];
        SqlDataAdapter da = new SqlDataAdapter(str, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        da.Dispose();
        GridView1.DataSource = ds;
        GridView1.DataBind();
        conn.Close();
    }

 
}