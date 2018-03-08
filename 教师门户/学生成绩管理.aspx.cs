using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;
using System.Web;

public partial class 学生成绩管理 : System.Web.UI.Page
{

        
    protected void Page_Load(object sender, EventArgs e)
    {

       

      /*  String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection Conn = new SqlConnection(connstr);
        Conn.Open();
        string sqlstr = "select * from Grade where Grade.Cno in (select Grade.Cno from CT,Grade where CT.Cno=Grade.Cno and CT.Tno=" + Session["usrname"] + ")";
        SqlDataAdapter sda = new SqlDataAdapter(sqlstr, Conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        Conn.Close();
        */
        
    }


 



   /* protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        String sno, sname, cno, cname, grade;
        sno = GridView1.SelectedRow.Cells[1].Text;
        sname = GridView1.SelectedRow.Cells[2].Text;
        cno = GridView1.SelectedRow.Cells[3].Text;
        cname = GridView1.SelectedRow.Cells[4].Text;
        grade = GridView1.SelectedRow.Cells[5].Text;

   
        String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn2 = new SqlConnection(connstr);
        conn2.Open();
        String str3 = "delete from Grade where Grade.Cno=" + cno+"and Grade.Sno=" + sno;
        SqlCommand com1 = new SqlCommand(str3,conn2);
        com1.ExecuteNonQuery();
        String str4 = "insert into Grade values('" + sno + "','" + sname + "','" + cno + "','" + cname + "','" + grade + "')";
        SqlCommand com2 = new SqlCommand(str4);
        com2.ExecuteNonQuery();
        

    }


    protected void GridView1_RowCreated(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        
       String sno, sname, cno, cname, grade;
        sno = GridView1.SelectedRow.Cells[1].Text;
        sname = GridView1.SelectedRow.Cells[2].Text;
        cno = GridView1.SelectedRow.Cells[3].Text;
        cname = GridView1.SelectedRow.Cells[4].Text;
        grade = GridView1.SelectedRow.Cells[5].Text;

        String str2 = "delete from Grade where Grade.Cno=" + cno;
        String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn2 = new SqlConnection(connstr);
        conn2.Open();
        String str4 = "insert into Grade values('" + sno + "','" + sname + "','" + cno + "','" + cname + "','" + grade + "')";
        SqlCommand com2 = new SqlCommand(str4);
        com2.ExecuteNonQuery();
        
    }

    protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
    {
        String sno, sname, cno, cname, grade;
        sno = GridView1.SelectedRow.Cells[1].Text;
        sname = GridView1.SelectedRow.Cells[2].Text;
        cno = GridView1.SelectedRow.Cells[3].Text;
        cname = GridView1.SelectedRow.Cells[4].Text;
        grade = GridView1.SelectedRow.Cells[5].Text;

        String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn2 = new SqlConnection(connstr);
        conn2.Open();
        String str2 = "delete from Grade where Grade.Cno=" + cno+"and Grade.Sno="+sno;
        SqlCommand comm = new SqlCommand(str2, conn2);
        comm.ExecuteNonQuery();

     
        
    }
*/
}






    



  