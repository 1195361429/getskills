<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师门户.aspx.cs" Inherits="教师门户" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <asp:Image ID="Image1" runat="server" Height="152px" Width="1511px"  ImageUrl="img/student_header.jpg"/>
    <form id="form1" runat="server">
        <p>
            教师信息查询：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="Button5" runat="server" BackColor="Red" OnClick="Button5_Click" Text="退出" />
            <br />
            教师工号：<asp:TextBox ID="t2" runat="server"  Width="330px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="查询" Width="145px" OnClick="Button2_Click" />
            </p>
        <div>
                课程信息查询：<br />
            课程号：<asp:TextBox ID="t3" runat="server" Width="276px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="查询" Width="130px" OnClick="Button3_Click" />
            <br />
        </div>
        <asp:GridView ID="gv" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
