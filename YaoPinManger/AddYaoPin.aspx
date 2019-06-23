<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddYaoPin.aspx.cs" Inherits="Admin_AddYaoPin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>药品管理</title>
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
    <td width="17" valign="top"   style="height: 49px"> </td>
    <td valign="top"   style="height: 49px"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            添加药品</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"   style="height: 49px"> </td>
  </tr>
  <tr>
    <td valign="middle"  >&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr height="20">
                <td lang="zh-cn" style="height: 20px">
                    <span></span>药品名称：<asp:TextBox ID="txtname" runat="server" Width="353px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                            ErrorMessage="必填"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr height="20">
            <td lang="zh-cn" style="height: 20px">
                药品编号：<asp:TextBox ID="TextBox1" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr height="20">
            <td lang="zh-cn" style="height: 20px">
                药品规格：<asp:TextBox ID="TextBox3" runat="server" Width="128px"></asp:TextBox></td>
        </tr>
        <tr height="20">
            <td lang="zh-cn" style="height: 19px">
                所属分类：<asp:DropDownList ID="DropDownList1" runat="server" Width="124px">
                </asp:DropDownList></td>
        </tr>
        <tr height="20">
            <td lang="zh-cn" style="height: 20px">
                进货价格：<asp:TextBox ID="TextBox2" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
        <tr height="20">
            <td lang="zh-cn" style="height: 20px">
                销售价格：<asp:TextBox ID="TextBox4" runat="server" Width="128px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="必填"></asp:RequiredFieldValidator></td>
        </tr>
          
         
        <tr height="20">
            <td>
                <asp:Image ID="Image1" runat="server" Height="129px" Width="114px" /><br />
                <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                    id="file1" runat="server" class="inputBox" style="width: 141px" type="file" />&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton"
                    Height="22px" OnClick="Button2_Click" Text="上传图片" Width="97px" /><asp:Label ID="Label1"
                        runat="server" Visible="False" Width="60px"></asp:Label>
                &nbsp; &nbsp;
            </td>
        </tr>
            <tr height="20">
                <td align="center" style="height: 20px">
                    <span lang="zh-cn">药品说明</span></td>
            </tr>
            <tr height="20">
                <td align="center" style="height: 20px">
                    <asp:TextBox ID="txtds" runat="server" Height="81px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
        </table>
    </td>
    <td  >&nbsp;</td>
  </tr>
        <tr>
            <td   valign="middle" style="height: 19px">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top" style="height: 19px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" />
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td   style="height: 19px">
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
