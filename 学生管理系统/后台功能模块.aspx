<%@ Page Language="C#" AutoEventWireup="true" CodeFile="后台功能模块.aspx.cs" Inherits="后台功能模块t" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="147px" Width="1506px" ImageUrl="img/student_header.jpg" />
            <br />
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="学生信息管理" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="教师信息管理" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="班级信息管理" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="课程信息管理" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="学生成绩管理" />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
