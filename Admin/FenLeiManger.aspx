﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FenLeiManger.aspx.cs" Inherits="Admin_FenLeiManger" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>部门管理</title>
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
            分类管理</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"   style="height: 49px"> </td>
  </tr>
        <tr>
            <td   style="height: 31px" valign="middle">
            </td>
            <td bgcolor="#f7f8f9" style="height: 31px" valign="top">
                <span lang="zh-cn">分类名称</span>：<asp:TextBox ID="TextBox1" runat="server" Width="155px"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click"
                    Text="添 加"   />
                &nbsp;</td>
            <td   style="height: 31px">
            </td>
        </tr>
  <tr>
    <td valign="middle"  >&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
        <asp:GridView ID="dlinfo" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" 
            OnPageIndexChanging="dlinfo_PageIndexChanging" 
            OnRowDataBound="dlinfo_RowDataBound" OnRowDeleting="dlinfo_RowDeleting" 
            Width="100%">
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" CssClass="ct" Font-Bold="True" 
                ForeColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="分类名称">
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                    <ItemTemplate>
                        <asp:Label ID="Name" runat="server" Text='<%# Bind("Name") %>' Width="128px"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                 
                <asp:TemplateField HeaderText="修改">
                      <ItemStyle HorizontalAlign="Left" Width="100px" />
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" 
                            NavigateUrl='<%# "Modify_FenLei.aspx?id="+Eval("id") %>' Text="修改"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="删除" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="删除" Width="71px"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                PageButtonCount="12" PreviousPageText="上一页" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <PagerTemplate>
                <table border="0" width="100%">
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" 
                                CommandName="Page" 
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" 
                                CommandArgument="Prev" CommandName="Page" 
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" 
                                CommandName="Page" 
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" 
                                CommandName="Page" 
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                            共 
                            <asp:Label ID="LabelPageCount" runat="server" 
                                Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>
                            页 第 
                            <asp:Label ID="Label2" runat="server" 
                                Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>
                            页 
                        </td>
                        <td align="right" width="20%">
                        </td>
                    </tr>
                </table>
            </PagerTemplate>
        </asp:GridView>
    </td>
    <td  >&nbsp;</td>
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
