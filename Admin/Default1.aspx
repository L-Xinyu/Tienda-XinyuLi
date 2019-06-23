<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>药店管理系统</title>
         <link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
    <FORM id=form1   runat=server>
 
      <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 系统首页</strong>  </div>
    
    <table class="table table-hover text-center" style="font-size: 14px">
      <volist name="list" id="vo">
      <tr>
        <td colspan="8">
            当前角色：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>当前用户：
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td>
      </tr>
    </table>
  </div>
   
</FORM>
</body>
</html>
