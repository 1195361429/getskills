<%@ Page Language="C#" AutoEventWireup="true" CodeFile="登录.aspx.cs" Inherits="登陆" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页面</title>
    </head>
<body style="background-color:azure;border:0px;margin:0px;padding:0px;" >
    <form id="form1" runat="server">

        <p style="border:0px;margin:0px;padding:0px;">
            <asp:Image ID="Image1" runat="server" ImageAlign="Top" ImageUrl="img/1.jpg" Width="1270px"  />
        </p>
       <table style="padding:0px;border:0px;margin:0px;">
           <tr >
               <td style="width:200px;height:300px;">
                   &nbsp;</td>
               <td>
                   <table style="border:2px;border-color:black;">
                            <tr style="width:100px;height:20px;  text-align:center;border:0px;margin:0px;padding:0px;">
                                <td style="background-color:aqua;margin:0px;padding:0px;">
                                    用户名：
                                </td>
                                <td style="width:200px;height:20px;">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td style="width:200px;height:20px;">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Height="20px" ErrorMessage="用户名不能为空" ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr style="width:100px;height:20px; text-align:center;border:0px;margin:0px;padding:0px;">
                                <td style="background-color:bisque; text-align:center;" class="auto-style2">
                                    密码：
                                </td>
                                <td style="text-align:center;">
                                        <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>

                                </td>
                                <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Height="20px" ErrorMessage="密码不能为空" ControlToValidate="TextBox2" ></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="width:100px;height:20px; text-align:center;border:0px;margin:0px;padding:0px;">
                                <td class="auto-style2">
                                    验证码:
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" Height="20px" runat="server" OnTextChanged="  TextBox3_TextChanged"></asp:TextBox>
                                </td>
                                <td style="width:50px;">
                                    <asp:Label ID="Label1" runat="server" Width="50" Height="20px"></asp:Label>
                                </td>
                                <td style="width:50px;">
                                            <asp:Button ID="Button2" runat="server" Height="20px" OnClick="Button2_Click" Text="获取验证码" />

                                </td>
                                <td>
                                        <asp:Label ID="Label2" runat="server" Height="20px" ForeColor="Red" Text="验证码错误！" Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr style="width:100px;height:20px; text-align:center;border:0px;margin:0px;padding:0px;">
                                <td style="background-color:burlywood;" class="auto-style2">
                                    用户：
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" Height="20px" runat="server">
                                        <asp:ListItem>　学　生</asp:ListItem>
                                        <asp:ListItem>　教　 师</asp:ListItem>
                                        <asp:ListItem>　管理员</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                               
                            </tr>
                 </table>
               </td>
               <td style="width:200px;height:300px;">

               </td> 
               </tr> 
           <tr style="width:200px;height:20px;">
               <td style="width:200px;">

               </td>
                <td style="text-align:center;">
                    <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Height="20px" Width="100px" Text="登录" OnClick="Button1_Click" />
                </td>
               <td style="width:200px;">

               </td>
           </tr>       
           </table>
        </form>
</body>
</html>


















































