using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Admin_TongJi : System.Web.UI.Page
{
    SQL data = new SQL();
    Alert alert = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string b = DateTime.Now.Date.ToShortDateString() + " 00:00";
            string et = DateTime.Now.Date.ToShortDateString() + " 23:59";
            string sql = "";

            if (DropDownList1.SelectedValue == "当日")
            {
                sql = "select sum(shuliang*XiaoShouJia) as zongjine,sum(shuliang*(XiaoShouJia-JinHuoJia)) as zonglirun   from [V_YaoPinXiaoShou] where      AddTime  between '" + Convert.ToDateTime(b) + "' and  '" + Convert.ToDateTime(et) + "'";
            }
            if (DropDownList1.SelectedValue == "当月")
            {
                sql = "select   sum(shuliang*XiaoShouJia) as zongjine ,sum(shuliang*(XiaoShouJia-JinHuoJia)) as zonglirun    from [V_YaoPinXiaoShou] where   datediff(month,AddTime,getdate())<=1";
            }
            if (DropDownList1.SelectedValue == "所有")
            {
                sql = "select     sum(shuliang*XiaoShouJia) as zongjine ,sum(shuliang*(XiaoShouJia-JinHuoJia)) as zonglirun   from [V_YaoPinXiaoShou]    ";
            }
            SqlDataReader dr = data.GetDataReader(sql);
            if (dr.Read())
            {
                Label1.Text = dr["zongjine"].ToString();

                Label3.Text = dr["zonglirun"].ToString();

            }
            getinfo();
        }
    }
    protected void dlinfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {


    }
    private void getinfo()
    {
        try
        {
            dlinfo.DataSource = GetCodeBy(0);
            dlinfo.DataBind();
        }
        catch
        {
        }
    }
    protected void dlinfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        dlinfo.PageIndex = e.NewPageIndex;
        getinfo();
    }
    protected void dlinfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //鼠标移动变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //当鼠标放上去的时候 先保存当前行的背景颜色 并给附一颜色 
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#f6f6f6',this.style.fontWeight='';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
        }
        //单击行改变行背景颜色 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onclick", "this.style.backgroundColor='#f6f6f6'; this.style.color='buttontext';this.style.cursor='default';");
        }

    }
    public DataSet GetCodeBy(int iCount)
    {
        string strTop = "";
        if (iCount > 1)
        {
            strTop = "top " + iCount.ToString();
        }
        string sql = "";
        string b = DateTime.Now.Date.ToShortDateString() + " 00:00";
        string e = DateTime.Now.Date.ToShortDateString() + " 23:59";
   

        if (DropDownList1.SelectedValue == "当日")
        {
            sql = "select  " + strTop + "  * from [V_YaoPinXiaoShou] where  AddTime  between '" + Convert.ToDateTime(b) + "' and  '" + Convert.ToDateTime(e) + "'";
        }
        if (DropDownList1.SelectedValue == "当月")
        {
            sql = "select  " + strTop + "  * from [V_YaoPinXiaoShou] where   datediff(month,AddTime,getdate())<=1";
        }
        if (DropDownList1.SelectedValue == "所有")
        {
            sql = "select  " + strTop + "  * from [V_YaoPinXiaoShou]   ";
        }
        SqlConnection con = new SqlConnection(SQL.connstring);
        SqlCommand cmd = new SqlCommand(sql, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = null;
        try
        {
            con.Open();
            ds = new DataSet();
            da.Fill(ds);

        }
        catch (SqlException ex)
        {
            throw ex;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return ds;
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        getinfo();
        string b = DateTime.Now.Date.ToShortDateString() + " 00:00";
        string et = DateTime.Now.Date.ToShortDateString() + " 23:59";
        string sql = "";

        if (DropDownList1.SelectedValue == "当日")
        {
            sql = "select sum(shuliang*XiaoShouJia) as zongjine,sum(shuliang*(XiaoShouJia-JinHuoJia)) as zonglirun     from [V_YaoPinXiaoShou] where      AddTime  between '" + Convert.ToDateTime(b) + "' and  '" + Convert.ToDateTime(et) + "'";
        }
        if (DropDownList1.SelectedValue == "当月")
        {
            sql = "select   sum(shuliang*XiaoShouJia) as zongjine ,sum(shuliang*(XiaoShouJia-JinHuoJia)) as zonglirun   from [V_YaoPinXiaoShou] where   datediff(month,AddTime,getdate())<=1";
        }
        if (DropDownList1.SelectedValue == "所有")
        {
            sql = "select     sum(shuliang*XiaoShouJia) as zongjine ,sum(shuliang*(XiaoShouJia-JinHuoJia)) as zonglirun   from [V_YaoPinXiaoShou]    ";
        }
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            Label1.Text = dr["zongjine"].ToString();

            Label3.Text = dr["zonglirun"].ToString();

        }
    }
}
