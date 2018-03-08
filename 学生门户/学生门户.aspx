<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生门户.aspx.cs" Inherits="功能模块" Debug="true" %>

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



        <!--！！！！！！！！！！！！！！！！！！！通过Target属性对IFAME框架页面变换  -->
  

        <p>
        
            </p>
            <asp:Menu ID="Menu2" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem Text="个人信息" Value="个人信息" Target="fr" NavigateUrl="学生个人信息.aspx">
                        
                    </asp:MenuItem>
                    <asp:MenuItem Text="课程信息" Value="课程信息">
                        <asp:MenuItem Text="已选课程" Value="已选课程" Target="fr" NavigateUrl ="已选课程.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="添加选课" Value="添加选课"  Target="fr" NavigateUrl="添加选课.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="退出" Value="退出" NavigateUrl="..\登录.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
            <p>
        
                </p>
        <p>
        
            &nbsp;</p>
        <p>
        
        <iframe name="fr"  style="width: 70%; height: 476px; margin-left: 357px; margin-bottom: 0px;"></iframe>

    
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
