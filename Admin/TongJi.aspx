<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TongJi.aspx.cs" Inherits="Admin_TongJi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>入库信息</title>
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
            销售统计</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top"   style="height: 49px"> </td>
  </tr>
        <tr>
            <td   style="height: 35px" valign="middle">
            </td>
            <td bgcolor="#f7f8f9" style="height: 35px" valign="top" align="center">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="126px">
                    <asp:ListItem>当日</asp:ListItem>
                    <asp:ListItem>当月</asp:ListItem>
                    <asp:ListItem>所有</asp:ListItem>
                </asp:DropDownList></td>
            <td   style="height: 35px">
            </td>
        </tr>
  <tr>
    <td valign="middle"  >&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
        <asp:GridView ID="dlinfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataKeyNames="id" OnPageIndexChanging="dlinfo_PageIndexChanging"
            OnRowDataBound="dlinfo_RowDataBound" OnRowDeleting="dlinfo_RowDeleting" Width="100%">
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageButtonCount="12"
                PreviousPageText="上一页" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
                <asp:TemplateField HeaderText="药品名称">
                    <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%# Bind("name") %>' Width="158px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="客户">
                    <ItemTemplate>
                        <asp:Label ID="CManger" runat="server" Text='<%# Bind("CManger") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="时间">
                    <ItemTemplate>
                        <asp:Label ID="AddTime" runat="server" Text='<%# Bind("AddTime") %>' Width="168px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="备注">
                    <ItemTemplate>
                        <asp:Label ID="YuanYin" runat="server" Text='<%# Bind("YuanYin") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="数量">
                    <ItemTemplate>
                        <asp:Label ID="ShuLiang" runat="server" Text='<%# Bind("ShuLiang") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="进货价格">
                    <ItemTemplate>
                        <asp:Label ID="JinHuoJia" runat="server" Text='<%# Bind("JinHuoJia") %>' Width="98px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="销售价格">
                    <ItemTemplate>
                        <asp:Label ID="XiaoShouJia" runat="server" Text='<%# Bind("XiaoShouJia") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
            </Columns>
            <PagerTemplate>
                <table border="0" width="100%">
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                            共
                            <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>
                            页 第
                            <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>
                            页
                        </td>
                        <td align="right" width="20%">
                        </td>
                    </tr>
                </table>
            </PagerTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" CssClass="ct" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </td>
    <td  >&nbsp;</td>
  </tr>
        <tr>
            <td   valign="middle">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top">
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
            <td  >
            </td>
        </tr>
  <tr>
    <td valign="bottom" style="height: 21px"  > </td>
    <td style="height: 21px" align="center"  > 当前总销售额为：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label> 当前总利润：<asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label></td>
    <td valign="bottom" style="height: 21px"  > </td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
