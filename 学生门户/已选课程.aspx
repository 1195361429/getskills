<%@ Page Language="C#" AutoEventWireup="true" CodeFile="已选课程.aspx.cs" Inherits="已选课程" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            您选修的课程信息：<br />
          
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sno,Cno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                <asp:BoundField DataField="Cno" HeaderText="Cno" SortExpression="Cno" ReadOnly="True" />
                <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" SelectCommand="SELECT * FROM [SC] WHERE ([Sno] = @Sno)" DeleteCommand="DELETE FROM [SC] WHERE [Sno] = @Sno AND [Cno] = @Cno" InsertCommand="INSERT INTO [SC] ([Sno], [Cno], [Cname]) VALUES (@Sno, @Cno, @Cname)" UpdateCommand="UPDATE [SC] SET [Cname] = @Cname WHERE [Sno] = @Sno AND [Cno] = @Cno">
            <DeleteParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="Cno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="Cno" Type="String" />
                <asp:Parameter Name="Cname" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Sno" SessionField="usrname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="Cno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        课程表：<asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <br />
    </form>
</body>
</html>
