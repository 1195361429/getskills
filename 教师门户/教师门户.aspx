<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师门户.aspx.cs" Inherits="教师门户" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <asp:Image ID="Image1" runat="server" Height="152px" Width="1511px"  ImageUrl="..\img/1.jpg"/>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Size="14px" ForeColor="#161621"  Orientation="Horizontal" PathSeparator="1" StaticEnableDefaultPopOutImage="False" Width="100%">
            <DynamicMenuStyle BackColor="#D0E6DE" />
            <DynamicMenuItemStyle ItemSpacing="5px" />
            <Items>
                <asp:MenuItem NavigateUrl="教师信息管理.aspx" Target="fr" Text="个人信息"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="课程信息.aspx" Target="fr" Text="任课信息"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="学生成绩管理.aspx" Target="fr" Text="成绩录入"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="..\登录.aspx"  Text="退出"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <iframe id="fr" name="fr" style="width: 70%; height: 476px; margin-left: 357px; margin-bottom: 0px;"></iframe>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
