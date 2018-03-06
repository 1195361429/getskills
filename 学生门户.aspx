<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生门户.aspx.cs" Inherits="功能模块" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>mainpage</title>
    <!--<link   href="div.css" rel="stylesheet"/> -->
</head>
<body>
 
    
    <form id="form1" runat="server">
    
            <asp:Image ID="Image1" runat="server" Height="152px" Width="100%" ImageUrl="~/img/1.jpg" style="margin-top: 0px"/>



        //！！！！！！！！！！！！！！！！！！！通过Target属性对IFAME框架页面变换
       <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="100%" 
            Font-Size="14px" ForeColor="#161621" Font-Bold="True" 
            PathSeparator="1" StaticEnableDefaultPopOutImage="False" OnMenuItemClick="Menu1_MenuItemClick" 
            > 
                <DynamicMenuStyle BackColor="#D0E6DE" /> 
                <DynamicMenuItemStyle ItemSpacing="5px" /> 
                <Items> 
                        <asp:MenuItem Text="个人信息"  Target="fr" NavigateUrl="学生个人信息.aspx"></asp:MenuItem> 
                        <asp:MenuItem Text="已选课程" Target="fr" NavigateUrl ="已选课程.aspx"></asp:MenuItem> 
                        <asp:MenuItem Text="添加选课"  Target="fr" NavigateUrl="添加选课.aspx"></asp:MenuItem> 
                        <asp:MenuItem Text="在线联系" Target="fr" NavigateUrl="help.aspx"></asp:MenuItem> 
                </Items> 
            </asp:Menu> 

        <p>
        
            &nbsp;</p>
        <p>
        
            &nbsp;</p>
        <p>
        
        <iframe name="fr" src="学生个人信息.aspx" style="width: 70%; height: 476px; margin-left: 357px; margin-bottom: 0px;"></iframe>

    
        </p>
        <p>
        
            &nbsp;</p>
        <p>
        
            &nbsp;</p>
        <p>
        
            &nbsp;</p>

    
        </form>

    
</body>
</html>
