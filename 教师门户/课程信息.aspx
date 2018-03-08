<%@ Page Language="C#" AutoEventWireup="true" CodeFile="课程信息.aspx.cs" Inherits="教室门户_课程信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        您的任课信息：<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Cno" HeaderText="课程号" SortExpression="Cno"/>
                <asp:BoundField DataField="Cname" HeaderText="课程名" SortExpression="Cname"/>
                <asp:BoundField DataField="Cplace" HeaderText="上课地点" SortExpression="Cplace" />
                <asp:BoundField DataField="Ctime" HeaderText="上课时间" SortExpression="Ctime" />
                <asp:BoundField DataField="Cdate" HeaderText="上课日期" SortExpression="Cdate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" SelectCommand="SELECT [Cno], [Cname], [Cplace], [Ctime], [Cdate] FROM [CT] WHERE ([Tno] = @Tno)">
            <SelectParameters>
                <asp:SessionParameter Name="Tno" SessionField="usrname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
