<%@ Page Language="C#" AutoEventWireup="true" CodeFile="课程信息管理.aspx.cs" Inherits="课程信息管理" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: larger;
        }
    </style>
</head>
<body style="background-color:azure">
    <asp:Image ID="Image1" runat="server" Height="152px" Width="1511px"  ImageUrl="img/student_header.jpg"/>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button6" runat="server" BackColor="Red" OnClick="Button6_Click" Text="返回" />
            <br />
            <strong><span class="auto-style1">课程信息</span></strong>：</div>
        <p>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="cno" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cgreLabel" runat="server" Text='<%# Eval("cgre") %>' />
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
                            <asp:Label ID="cnoLabel1" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cgreTextBox" runat="server" Text='<%# Bind("cgre") %>' />
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
                            <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cgreTextBox" runat="server" Text='<%# Bind("cgre") %>' />
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
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cgreLabel" runat="server" Text='<%# Eval("cgre") %>' />
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
                                        <th runat="server">cno</th>
                                        <th runat="server">cname</th>
                                        <th runat="server">cgre</th>
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
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
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
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cgreLabel" runat="server" Text='<%# Eval("cgre") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:smsConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [cno] = @cno" InsertCommand="INSERT INTO [course] ([cno], [cname], [cgre]) VALUES (@cno, @cname, @cgre)" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [cname] = @cname, [cgre] = @cgre WHERE [cno] = @cno">
                <DeleteParameters>
                    <asp:Parameter Name="cno" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cno" Type="String" />
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="cgre" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="cgre" Type="Int32" />
                    <asp:Parameter Name="cno" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;&nbsp;<strong><span class="auto-style1">分配教师</span></strong>：</p>
        <p>
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="ctno" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="ctnoLabel" runat="server" Text='<%# Eval("ctno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tnoLabel" runat="server" Text='<%# Eval("tno") %>' />
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
                            <asp:Label ID="ctnoLabel1" runat="server" Text='<%# Eval("ctno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tnoTextBox" runat="server" Text='<%# Bind("tno") %>' />
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
                            <asp:TextBox ID="ctnoTextBox" runat="server" Text='<%# Bind("ctno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tnoTextBox" runat="server" Text='<%# Bind("tno") %>' />
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
                            <asp:Label ID="ctnoLabel" runat="server" Text='<%# Eval("ctno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tnoLabel" runat="server" Text='<%# Eval("tno") %>' />
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
                                        <th runat="server">ctno</th>
                                        <th runat="server">cno</th>
                                        <th runat="server">tno</th>
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
                            <asp:Label ID="ctnoLabel" runat="server" Text='<%# Eval("ctno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tnoLabel" runat="server" Text='<%# Eval("tno") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:smsConnectionString %>" DeleteCommand="DELETE FROM [ct] WHERE [ctno] = @ctno" InsertCommand="INSERT INTO [ct] ([ctno], [cno], [tno]) VALUES (@ctno, @cno, @tno)" SelectCommand="SELECT * FROM [ct]" UpdateCommand="UPDATE [ct] SET [cno] = @cno, [tno] = @tno WHERE [ctno] = @ctno">
                <DeleteParameters>
                    <asp:Parameter Name="ctno" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ctno" Type="String" />
                    <asp:Parameter Name="cno" Type="String" />
                    <asp:Parameter Name="tno" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cno" Type="String" />
                    <asp:Parameter Name="tno" Type="String" />
                    <asp:Parameter Name="ctno" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
