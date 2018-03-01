using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.Web;
using System.Windows;


    public partial class 学生成绩管理 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }







        protected void Button5_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source=许炜\\SQLEXPRESS;integrated security=true;initial catalog=sms");


            string selectstr1 = "select student.sno,sname,cname,grade from sc, student,course where sc.sno=student.sno and sc.cno=course.cno and " +
                "student.sdep='" + t11.Text.Trim() + "' and student.smaj='" + t18.Text.Trim() + "' and student.scla='" + t12.Text.Trim() +
                "' and course.cno='" + t13.Text.Trim() + "' and sc.year='" + t14.Text.Trim() + "'";

            SqlCommand comm = new SqlCommand(selectstr1, conn);
            conn.Open();
            SqlDataAdapter sa = new SqlDataAdapter();
            sa.SelectCommand = comm;
            DataSet ds = new DataSet();  
            sa.Fill(ds, "grade_info");
        sa.SelectCommand.ExecuteNonQuery();
        int i = ds.Tables["grade_info"].Rows.Count;
        if (i == 0)
        {
            Response.Write("没有记录");        }
            gv2.DataSource = ds.Tables["grade_info"].DefaultView;
            gv2.DataBind();
        //导出到excel
          // Export export=new Export();
           
        }



 


        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source=许炜\\SQLEXPRESS;integrated security=true;initial catalog=sms");
            string selectstr1 = "select count(*) from sc, student,course where sc.sno=student.sno and sc.cno=course.cno and " +
                       "course.cno='" + t16.Text.Trim() + "' and sc.year='" + t17.Text.Trim() + "'";

            SqlCommand comm = new SqlCommand(selectstr1, conn);
            conn.Open();
            SqlDataAdapter sa = new SqlDataAdapter();
            sa.SelectCommand = comm;
            DataSet ds = new DataSet();
            sa.Fill(ds, "grade_info");
            sa.SelectCommand.ExecuteNonQuery();
            gv3.DataSource = ds.Tables["grade_info"].DefaultView;
            gv3.DataBind();
            conn.Close();
        }



    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("后台功能模块.aspx");
    }
}
