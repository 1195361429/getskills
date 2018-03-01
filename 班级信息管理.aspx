<%@ Page Language="C#" AutoEventWireup="true" CodeFile="班级信息管理.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <form id="form1" runat="server">
    <p>
        <asp:Image ID="Image1" runat="server" Height="152px" Width="1511px"  ImageUrl="img/student_header.jpg"/>
        <br />
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Red" Text="返回" OnClick="Button1_Click" />
        </p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="clsno" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="clsnoLabel" runat="server" Text='<%# Eval("clsno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="depnoLabel" runat="server" Text='<%# Eval("depno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="majnoLabel" runat="server" Text='<%# Eval("majno") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="clsnoLabel1" runat="server" Text='<%# Eval("clsno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="depnoTextBox" runat="server" Text='<%# Bind("depno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="majnoTextBox" runat="server" Text='<%# Bind("majno") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                        <asp:TextBox ID="clsnoTextBox" runat="server" Text='<%# Bind("clsno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="depnoTextBox" runat="server" Text='<%# Bind("depno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="majnoTextBox" runat="server" Text='<%# Bind("majno") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="clsnoLabel" runat="server" Text='<%# Eval("clsno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="depnoLabel" runat="server" Text='<%# Eval("depno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="majnoLabel" runat="server" Text='<%# Eval("majno") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">clsno</th>
                                    <th runat="server">depno</th>
                                    <th runat="server">majno</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
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
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="clsnoLabel" runat="server" Text='<%# Eval("clsno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="depnoLabel" runat="server" Text='<%# Eval("depno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="majnoLabel" runat="server" Text='<%# Eval("majno") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:smsConnectionString %>" DeleteCommand="DELETE FROM [class] WHERE [clsno] = @clsno" InsertCommand="INSERT INTO [class] ([clsno], [depno], [majno]) VALUES (@clsno, @depno, @majno)" SelectCommand="SELECT * FROM [class]" UpdateCommand="UPDATE [class] SET [depno] = @depno, [majno] = @majno WHERE [clsno] = @clsno">
            <DeleteParameters>
                <asp:Parameter Name="clsno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="clsno" Type="String" />
                <asp:Parameter Name="depno" Type="String" />
                <asp:Parameter Name="majno" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="depno" Type="String" />
                <asp:Parameter Name="majno" Type="String" />
                <asp:Parameter Name="clsno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
