<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify_UserInfo.aspx.cs" Inherits="AdminManger_Modify_UserInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>修改账号信息</title>
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
    <link href="images/skin.css"rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="29" valign="top"   style="width: 8px"> </td>
    <td width="100%" height="29" valign="top"  ><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td style="height: 31px"><div class="titlebt">
            修改信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"  > </td>
  </tr>
  <tr>
    <td height="71" valign="middle"   style="width: 8px">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="height: 72px">
      <tr>
        <td valign="top" style="width: 998px; height: 20px">
            登陆帐号：<asp:TextBox ID="txtUser" runat="server" Width="148px"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser"
                ErrorMessage="*"></asp:RequiredFieldValidator><br />
            <span lang="zh-cn">
                真实姓名：</span><asp:TextBox ID="TextBox1" runat="server" Width="148px"></asp:TextBox>&nbsp;&nbsp;
            &nbsp;&nbsp; &nbsp;<br />
            所在部门：<asp:DropDownList ID="DropDownList1" runat="server" Width="124px">
            </asp:DropDownList><br />
            </td>
      </tr>
        <tr>
            <td align="center" style="width: 998px; height: 24px;" valign="top">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="修改" />
            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table></td>
    <td  >&nbsp;</td>
  </tr>
  <tr>
    <td valign="middle"   style="width: 8px"> </td>
      <td height="17" valign="top"  > </td>
    <td  > </td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
