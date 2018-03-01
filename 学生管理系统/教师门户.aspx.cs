using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 教师门户 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("data source=许炜\\SQLEXPRESS;integrated security=true;initial catalog=sms");
        string selectstr = "select * from course where cno=" + t3.Text.Trim();
        SqlCommand comm = new SqlCommand(selectstr, conn);
        conn.Open();
        SqlDataAdapter sa = new SqlDataAdapter();
        sa.SelectCommand = comm;
        DataSet ds = new DataSet();
        sa.Fill(ds, "course_info");
        sa.SelectCommand.ExecuteNonQuery();
        gv.DataSource = ds.Tables["course_info"].DefaultView;
        gv.DataBind();
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("data source=许炜\\SQLEXPRESS;integrated security=true;initial catalog=sms");
        string selectstr = "select * from teacher  where tno=" + t2.Text.Trim();
        SqlCommand comm = new SqlCommand(selectstr, conn);
        conn.Open();
        SqlDataAdapter sa = new SqlDataAdapter();
        sa.SelectCommand = comm;
        DataSet ds = new DataSet();
        sa.Fill(ds, "student_info");
        sa.SelectCommand.ExecuteNonQuery();
        gv.DataSource = ds.Tables["student_info"].DefaultView;
        gv.DataBind();
        conn.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("登录.aspx");
    }
}