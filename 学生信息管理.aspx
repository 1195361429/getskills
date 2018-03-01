<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生信息管理.aspx.cs" Inherits="学生信息管理" %>
<script language="c#" runat="server">
    void Page_Load(Object server,EventArgs e)
    {
        
     
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
           tr{
            background-color:gray;
        }
        tr:hover{
            background-color:aqua;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:azure">
    <asp:Image ID="Image1" runat="server" Height="152px" Width="1511px"  ImageUrl="img/student_header.jpg"/>
    <form id="form1" runat="server">
        <asp:Button ID="Button6" runat="server" BackColor="Red" OnClick="Button6_Click" Text="返回" />
        <br />
        <br />
        <asp:ListView  ID="ListView1" runat="server" DataKeyNames="sno" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="" >
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="spwdLabel" runat="server" Text='<%# Eval("spwd") %>' />
                    </td>
                    <td>
                        <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ssexLabel" runat="server" Text='<%# Eval("ssex") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sageLabel" runat="server" Text='<%# Eval("sage") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sdepLabel" runat="server" Text='<%# Eval("sdep") %>' />
                    </td>
                    <td>
                        <asp:Label ID="smajLabel" runat="server" Text='<%# Eval("smaj") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sclaLabel" runat="server" Text='<%# Eval("scla") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sgraLabel" runat="server" Text='<%# Eval("sgra") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="" >
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="snoLabel1" runat="server" Text='<%# Eval("sno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="spwdTextBox" runat="server" Text='<%# Bind("spwd") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ssexTextBox" runat="server" Text='<%# Bind("ssex") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sageTextBox" runat="server" Text='<%# Bind("sage") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sdepTextBox" runat="server" Text='<%# Bind("sdep") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="smajTextBox" runat="server" Text='<%# Bind("smaj") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sclaTextBox" runat="server" Text='<%# Bind("scla") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sgraTextBox" runat="server" Text='<%# Bind("sgra") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="" >
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
                        <asp:TextBox ID="snoTextBox" runat="server" Text='<%# Bind("sno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="spwdTextBox" runat="server" Text='<%# Bind("spwd") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ssexTextBox" runat="server" Text='<%# Bind("ssex") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sageTextBox" runat="server" Text='<%# Bind("sage") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sdepTextBox" runat="server" Text='<%# Bind("sdep") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="smajTextBox" runat="server" Text='<%# Bind("smaj") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sclaTextBox" runat="server" Text='<%# Bind("scla") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="sgraTextBox" runat="server" Text='<%# Bind("sgra") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="" >
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="snoLabel"   runat="server" Text='<%# Eval("sno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="spwdLabel" runat="server" Text='<%# Eval("spwd") %>' />
                    </td>
                    <td>
                        <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ssexLabel" runat="server" Text='<%# Eval("ssex") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sageLabel" runat="server" Text='<%# Eval("sage") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sdepLabel" runat="server" Text='<%# Eval("sdep") %>' />
                    </td>
                    <td>
                        <asp:Label ID="smajLabel" runat="server" Text='<%# Eval("smaj") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sclaLabel" runat="server" Text='<%# Eval("scla") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sgraLabel" runat="server" Text='<%# Eval("sgra") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="" >
                                <tr runat="server" style="" >
                                    <th runat="server"></th>
                                    <th runat="server">sno</th>
                                    <th runat="server">spwd</th>
                                    <th runat="server">sname</th>
                                    <th runat="server">ssex</th>
                                    <th runat="server">sage</th>
                                    <th runat="server">sdep</th>
                                    <th runat="server">smaj</th>
                                    <th runat="server">scla</th>
                                    <th runat="server">sgra</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="" >
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
                <tr style=""  >
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="snoLabel"  runat="server" Text='<%# Eval("sno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="spwdLabel" runat="server" Text='<%# Eval("spwd") %>' />
                    </td>
                    <td>
                        <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ssexLabel" runat="server" Text='<%# Eval("ssex") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sageLabel" runat="server" Text='<%# Eval("sage") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sdepLabel" runat="server" Text='<%# Eval("sdep") %>' />
                    </td>
                    <td>
                        <asp:Label ID="smajLabel" runat="server" Text='<%# Eval("smaj") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sclaLabel" runat="server" Text='<%# Eval("scla") %>' />
                    </td>
                    <td>
                        <asp:Label ID="sgraLabel" runat="server" Text='<%# Eval("sgra") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:smsConnectionString %>" DeleteCommand="DELETE FROM [student] WHERE [sno] = @sno" InsertCommand="INSERT INTO [student] ([sno], [spwd], [sname], [ssex], [sage], [sdep], [smaj], [scla], [sgra]) VALUES (@sno, @spwd, @sname, @ssex, @sage, @sdep, @smaj, @scla, @sgra)" SelectCommand="SELECT * FROM [student]" UpdateCommand="UPDATE [student] SET [spwd] = @spwd, [sname] = @sname, [ssex] = @ssex, [sage] = @sage, [sdep] = @sdep, [smaj] = @smaj, [scla] = @scla, [sgra] = @sgra WHERE [sno] = @sno">
            <DeleteParameters>
                <asp:Parameter Name="sno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sno" Type="String" />
                <asp:Parameter Name="spwd" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="ssex" Type="String" />
                <asp:Parameter Name="sage" Type="Int32" />
                <asp:Parameter Name="sdep" Type="String" />
                <asp:Parameter Name="smaj" Type="String" />
                <asp:Parameter Name="scla" Type="Int32" />
                <asp:Parameter Name="sgra" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="spwd" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="ssex" Type="String" />
                <asp:Parameter Name="sage" Type="Int32" />
                <asp:Parameter Name="sdep" Type="String" />
                <asp:Parameter Name="smaj" Type="String" />
                <asp:Parameter Name="scla" Type="Int32" />
                <asp:Parameter Name="sgra" Type="Int32" />
                <asp:Parameter Name="sno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
