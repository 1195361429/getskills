<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师信息管理.aspx.cs" Inherits="教师信息管理" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <asp:Image ID="Image1" runat="server" Height="152px" Width="1511px"  ImageUrl="img/student_header.jpg"/>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" BackColor="Red" OnClick="Button1_Click" Text="返回" />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="tno" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="tnoLabel" runat="server" Text='<%# Eval("tno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tpwdLabel" runat="server" Text='<%# Eval("tpwd") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tnameLabel" runat="server" Text='<%# Eval("tname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tsexLabel" runat="server" Text='<%# Eval("tsex") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tageLabel" runat="server" Text='<%# Eval("tage") %>' />
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
                        <asp:Label ID="tnoLabel1" runat="server" Text='<%# Eval("tno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tpwdTextBox" runat="server" Text='<%# Bind("tpwd") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tnameTextBox" runat="server" Text='<%# Bind("tname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tsexTextBox" runat="server" Text='<%# Bind("tsex") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tageTextBox" runat="server" Text='<%# Bind("tage") %>' />
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
                        <asp:TextBox ID="tnoTextBox" runat="server" Text='<%# Bind("tno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tpwdTextBox" runat="server" Text='<%# Bind("tpwd") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tnameTextBox" runat="server" Text='<%# Bind("tname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tsexTextBox" runat="server" Text='<%# Bind("tsex") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tageTextBox" runat="server" Text='<%# Bind("tage") %>' />
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
                        <asp:Label ID="tnoLabel" runat="server" Text='<%# Eval("tno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tpwdLabel" runat="server" Text='<%# Eval("tpwd") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tnameLabel" runat="server" Text='<%# Eval("tname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tsexLabel" runat="server" Text='<%# Eval("tsex") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tageLabel" runat="server" Text='<%# Eval("tage") %>' />
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
                                    <th runat="server">tno</th>
                                    <th runat="server">tpwd</th>
                                    <th runat="server">tname</th>
                                    <th runat="server">tsex</th>
                                    <th runat="server">tage</th>
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
                        <asp:Label ID="tnoLabel" runat="server" Text='<%# Eval("tno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tpwdLabel" runat="server" Text='<%# Eval("tpwd") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tnameLabel" runat="server" Text='<%# Eval("tname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tsexLabel" runat="server" Text='<%# Eval("tsex") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tageLabel" runat="server" Text='<%# Eval("tage") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:smsConnectionString %>" DeleteCommand="DELETE FROM [teacher] WHERE [tno] = @tno" InsertCommand="INSERT INTO [teacher] ([tno], [tpwd], [tname], [tsex], [tage]) VALUES (@tno, @tpwd, @tname, @tsex, @tage)" SelectCommand="SELECT * FROM [teacher]" UpdateCommand="UPDATE [teacher] SET [tpwd] = @tpwd, [tname] = @tname, [tsex] = @tsex, [tage] = @tage WHERE [tno] = @tno">
            <DeleteParameters>
                <asp:Parameter Name="tno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tno" Type="String" />
                <asp:Parameter Name="tpwd" Type="String" />
                <asp:Parameter Name="tname" Type="String" />
                <asp:Parameter Name="tsex" Type="String" />
                <asp:Parameter Name="tage" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tpwd" Type="String" />
                <asp:Parameter Name="tname" Type="String" />
                <asp:Parameter Name="tsex" Type="String" />
                <asp:Parameter Name="tage" Type="Int32" />
                <asp:Parameter Name="tno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
