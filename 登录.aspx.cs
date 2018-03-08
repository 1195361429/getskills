using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;


public partial class 登陆 : System.Web.UI.Page
{
    string admin_id, admin_pwd;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        admin_id = TextBox1.Text;
        admin_pwd = TextBox2.Text;
         Session["usrname"] = TextBox1.Text;  //存储用户名，传值

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String connstr = System.Configuration.ConfigurationManager.ConnectionStrings["conn1"].ToString();
        SqlConnection Conn = new SqlConnection(connstr);
        Conn.Open();
      

        try
        {
            if (string.Equals(TextBox3.Text, Label1.Text))
            {

                if (RadioButtonList1.SelectedIndex == 0)
                {


                    String selectstr = "select count(*) from Student where Sno=" + admin_id + "and Spwd=" + admin_pwd;
                    SqlCommand comm = new SqlCommand(selectstr, Conn);


                    int i = Convert.ToInt32(comm.ExecuteScalar()); //返回记录数          
                    if (i > 0)//如大于0，说明记录存在，登录成功
                    {
                        Response.Write("登录成功！欢迎" + admin_id);

                        Response.Redirect("学生门户/学生门户.aspx");
                    }
                    else
                    {
                        Response.Write("登录名或密码错误！");
                    }

                }
                else if (RadioButtonList1.SelectedIndex == 1)
                {
                  
                    String selectstr2 = string.Format("select count(*) from Teacher where Tno='{0}' and Tpwd='{1}'", admin_id, admin_pwd);
                    SqlCommand comm2 = new SqlCommand(selectstr2, Conn);
                    int j = Convert.ToInt32(comm2.ExecuteScalar()); //返回记录数          
                    if (j > 0)//如大于0，说明记录存在，登录成功
                    {
                        Response.Write("登录成功！欢迎" + admin_id);
                 
                        Response.Redirect("教师门户/教师门户.aspx");
                    }
                    else
                    {
                        Response.Write("登录名或密码错误！");
                    }
                }
                else if (RadioButtonList1.SelectedIndex == 2)
                {
               
                    String selectstr2 = string.Format("select count(*) from Manager where Mno='{0}' and Mpwd='{1}'", admin_id, admin_pwd);
                    SqlCommand comm2 = new SqlCommand(selectstr2, Conn);
                    int k = Convert.ToInt32(comm2.ExecuteScalar()); //返回记录数          
                    if (k > 0)//如大于0，说明记录存在，登录成功
                    {
                        Response.Write("登录成功！欢迎" + admin_id);
                     
                       // Response.Redirect("~/.aspx");
                    }
                    else
                    {
                        Response.Write("登录名或密码错误！");
                    }
                }

                Response.Redirect("管理员门户/系统管理员页面.aspx");
            }
            else
            {
                Label2.Visible = true;
            }
        }



        catch (Exception ex)
        {
            Response.Write("异常错误" + ex.ToString());
        }
}

protected void TextBox3_TextChanged(object sender, EventArgs e)
{

   Label2.Visible = false;

}

protected void Button2_Click(object sender, EventArgs e) //验证码
{
   Random random = new Random();
   int i = random.Next(1000, 9999);
   Label1.Text = i.ToString();
}

        }
        


