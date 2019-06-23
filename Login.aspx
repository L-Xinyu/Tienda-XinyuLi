<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Denglu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>药店管理系统</title>
    	<link rel="stylesheet" href="common/layui/css/layui.css">
	<link rel="stylesheet" href="common/css/sccl.css">
</head>
<body class="login-bg">
    <form id="form1" runat="server">
   <div class="login-box">
        <header>
            <h1>药店管理系统</h1>
        </header>
        <div class="login-main">
			 
               <div class="layui-form-item">
					<label class="login-icon">
						<i class="layui-icon"> </i>
					</label>
					<input type="text" name="userName" lay-verify="userName" autocomplete="off" placeholder=" " class="layui-input" id="accounts" runat="server">
				</div>
				<div class="layui-form-item">
					<label class="login-icon">
						<i class="layui-icon"> </i>
					</label>
					<input type="password" name="password" lay-verify="password" autocomplete="off" placeholder=" " class="layui-input" id="pwd" runat="server">
				</div>
				<div class="layui-form-item">
					<label class="login-icon">
						<i class="layui-icon"> </i>
					</label>
					 
                    <asp:DropDownList ID="DropDownList1"  class="layui-input" runat="server">
                    <asp:ListItem>系统管理员</asp:ListItem>
                              
                                 
                                   <asp:ListItem>员工</asp:ListItem>
                                 
                    </asp:DropDownList></div>
				<div class="layui-form-item">
					 
					<div class="pull-right">
						<button class="layui-btn layui-btn-primary" lay-submit="" lay-filter="login" id="BUTTON1" runat="server"  onserverclick="BUTTON1_ServerClick">
							<i class="layui-icon"> </i> 登录</button>
					</div>
					<div class="clear"></div>
				</div>
			      
		</div>
    
        <footer>
            
        </footer> </form>
</body>
</html>
