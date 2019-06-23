<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddRuKu.aspx.cs" Inherits="Admin_AddRuKu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>药品入库</title>
      <script language="javascript" type="text/javascript" src="../JavaScript/Calendar.js"></script>
    <script type="text/javascript">
var oCalendarEn=new PopupCalendar("oCalendarEn");    //初始化控件时,请给出实例名称如:oCalendarEn
oCalendarEn.Init();
var oCalendarChs=new PopupCalendar("oCalendarChs");    //初始化控件时,请给出实例名称:oCalendarChs
oCalendarChs.weekDaySting=new Array("日","一","二","三","四","五","六");
oCalendarChs.monthSting=new Array("一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月");
oCalendarChs.oBtnTodayTitle="今天";
oCalendarChs.oBtnCancelTitle="取消";
oCalendarChs.Init();</script> 
	<script language="javascript">
function clockon(){
var date=new Date();
var YY=date.getYear();
var MM=date.getMonth()+1;
var DD=date.getDate();
var KK=date.getDay();
var HH=date.getHours();
var mm=date.getMinutes();
var SS=date.getSeconds();
if (MM<10) MM="0"+MM;
if (DD<10) DD="0"+DD;
if (HH<10) HH="0"+HH;
if (mm<10) mm="0"+mm;
if (SS<10) SS="0"+SS;
switch (KK){
   case 1:
    KK="星期一";
    break;
   case 2:
    KK="星期二";
    break;
   case 3:
    KK="星期三";
    break;
   case 4:
    KK="星期四";
    break;
   case 5:
    KK="星期五";
    break;
   case 6:
    KK="星期六";
    break;
   case 0:
    KK="星期日";
    break;
}
var str_date=""+YY+"年"+MM+"月"+DD+"日 "+KK+" "+HH+":"+mm+":"+SS;
if(document.all){
div_date.innerHTML=str_date;
}
var timer=setTimeout("clockon()",200);
}
</script>
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
    <td width="17" valign="top"   style="height: 47px"> </td>
    <td valign="top"   style="height: 47px"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            药品入库</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"   style="height: 47px"> </td>
  </tr>
  <tr>
    <td valign="middle"  >&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr height="20">
            <td lang="zh-cn" style="height: 20px">
                药品名称：<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Width="369px">
                </asp:DropDownList></td>
        </tr>
            
        </table>
    </td>
    <td  >&nbsp;</td>
  </tr>
        <tr>
            <td   valign="middle" style="height: 19px">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top" style="height: 19px">
                入库信息</td>
            <td   style="height: 19px">
            </td>
        </tr>
        <tr>
            <td style="height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#f7f8f9" style="height: 24px" valign="top">
                进货价格：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td   style="height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#f7f8f9" style="height: 24px" valign="top">
                入库数量：<asp:TextBox ID="TextBox1" runat="server" Width="110px"></asp:TextBox>
                输入入库数量<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td   style="height: 24px">
            </td>
        </tr>
        <tr>
            <td   style="height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#f7f8f9" style="height: 24px" valign="top">
                入库库房：<asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                </asp:DropDownList></td>
            <td   style="height: 24px">
            </td>
        </tr>
        <tr>
            <td style="height: 24px" valign="middle">
            </td>
            <td align="left" bgcolor="#f7f8f9" style="height: 24px" valign="top">
                供货商：<asp:TextBox ID="TextBox2" runat="server" Width="251px"></asp:TextBox></td>
            <td style="height: 24px">
            </td>
        </tr>
        <tr>
            <td   style="height: 19px" valign="middle">
            </td>
            <td align="center" bgcolor="#f7f8f9" style="height: 19px" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确 认" />
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
