<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师信息管理.aspx.cs" Inherits="教师信息管理" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" BackColor="Red" OnClick="Button1_Click" Text="返回" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                
                <asp:BoundField DataField="Tno" HeaderText="工号" ReadOnly="True" SortExpression="Tno" />
                <asp:BoundField DataField="Tname" HeaderText="姓名" SortExpression="Tname"  ReadOnly="true"/>
                <asp:BoundField DataField="Tpos" HeaderText="职称" SortExpression="Tpos" ReadOnly="true" />
                <asp:BoundField DataField="Tpwd" HeaderText="密码" SortExpression="Tpwd" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" DeleteCommand="DELETE FROM [Teacher] WHERE [Tno] = @Tno" InsertCommand="INSERT INTO [Teacher] ([Tno], [Tname], [Tpos], [Tpwd]) VALUES (@Tno, @Tname, @Tpos, @Tpwd)" SelectCommand="SELECT * FROM [Teacher] WHERE ([Tno] = @Tno)" UpdateCommand="UPDATE [Teacher] SET [Tname] = @Tname, [Tpos] = @Tpos, [Tpwd] = @Tpwd WHERE [Tno] = @Tno">
            <DeleteParameters>
                <asp:Parameter Name="Tno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tno" Type="String" />
                <asp:Parameter Name="Tname" Type="String" />
                <asp:Parameter Name="Tpos" Type="String" />
                <asp:Parameter Name="Tpwd" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Tno" SessionField="usrname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tname" Type="String" />
                <asp:Parameter Name="Tpos" Type="String" />
                <asp:Parameter Name="Tpwd" Type="String" />
                <asp:Parameter Name="Tno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
