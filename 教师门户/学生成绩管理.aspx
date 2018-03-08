<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生成绩管理.aspx.cs" Inherits="学生成绩管理"  Debug="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <form id="form1" runat="server">
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Sno,Cno" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="SnoLabel" runat="server" Text='<%# Eval("Sno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="SnoLabel1" runat="server" Text='<%# Eval("Sno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel1" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="gradeTextBox" runat="server" Text='<%# Bind("grade") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>
                        <asp:TextBox ID="SnoTextBox" runat="server" Text='<%# Bind("Sno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CnoTextBox" runat="server" Text='<%# Bind("Cno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="gradeTextBox" runat="server" Text='<%# Bind("grade") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="SnoLabel" runat="server" Text='<%# Eval("Sno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Sno</th>
                                    <th runat="server">Sname</th>
                                    <th runat="server">Cno</th>
                                    <th runat="server">Cname</th>
                                    <th runat="server">grade</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="SnoLabel" runat="server" Text='<%# Eval("Sno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" DeleteCommand="DELETE FROM [Grade] WHERE [Sno] = @Sno AND [Cno] = @Cno" InsertCommand="INSERT INTO [Grade] ([Sno], [Sname], [Cno], [Cname], [grade]) VALUES (@Sno, @Sname, @Cno, @Cname, @grade)" SelectCommand="SELECT * FROM [Grade]" UpdateCommand="UPDATE [Grade] SET [Sname] = @Sname, [Cname] = @Cname, [grade] = @grade WHERE [Sno] = @Sno AND [Cno] = @Cno">
            <DeleteParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="Cno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="Sname" Type="String" />
                <asp:Parameter Name="Cno" Type="String" />
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="grade" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sname" Type="String" />
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="grade" Type="Int16" />
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="Cno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </form>
    </body>
</html>
