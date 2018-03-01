<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生成绩管理.aspx.cs" Inherits="学生成绩管理" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <asp:Image ID="Image1" runat="server" Height="152px" Width="1511px"  ImageUrl="img/student_header.jpg"/>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button6" runat="server" BackColor="Red" OnClick="Button6_Click" Text="返回" />

            <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:smsConnectionString %>"  SelectCommand="SELECT * FROM [sc]" 
            DeleteCommand="DELETE FROM [sc] WHERE [scno] = @scno" 
            InsertCommand="INSERT INTO [sc] ([scno], [sno], [cno], [grade], [year]) VALUES (@scno, @sno, @cno, @grade, @year)" 
            UpdateCommand="UPDATE [sc] SET [sno] = @sno, [cno] = @cno, [grade] = @grade, [year] = @year WHERE [scno] = @scno">
            <DeleteParameters>
                <asp:Parameter Name="scno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="scno" Type="String" />
                <asp:Parameter Name="sno" Type="String" />
                <asp:Parameter Name="cno" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="year" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sno" Type="String" />
                <asp:Parameter Name="cno" Type="String" />
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="year" Type="String" />
                <asp:Parameter Name="scno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="scno" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="scnoLabel" runat="server" Text='<%# Eval("scno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="yearLabel" runat="server" Text='<%# Eval("year") %>' />
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
                            <asp:Label ID="scnoLabel1" runat="server" Text='<%# Eval("scno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="snoTextBox" runat="server" Text='<%# Bind("sno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gradeTextBox" runat="server" Text='<%# Bind("grade") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="yearTextBox" runat="server" Text='<%# Bind("year") %>' />
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
                            <asp:TextBox ID="scnoTextBox" runat="server" Text='<%# Bind("scno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="snoTextBox" runat="server" Text='<%# Bind("sno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="cnoTextBox" runat="server" Text='<%# Bind("cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gradeTextBox" runat="server" Text='<%# Bind("grade") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="yearTextBox" runat="server" Text='<%# Bind("year") %>' />
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
                            <asp:Label ID="scnoLabel" runat="server" Text='<%# Eval("scno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="yearLabel" runat="server" Text='<%# Eval("year") %>' />
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
                                        <th runat="server">scno</th>
                                        <th runat="server">sno</th>
                                        <th runat="server">cno</th>
                                        <th runat="server">grade</th>
                                        <th runat="server">year</th>
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
                            <asp:Label ID="scnoLabel" runat="server" Text='<%# Eval("scno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="cnoLabel" runat="server" Text='<%# Eval("cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gradeLabel" runat="server" Text='<%# Eval("grade") %>' />
                        </td>
                        <td>
                            <asp:Label ID="yearLabel" runat="server" Text='<%# Eval("year") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
        <p>
            *********************按条件统计成绩***********</p>
        <p>
            &nbsp;</p>
        <p>
            系：<asp:TextBox ID="t11" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;</p>
        <p>
            专业：&nbsp;&nbsp; <asp:TextBox ID="t18" runat="server"></asp:TextBox>
&nbsp;</p>
        <p>
            班级：<asp:TextBox ID="t12" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p>
            课程号：<asp:TextBox ID="t13" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p>
            年度：<asp:TextBox ID="t14" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Text="统计成绩" OnClick="Button5_Click1" />
        </p>
        <p>
            <asp:GridView ID="gv2" runat="server">
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            ******************************************************</p>
        <p>
            &nbsp;</p>
        <p>
            课程号:<asp:TextBox ID="t16" runat="server"></asp:TextBox>
        </p>
        <p>
            年度：<asp:TextBox ID="t17" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button9" runat="server" Text="统计选课人数并导出" OnClick="Button9_Click" />
        </p>

        <br />
        <asp:GridView ID="gv3" runat="server">
        </asp:GridView>
        <br />



    </form>
</body>
</html>
