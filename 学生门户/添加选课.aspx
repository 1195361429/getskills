<%@ Page Language="C#" AutoEventWireup="true" CodeFile="添加选课.aspx.cs" Inherits="添加选课" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>  
            <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Cname" HeaderText="课程名" SortExpression="Cname" />
                    <asp:BoundField DataField="Cno" HeaderText="课程号" ReadOnly="True" SortExpression="Cno" />
                  
                    <asp:BoundField DataField="Ctime" HeaderText="上课时间" SortExpression="Ctime" />
                    <asp:BoundField DataField="Ccredit" HeaderText="课程学分" SortExpression="Ccredit" />
                    <asp:BoundField DataField="Cplace" HeaderText="上课地点" SortExpression="Cplace" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:xzwcConnectionString3 %>" SelectCommand="SELECT * FROM [Course]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Course] WHERE [Cno] = @original_Cno AND (([Cname] = @original_Cname) OR ([Cname] IS NULL AND @original_Cname IS NULL)) AND (([Ctime] = @original_Ctime) OR ([Ctime] IS NULL AND @original_Ctime IS NULL)) AND (([Ccredit] = @original_Ccredit) OR ([Ccredit] IS NULL AND @original_Ccredit IS NULL)) AND (([Cplace] = @original_Cplace) OR ([Cplace] IS NULL AND @original_Cplace IS NULL))" InsertCommand="INSERT INTO [Course] ([Cno], [Cname], [Ctime], [Ccredit], [Cplace]) VALUES (@Cno, @Cname, @Ctime, @Ccredit, @Cplace)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Course] SET [Cname] = @Cname, [Ctime] = @Ctime, [Ccredit] = @Ccredit, [Cplace] = @Cplace WHERE [Cno] = @original_Cno AND (([Cname] = @original_Cname) OR ([Cname] IS NULL AND @original_Cname IS NULL)) AND (([Ctime] = @original_Ctime) OR ([Ctime] IS NULL AND @original_Ctime IS NULL)) AND (([Ccredit] = @original_Ccredit) OR ([Ccredit] IS NULL AND @original_Ccredit IS NULL)) AND (([Cplace] = @original_Cplace) OR ([Cplace] IS NULL AND @original_Cplace IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cno" Type="String" />
                    <asp:Parameter Name="original_Cname" Type="String" />
                    <asp:Parameter Name="original_Ctime" Type="String" />
                    <asp:Parameter Name="original_Ccredit" Type="String" />
                    <asp:Parameter Name="original_Cplace" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cno" Type="String" />
                    <asp:Parameter Name="Cname" Type="String" />
                    <asp:Parameter Name="Ctime" Type="String" />
                    <asp:Parameter Name="Ccredit" Type="String" />
                    <asp:Parameter Name="Cplace" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Cname" Type="String" />
                    <asp:Parameter Name="Ctime" Type="String" />
                    <asp:Parameter Name="Ccredit" Type="String" />
                    <asp:Parameter Name="Cplace" Type="String" />
                    <asp:Parameter Name="original_Cno" Type="String" />
                    <asp:Parameter Name="original_Cname" Type="String" />
                    <asp:Parameter Name="original_Ctime" Type="String" />
                    <asp:Parameter Name="original_Ccredit" Type="String" />
                    <asp:Parameter Name="original_Cplace" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
