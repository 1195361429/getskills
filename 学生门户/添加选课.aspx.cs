using System;
using System.Data.SqlClient;


public partial class 添加选课 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {




    }








    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String v1 = GridView1.SelectedRow.Cells[2].Text; //cno
     
        String v2 = GridView1.SelectedRow.Cells[1].Text; //cname
        String sno = Session["usrname"].ToString();
      
     
       
       String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();


        try
        {
            String instr = "insert into SC(Sno,Cno,Cname) values('" + sno + "','" + v1 + "','" + v2 + "')";
            SqlCommand com = new SqlCommand(instr, conn);
            com.ExecuteNonQuery();
        }
        catch(Exception ex)
        {
            Response.Write("已经选择该课程！" + ex.ToString());
        }
          
        }
       
        
    }

