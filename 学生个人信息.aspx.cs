using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 学生个人信息 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
    }
}