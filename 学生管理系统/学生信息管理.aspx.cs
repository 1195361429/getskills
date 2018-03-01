using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 学生信息管理 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
    }


    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("后台功能模块.aspx");
    }
}