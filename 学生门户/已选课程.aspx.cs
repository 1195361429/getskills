using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 已选课程 : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Session["usrname"]+"同学您好！");


        String str = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        String str1 = "select Cname,Cdate,Ctime,Cplace from Course where Cno in (select Course.Cno from SC,Course where SC.Cno=Course.Cno and SC.Sno=" + Session["usrname"]+")";
        SqlDataAdapter sda = new SqlDataAdapter(str1, conn);
        DataTable dt1 = new DataTable();
        sda.Fill(dt1);
      
        DataTable dtclass = new DataTable();
        dtclass.Columns.Add("节数/星期");
        dtclass.Columns.Add("周一");
        dtclass.Columns.Add("周二");
        dtclass.Columns.Add("周三");
        dtclass.Columns.Add("周四");
        dtclass.Columns.Add("周五");
        dtclass.Rows.Add("1~2节");
        dtclass.Rows.Add("3~4节");
        dtclass.Rows.Add("5~6节");
        dtclass.Rows.Add("7~8节");

      

        for(int i=0;i<dt1.Rows.Count;i++)
           
            {
                if (dt1.Rows[i][1].Equals("1")&&dt1.Rows[i][2].Equals("8"))  //周一 第一节，以下类推
                {
                    dtclass.Rows[0][1] = dt1.Rows[i][0].ToString()+dt1.Rows[i][3].ToString();
                }
                if(dt1.Rows[i][1].Equals("2") && dt1.Rows[i][2].Equals("8"))//周2第1节
                {
                    dtclass.Rows[0][2] = dt1.Rows[i][0].ToString();

                }
                if (dt1.Rows[i][1].Equals("3") && dt1.Rows[i][2].Equals("8"))
                {
                    dtclass.Rows[0][3] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("4") && dt1.Rows[i][2].Equals("8"))
                {
                    dtclass.Rows[0][4] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("4") && dt1.Rows[i][2].Equals("8"))
                {
                    dtclass.Rows[0][5] = dt1.Rows[i][0].ToString();
                }

                if (dt1.Rows[i][1].Equals("1") && dt1.Rows[i][2].Equals("10"))//周二第2节，。。。
                {
                    dtclass.Rows[1][1] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("2") && dt1.Rows[i][2].Equals("10"))//周二第2节，。。。
                {
                    dtclass.Rows[1][2] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("3") && dt1.Rows[i][2].Equals("10"))//周三第2节，。。。
                {
                    dtclass.Rows[1][3] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("4") && dt1.Rows[i][2].Equals("10"))//周4第2节，。。。
                {
                    dtclass.Rows[1][4] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("5") && dt1.Rows[i][2].Equals("10"))//周5第2节，。。。
                {
                    dtclass.Rows[1][5] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("1") && dt1.Rows[i][2].Equals("13"))//周1第3节，。。。
                {
                    dtclass.Rows[2][1] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("2") && dt1.Rows[i][2].Equals("13"))//周2第3节，。。。
                {
                    dtclass.Rows[2][2] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("3") && dt1.Rows[i][2].Equals("13"))//周3第3节，。。。
                {
                    dtclass.Rows[2][3] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("4") && dt1.Rows[i][2].Equals("13"))//周4第3节，。。。
                {
                    dtclass.Rows[2][4] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("5") && dt1.Rows[i][2].Equals("13"))//周5第3节，。。。
                {
                    dtclass.Rows[2][5] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("1") && dt1.Rows[i][2].Equals("15"))//周1第4节，。。。
                {
                    dtclass.Rows[3][1] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("1") && dt1.Rows[i][2].Equals("15"))//周2第4节，。。。
                {
                    dtclass.Rows[3][2] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("1") && dt1.Rows[i][2].Equals("15"))//周3第4节，。。。
                {
                    dtclass.Rows[3][3] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("1") && dt1.Rows[i][2].Equals("15"))//周4第4节，。。。
                {
                    dtclass.Rows[3][4] = dt1.Rows[i][0].ToString();
                }
                if (dt1.Rows[i][1].Equals("1") && dt1.Rows[i][2].Equals("15"))//周5第4节，。。。
                {
                    dtclass.Rows[3][5] = dt1.Rows[i][0].ToString();
                }
                
            }
          
        GridView2.DataSource = dtclass;
        GridView2.DataBind();
        conn.Close();
       
    }

}




