<%@ Page Language="C#" AutoEventWireup="true" CodeFile="登录.aspx.cs" Inherits="登陆" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页面</title>
 
</head>
<body style="background-color:azure" >
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <p>
            <asp:Image ID="Image1" runat="server" ImageAlign="Top" ImageUrl="img/1.jpg" Width="1514px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            请输入您的信息：</p>
        <p>
            用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
        </p>
        <p>
            密码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空" ControlToValidate="TextBox2" ></asp:RequiredFieldValidator>
        </p>
        <p>
             

&nbsp;验证码:<asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="获取验证码" />
&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="验证码错误！" Visible="False"></asp:Label>
        </p>
        <p>
            用户：</p>
        <p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>学生</asp:ListItem>
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem>管理员</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
