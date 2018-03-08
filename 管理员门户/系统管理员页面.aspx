<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        ListView1.Visible = False
        ListView2.Visible = True
        ListView3.Visible = False
        ListView4.Visible = False
        ListView5.Visible = False
        ListView6.Visible = False


    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        ListView1.Visible = False
        ListView2.Visible = False
        ListView3.Visible = False
        ListView4.Visible = True
        ListView5.Visible = False
        ListView6.Visible = False
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        ListView1.Visible = False
        ListView2.Visible = False
        ListView3.Visible = False
        ListView4.Visible = False
        ListView5.Visible = True
        ListView6.Visible = False
    End Sub


    Protected Sub Button4_Click(sender As Object, e As EventArgs)
        ListView1.Visible = False
        ListView2.Visible = False
        ListView3.Visible = False
        ListView4.Visible = False
        ListView5.Visible = False
        ListView6.Visible = True
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs)
        ListView1.Visible = False
        ListView2.Visible = False
        ListView3.Visible = True
        ListView4.Visible = False
        ListView5.Visible = False
        ListView6.Visible = False
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs)
        ListView1.Visible = True
        ListView2.Visible = False
        ListView3.Visible = False
        ListView4.Visible = False
        ListView5.Visible = False
        ListView6.Visible = False
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs)
        Response.Redirect("..\登录.aspx")

    End Sub
</script>

<html>
<head>
<style>
    p.solid {border-style: solid}
ul
{
list-style-type:none;
margin:0;
padding:0;
overflow:hidden;
}
li
{
float:left;
}
a:link,a:visited
{
display:block;
width:450px;
font-weight:bold;
color:#FFFFFF;
background-color:#bebebe;
text-align:center;
padding:6px;
text-decoration:none;
text-transform:uppercase;
}
a:hover,a:active
{
background-color:#cc0000;
}

*{margin: 0;padding: 0;}
#bg{background: red;width: 100%;height: 35px;}
nav{height: 35px;width: 1000px;margin: 0 auto;}
nav ul li{list-style-type:none;float: left}
nav ul li a{ text-decoration: none;display: block;width: 130px;line-height: 35px;text-align: center;
             color:white;font-fimily:微软雅黑;}
nav ul li ul li{float: none}
nav ul li ul li a{color:black}
nav ul li ul{display: none;}
nav ul li:hover ul{display: block;}
    .auto-style2 {
        height: 267px;
    }
        
</style>
</head>

<body style="height: 25px">
    <form id="form1" runat="server" class="auto-style2">
<%--     <nav class="auto-style1">
<ul>
<li ><a href="#home">学生信息</a>
    <ul>
             <li><a href="#">二级导航</a></li>
             <li><a href="#">二级导航</a></li>
             <li><a href="#">二级导航</a></li>
             <li><a href="#">二级导航</a></li>
         </ul>
</li>
<li><a href="#news">教师信息</a></li>
<li><a href="#contact">成绩信息</a></li>
<li><a href="#about" >综合查询</a></li>
</ul>
          </nav>
 --%>
     
    <p>
    <asp:Image ID="Image1" runat="server" Height="152px" Width="1528px"  ImageUrl="..\img/1.jpg" style="margin-right: 0"/>
       </p>
        <p>
            &nbsp;</p>
        <p>
        <asp:Button ID="Button1" runat="server" Height="34px" Text="学生信息管理" Width="260px" BackColor="#FF66FF" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Height="34px" Text="教师信息管理" Width="260px" BackColor="#6666FF" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Height="34px" Text="考试成绩管理" Width="260px" BackColor="#66FFFF" OnClick="Button3_Click" />
       </p>
        <p>
        <asp:Button ID="Button4" runat="server" Height="34px" Text="课程信息管理" Width="260px" BackColor="#99FF99" OnClick="Button4_Click" />
        <asp:Button ID="Button6" runat="server" Height="34px" Text="学生选课管理" Width="260px" BackColor="#CCFF66" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Height="34px" Text="教师任课管理" Width="260px" BackColor="#FF9933" OnClick="Button7_Click" />

       &nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" Text="退出" OnClick="Button8_Click" />
