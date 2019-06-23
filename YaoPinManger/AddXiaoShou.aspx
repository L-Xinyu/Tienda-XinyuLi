<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddXiaoShou.aspx.cs" Inherits="UserManger_AddXiaoShou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>药品入库</title>
      <script language="javascript" type="text/javascript" src="../JavaScript/Calendar.js"></script>
    
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
    <td valign="top"   style="height: 49px"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            添加订单</div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top" bgcolor="#F7F8F9">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr height="20">
            <td lang="zh-cn" style="height: 20px">
                药品名称：<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Width="130px">
                </asp:DropDownList></td>
        </tr>
           
        <tr height="20">
            <td style="height: 20px">
                当前库存数量：<asp:TextBox ID="txtSL" runat="server"  ></asp:TextBox></td>
        </tr>
        <tr height="20">
            <td style="height: 20px">
                进货价格：<asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr height="20">
            <td style="height: 20px">
                销售价格：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        </table>
    </td>
  </tr>
        <tr>
            <td align="center" bgcolor="#f7f8f9" valign="top" style="height: 19px">
                输入销售信息</td>
        </tr>
        <tr>
            <td align="left" bgcolor="#f7f8f9" style="height: 27px" valign="top">
                销售数量：<asp:TextBox ID="TextBox1" runat="server" Width="110px"></asp:TextBox>
                输入数量<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" bgcolor="#f7f8f9" style="height: 23px" valign="top">
                订单备注：<asp:TextBox ID="TextBox3" runat="server" Width="693px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" bgcolor="#f7f8f9" style="height: 23px" valign="top">
                购买客户：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" bgcolor="#f7f8f9" style="height: 19px" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确 认" />
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
</table>
    </div>
    </form>
</body>
</html>
