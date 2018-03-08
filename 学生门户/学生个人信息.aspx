<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生个人信息.aspx.cs" Inherits="学生个人信息" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname"  ReadOnly="true"/>
                <asp:BoundField DataField="Ssex" HeaderText="Ssex" SortExpression="Ssex" ReadOnly="true"/>
                <asp:BoundField DataField="Sage" HeaderText="Sage" SortExpression="Sage" ReadOnly="true"/>
                <asp:BoundField DataField="Sdep" HeaderText="Sdep" SortExpression="Sdep" ReadOnly="true"/>
                <asp:BoundField DataField="Spwd" HeaderText="Spwd" SortExpression="Spwd" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Sno] = @Sno" InsertCommand="INSERT INTO [Student] ([Sno], [Sname], [Ssex], [Sage], [Sdep], [Spwd]) VALUES (@Sno, @Sname, @Ssex, @Sage, @Sdep, @Spwd)" SelectCommand="SELECT * FROM [Student] WHERE ([Sno] = @Sno)" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Ssex] = @Ssex, [Sage] = @Sage, [Sdep] = @Sdep, [Spwd] = @Spwd WHERE [Sno] = @Sno">
            <DeleteParameters>
                <asp:Parameter Name="Sno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="Sname" Type="String" />
                <asp:Parameter Name="Ssex" Type="String" />
                <asp:Parameter Name="Sage" Type="String" />
                <asp:Parameter Name="Sdep" Type="String" />
                <asp:Parameter Name="Spwd" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Sno" SessionField="usrname" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sname" Type="String" />
                <asp:Parameter Name="Ssex" Type="String" />
                <asp:Parameter Name="Sage" Type="String" />
                <asp:Parameter Name="Sdep" Type="String" />
                <asp:Parameter Name="Spwd" Type="String" />
                <asp:Parameter Name="Sno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
