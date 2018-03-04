<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生门户.aspx.cs" Inherits="功能模块" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>mainpage</title>
    <link   href="div.css" rel="stylesheet"/>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <div class="d1">
        <h3>
            1</h3>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
        
            <asp:Image ID="Image1" runat="server" Height="152px" Width="1228px" ImageUrl="~/img/1.jpg" style="margin-top: 0px"/>

    

        <p>
        
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="个人信息" style="width: 102px" />
        </p>
        
        <iframe name="fr" src="学生个人信息.aspx"height: 518px; width: 1023px" style="height: 318px; width: 1249px"></iframe>

    
        </form>

    
</body>
</html>
