using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 登陆 : System.Web.UI.Page
{
    string admin_id, admin_pwd;
    protected void Page_Load(object sender, EventArgs e)
    {
        admin_id = TextBox1.Text;
        admin_pwd = TextBox2.Text;
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                SqlConnection Conn = new SqlConnection("data source=许炜\\SQLEXPRESS;Integrated Security=true;Initial Catalog=sms");
                Conn.Open();
                String selectstr = string.Format("select count(*) from student where sno='{0}' and spwd='{1}'", admin_id, admin_pwd);
                SqlCommand comm = new SqlCommand(selectstr, Conn);
                int i = Convert.ToInt32(comm.ExecuteScalar()); //返回记录数          
                if (i > 0)//如大于0，说明记录存在，登录成功
                {
                    Response.Write("登录成功！欢迎" + admin_id);
                    Conn.Close();
                    Response.Redirect("~/学生门户.aspx");
                }
                else
                {
                    Response.Write("登录名或密码错误！");
                }
            }
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                SqlConnection Conn2 = new SqlConnection("data source=许炜\\SQLEXPRESS;Integrated Security=true;Initial Catalog=sms");
                Conn2.Open();
                String selectstr2 = string.Format("select count(*) from teacher where tno='{0}' and tpwd='{1}'", admin_id, admin_pwd);
                SqlCommand comm2 = new SqlCommand(selectstr2, Conn2);
                int j = Convert.ToInt32(comm2.ExecuteScalar()); //返回记录数          
                if (j > 0)//如大于0，说明记录存在，登录成功
                {
                    Response.Write("登录成功！欢迎" + admin_id);
                    Conn2.Close();
                    Response.Redirect("~/教师门户.aspx");
                }
                else
                {
                    Response.Write("登录名或密码错误！");
                }
            }
            else if (RadioButtonList1.SelectedIndex == 2)
            {
                SqlConnection Conn2 = new SqlConnection("data source=许炜\\SQLEXPRESS;Integrated Security=true;Initial Catalog=sms");
                Conn2.Open();
                String selectstr2 = string.Format("select count(*) from manager where mno='{0}' and mpwd='{1}'", admin_id, admin_pwd);
                SqlCommand comm2 = new SqlCommand(selectstr2, Conn2);
                int k = Convert.ToInt32(comm2.ExecuteScalar()); //返回记录数          
                if (k > 0)//如大于0，说明记录存在，登录成功
                {
                    Response.Write("登录成功！欢迎" + admin_id);
                    Conn2.Close();
                    Response.Redirect("~/后台功能模块.aspx");
                }
                else
                {
                    Response.Write("登录名或密码错误！");
                }
            }
        }

        catch (Exception ex)
        {
            Response.Write("异常错误" + ex.ToString());
        }
    }
}

