<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify_DepInfo.aspx.cs" Inherits="Admin_Modify_DepInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>修改部门信息</title>
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
    <link href="css/common.css"rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top"   style="height: 49px"> </td>
    <td valign="top"   style="height: 49px"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">修改部门</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"   style="height: 49px"> </td>
  </tr>
        <tr>
            <td   style="height: 31px" valign="middle">
            </td>
            <td bgcolor="#f7f8f9" style="height: 31px" valign="top">
                <span lang="zh-cn">部门名称</span>：<asp:TextBox ID="TextBox1" runat="server" Width="155px"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click"
                    Text="修 改" Width="89px" />
                &nbsp;</td>
            <td   style="height: 31px">
            </td>
        </tr>
        <tr>
            <td   valign="middle">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top">
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td  >
            </td>
        </tr>
  <tr>
    <td valign="bottom"  > </td>
    <td  > </td>
    <td valign="bottom"  > </td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