&nbsp;&nbsp;&nbsp;

       </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" SelectCommand="SELECT * FROM [Student]" DeleteCommand="DELETE FROM [Student] WHERE [Sno] = @Sno" InsertCommand="INSERT INTO [Student] ([Sno], [Sname], [Ssex], [Sage], [Sdep], [Spwd]) VALUES (@Sno, @Sname, @Ssex, @Sage, @Sdep, @Spwd)" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Ssex] = @Ssex, [Sage] = @Sage, [Sdep] = @Sdep, [Spwd] = @Spwd WHERE [Sno] = @Sno">
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
                <UpdateParameters>
                    <asp:Parameter Name="Sname" Type="String" />
                    <asp:Parameter Name="Ssex" Type="String" />
                    <asp:Parameter Name="Sage" Type="String" />
                    <asp:Parameter Name="Sdep" Type="String" />
                    <asp:Parameter Name="Spwd" Type="String" />
                    <asp:Parameter Name="Sno" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Sno" InsertItemPosition="LastItem" Visible="False">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
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
                            <asp:Label ID="SsexLabel" runat="server" Text='<%# Eval("Ssex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SageLabel" runat="server" Text='<%# Eval("Sage") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SdepLabel" runat="server" Text='<%# Eval("Sdep") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SpwdLabel" runat="server" Text='<%# Eval("Spwd") %>' />
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
                            <asp:Label ID="SnoLabel1" runat="server" Text='<%# Eval("Sno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SsexTextBox" runat="server" Text='<%# Bind("Ssex") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SageTextBox" runat="server" Text='<%# Bind("Sage") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SdepTextBox" runat="server" Text='<%# Bind("Sdep") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SpwdTextBox" runat="server" Text='<%# Bind("Spwd") %>' />
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
                            <asp:TextBox ID="SnoTextBox" runat="server" Text='<%# Bind("Sno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SsexTextBox" runat="server" Text='<%# Bind("Ssex") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SageTextBox" runat="server" Text='<%# Bind("Sage") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SdepTextBox" runat="server" Text='<%# Bind("Sdep") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SpwdTextBox" runat="server" Text='<%# Bind("Spwd") %>' />
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
                            <asp:Label ID="SnoLabel" runat="server" Text='<%# Eval("Sno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SsexLabel" runat="server" Text='<%# Eval("Ssex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SageLabel" runat="server" Text='<%# Eval("Sage") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SdepLabel" runat="server" Text='<%# Eval("Sdep") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SpwdLabel" runat="server" Text='<%# Eval("Spwd") %>' />
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
                                        <th runat="server">Sno</th>
                                        <th runat="server">Sname</th>
                                        <th runat="server">Ssex</th>
                                        <th runat="server">Sage</th>
                                        <th runat="server">Sdep</th>
                                        <th runat="server">Spwd</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
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
                            <asp:Label ID="SnoLabel" runat="server" Text='<%# Eval("Sno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SsexLabel" runat="server" Text='<%# Eval("Ssex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SageLabel" runat="server" Text='<%# Eval("Sage") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SdepLabel" runat="server" Text='<%# Eval("Sdep") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SpwdLabel" runat="server" Text='<%# Eval("Spwd") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </p>
        <p>
            <asp:ListView ID="ListView3" runat="server" DataKeyNames="Sno,Cno" DataSourceID="SqlDataSource4" Visible="False" InsertItemPosition="LastItem">
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
                            <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
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
                            <asp:Label ID="CnoLabel1" runat="server" Text='<%# Eval("Cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
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
                            <asp:TextBox ID="CnoTextBox" runat="server" Text='<%# Bind("Cno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
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
                            <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
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
                                        <th runat="server">Cno</th>
                                        <th runat="server">Cname</th>
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
                            <asp:Label ID="SnoLabel" runat="server" Text='<%# Eval("Sno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" DeleteCommand="DELETE FROM [SC] WHERE [Sno] = @original_Sno AND [Cno] = @original_Cno" InsertCommand="INSERT INTO [SC] ([Sno], [Cno], [Cname]) VALUES (@Sno, @Cno, @Cname)" SelectCommand="SELECT * FROM [SC]" UpdateCommand="UPDATE [SC] SET [Cname] = @Cname WHERE [Sno] = @original_Sno AND [Cno] = @original_Cno" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_Sno" Type="String" />
                    <asp:Parameter Name="original_Cno" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Sno" Type="String" />
                    <asp:Parameter Name="Cno" Type="String" />
                    <asp:Parameter Name="Cname" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Cname" Type="String" />
                    <asp:Parameter Name="original_Sno" Type="String" />
                    <asp:Parameter Name="original_Cno" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:ListView ID="ListView4" runat="server" DataKeyNames="Tno" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem" Visible="False">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="TnoLabel" runat="server" Text='<%# Eval("Tno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TposLabel" runat="server" Text='<%# Eval("Tpos") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TpwdLabel" runat="server" Text='<%# Eval("Tpwd") %>' />
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
                            <asp:Label ID="TnoLabel1" runat="server" Text='<%# Eval("Tno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TnameTextBox" runat="server" Text='<%# Bind("Tname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TposTextBox" runat="server" Text='<%# Bind("Tpos") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TpwdTextBox" runat="server" Text='<%# Bind("Tpwd") %>' />
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
                            <asp:TextBox ID="TnoTextBox" runat="server" Text='<%# Bind("Tno") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TnameTextBox" runat="server" Text='<%# Bind("Tname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TposTextBox" runat="server" Text='<%# Bind("Tpos") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TpwdTextBox" runat="server" Text='<%# Bind("Tpwd") %>' />
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
                            <asp:Label ID="TnoLabel" runat="server" Text='<%# Eval("Tno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TposLabel" runat="server" Text='<%# Eval("Tpos") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TpwdLabel" runat="server" Text='<%# Eval("Tpwd") %>' />
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
                                        <th runat="server">Tno</th>
                                        <th runat="server">Tname</th>
                                        <th runat="server">Tpos</th>
                                        <th runat="server">Tpwd</th>
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
                            <asp:Label ID="TnoLabel" runat="server" Text='<%# Eval("Tno") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TposLabel" runat="server" Text='<%# Eval("Tpos") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TpwdLabel" runat="server" Text='<%# Eval("Tpwd") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" DeleteCommand="DELETE FROM [Teacher] WHERE [Tno] = @Tno" InsertCommand="INSERT INTO [Teacher] ([Tno], [Tname], [Tpos], [Tpwd]) VALUES (@Tno, @Tname, @Tpos, @Tpwd)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [Tname] = @Tname, [Tpos] = @Tpos, [Tpwd] = @Tpwd WHERE [Tno] = @Tno">
            <DeleteParameters>
                <asp:Parameter Name="Tno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Tno" Type="String" />
                <asp:Parameter Name="Tname" Type="String" />
                <asp:Parameter Name="Tpos" Type="String" />
                <asp:Parameter Name="Tpwd" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tname" Type="String" />
                <asp:Parameter Name="Tpos" Type="String" />
                <asp:Parameter Name="Tpwd" Type="String" />
                <asp:Parameter Name="Tno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView5" runat="server" DataKeyNames="Sno,Cno" DataSourceID="SqlDataSource3" Visible="False" InsertItemPosition="LastItem">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" DeleteCommand="DELETE FROM [Grade] WHERE [Sno] = @Sno AND [Cno] = @Cno" InsertCommand="INSERT INTO [Grade] ([Sno], [Sname], [Cno], [Cname], [grade]) VALUES (@Sno, @Sname, @Cno, @Cname, @grade)" SelectCommand="SELECT * FROM [Grade]" UpdateCommand="UPDATE [Grade] SET [Sname] = @Sname, [Cname] = @Cname, [grade] = @grade WHERE [Sno] = @Sno AND [Cno] = @Cno">
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
        <br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Cno,Tno" DataSourceID="SqlDataSource5" InsertItemPosition="LastItem" Visible="False">
            <AlternatingItemTemplate>
                <tr style="background-color: #FAFAD2;color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CplaceLabel" runat="server" Text='<%# Eval("Cplace") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CtimeLabel" runat="server" Text='<%# Eval("Ctime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TnoLabel" runat="server" Text='<%# Eval("Tno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #FFCC66;color: #000080;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel1" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CplaceTextBox" runat="server" Text='<%# Bind("Cplace") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CtimeTextBox" runat="server" Text='<%# Bind("Ctime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TnoLabel1" runat="server" Text='<%# Eval("Tno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TnameTextBox" runat="server" Text='<%# Bind("Tname") %>' />
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
                        <asp:TextBox ID="CnoTextBox" runat="server" Text='<%# Bind("Cno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CplaceTextBox" runat="server" Text='<%# Bind("Cplace") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CtimeTextBox" runat="server" Text='<%# Bind("Ctime") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TnoTextBox" runat="server" Text='<%# Bind("Tno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TnameTextBox" runat="server" Text='<%# Bind("Tname") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #FFFBD6;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CplaceLabel" runat="server" Text='<%# Eval("Cplace") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CtimeLabel" runat="server" Text='<%# Eval("Ctime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TnoLabel" runat="server" Text='<%# Eval("Tno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">Cno</th>
                                    <th runat="server">Cname</th>
                                    <th runat="server">Cplace</th>
                                    <th runat="server">Ctime</th>
                                    <th runat="server">Tno</th>
                                    <th runat="server">Tname</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CplaceLabel" runat="server" Text='<%# Eval("Cplace") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CtimeLabel" runat="server" Text='<%# Eval("Ctime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TnoLabel" runat="server" Text='<%# Eval("Tno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TnameLabel" runat="server" Text='<%# Eval("Tname") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" DeleteCommand="DELETE FROM [CT] WHERE [Cno] = @Cno AND [Tno] = @Tno" InsertCommand="INSERT INTO [CT] ([Cno], [Cname], [Cplace], [Ctime], [Tno], [Tname]) VALUES (@Cno, @Cname, @Cplace, @Ctime, @Tno, @Tname)" SelectCommand="SELECT * FROM [CT]" UpdateCommand="UPDATE [CT] SET [Cname] = @Cname, [Cplace] = @Cplace, [Ctime] = @Ctime, [Tname] = @Tname WHERE [Cno] = @Cno AND [Tno] = @Tno">
            <DeleteParameters>
                <asp:Parameter Name="Cno" Type="String" />
                <asp:Parameter Name="Tno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cno" Type="String" />
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="Cplace" Type="String" />
                <asp:Parameter Name="Ctime" Type="String" />
                <asp:Parameter Name="Tno" Type="String" />
                <asp:Parameter Name="Tname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cname" Type="String" />
                <asp:Parameter Name="Cplace" Type="String" />
                <asp:Parameter Name="Ctime" Type="String" />
                <asp:Parameter Name="Tname" Type="String" />
                <asp:Parameter Name="Cno" Type="String" />
                <asp:Parameter Name="Tno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView6" runat="server" DataKeyNames="Cno" DataSourceID="SqlDataSource6" Visible="False" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CtimeLabel" runat="server" Text='<%# Eval("Ctime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CcreditLabel" runat="server" Text='<%# Eval("Ccredit") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CplaceLabel" runat="server" Text='<%# Eval("Cplace") %>' />
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
                        <asp:Label ID="CnoLabel1" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CtimeTextBox" runat="server" Text='<%# Bind("Ctime") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CcreditTextBox" runat="server" Text='<%# Bind("Ccredit") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CplaceTextBox" runat="server" Text='<%# Bind("Cplace") %>' />
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
                        <asp:TextBox ID="CnoTextBox" runat="server" Text='<%# Bind("Cno") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CtimeTextBox" runat="server" Text='<%# Bind("Ctime") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CcreditTextBox" runat="server" Text='<%# Bind("Ccredit") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CplaceTextBox" runat="server" Text='<%# Bind("Cplace") %>' />
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
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CtimeLabel" runat="server" Text='<%# Eval("Ctime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CcreditLabel" runat="server" Text='<%# Eval("Ccredit") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CplaceLabel" runat="server" Text='<%# Eval("Cplace") %>' />
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
                                    <th runat="server">Cno</th>
                                    <th runat="server">Cname</th>
                                    <th runat="server">Ctime</th>
                                    <th runat="server">Ccredit</th>
                                    <th runat="server">Cplace</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
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
                        <asp:Label ID="CnoLabel" runat="server" Text='<%# Eval("Cno") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CtimeLabel" runat="server" Text='<%# Eval("Ctime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CcreditLabel" runat="server" Text='<%# Eval("Ccredit") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CplaceLabel" runat="server" Text='<%# Eval("Cplace") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:xzwcConnectionString %>" SelectCommand="SELECT * FROM [Course]" DeleteCommand="DELETE FROM [Course] WHERE [Cno] = @Cno" InsertCommand="INSERT INTO [Course] ([Cno], [Cname], [Ctime], [Ccredit], [Cplace]) VALUES (@Cno, @Cname, @Ctime, @Ccredit, @Cplace)" UpdateCommand="UPDATE [Course] SET [Cname] = @Cname, [Ctime] = @Ctime, [Ccredit] = @Ccredit, [Cplace] = @Cplace WHERE [Cno] = @Cno">
            <DeleteParameters>
                <asp:Parameter Name="Cno" Type="String" />
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
                <asp:Parameter Name="Cno" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
 
     
</body>
</html>
