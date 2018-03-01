using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 功能模块 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("data source=许炜\\SQLEXPRESS;integrated security=true;initial catalog=sms");
        string selectstr = "select * from student  where sno="+t1.Text.Trim();
        SqlCommand comm = new SqlCommand(selectstr, conn);
        conn.Open();
        SqlDataAdapter sa = new SqlDataAdapter();
        sa.SelectCommand = comm;
        DataSet ds = new DataSet();
        sa.Fill(ds, "student_info");
        sa.SelectCommand.ExecuteNonQuery();
        ct1.DataSource = ds.Tables["student_info"].DefaultView;
        ct1.DataBind();
        conn.Close();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("data source=许炜\\SQLEXPRESS;integrated security=true;initial catalog=sms");
        string selectstr = "select * from course where cno="+t3.Text.Trim();
        SqlCommand comm = new SqlCommand(selectstr, conn);
        conn.Open();
        SqlDataAdapter sa = new SqlDataAdapter();
        sa.SelectCommand = comm;
        DataSet ds = new DataSet();
        sa.Fill(ds, "course_info");
        sa.SelectCommand.ExecuteNonQuery();
        ct1.DataSource = ds.Tables["course_info"].DefaultView;
        ct1.DataBind();
        conn.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("data source=许炜\\SQLEXPRESS;integrated security=true;initial catalog=sms");
        string selectstr = "select course.cname,sc.grade,sc.year from sc,student,course where sc.sno=student.sno and sc.cno=course.cno and sc.sno=" + t4.Text.Trim()+"and sc.cno="+t5.Text.Trim() ;
        SqlCommand comm = new SqlCommand(selectstr, conn);
        conn.Open();
        SqlDataAdapter sa = new SqlDataAdapter();
        sa.SelectCommand = comm;
        DataSet ds = new DataSet();
        sa.Fill(ds, "grade_info");
        sa.SelectCommand.ExecuteNonQuery();
        ct1.DataSource = ds.Tables["grade_info"].DefaultView;
        ct1.DataBind();
        conn.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("登录.aspx");
    }
}