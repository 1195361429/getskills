<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生门户.aspx.cs" Inherits="功能模块" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <form id="form1" runat="server">
        <div>
            <p style="margin-left: 40px">
                <asp:Image ID="Image1" runat="server" Height="190px" Width="1458px" ImageUrl="img/student_header.jpg" ImageAlign="Top"/>
            </p>
            <p style="margin-left: 40px" aria-sort="none">
            请选择您要实现的功能：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button5" runat="server" BackColor="Red" OnClick="Button5_Click" Text="退出" />
            </p>
            <p style="margin-left: 40px">
                学号：<asp:TextBox ID="t1" runat="server"></asp:TextBox>
                <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="个人信息查询" Width="133px" OnClick="Button1_Click" BackColor="#CC00CC" />
            <br />
                </p>
            <p style="margin-left: 40px">
                课程信息查询：<br />
            课程号：<asp:TextBox ID="t3" runat="server" Width="276px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="查询" Width="130px" OnClick="Button3_Click" BackColor="#CC0066" />
            <br />
            <br />
                学生成绩查询：<br />
            学号：<asp:TextBox ID="t4" runat="server"  Width="289px"></asp:TextBox>
            <br />
            课程号：<asp:TextBox ID="t5" runat="server"  Width="289px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="查询" Width="133px" OnClick="Button4_Click" BackColor="#3399FF" />
            <br />
            <br />
            </p>
        </div>
        <asp:GridView ID="ct1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
