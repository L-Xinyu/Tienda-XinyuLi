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
public partial class Admin_AddRuKu : System.Web.UI.Page
{
    Alert alert = new Alert();
    SQL data = new SQL();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from  Store  ");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
          
            GetChanp();
        }
    }
    
    private void GetChanp()
    {
        DropDownList2.DataSource = data.GetDataReader("select * from  YaoPin   ");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
        this.DropDownList2.Items.Insert(0, new ListItem("请选择药品", "0"));
    }
    private void BinderYaoPin()
    {

        SqlDataReader dr;
        dr = data.GetDataReader("select * from  YaoPin where id='" + DropDownList2.SelectedValue + "'");
        if (dr.Read())
        {


         
            Label1.Text = dr["JinHuoJia"].ToString();
          
           
         
        }
        else
        {
            alert.Alertjs("没有药品！");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetChanp();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BinderYaoPin();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into YaoPinRuKu(shuliang,CManger,YaoPinId,GongHuoShang,JinHuoJia)values('" + TextBox1.Text + "','" + Session["admin"].ToString() + "','" + DropDownList2.SelectedValue + "','" + TextBox2.Text + "','" + Label1.Text+ "')");
       
        SqlDataReader dr;
        dr = data.GetDataReader("select   *  from YaoPinKucun where YaoPinId='" + DropDownList2.SelectedValue + "' ");
        if (dr.Read())
        {

            data.RunSql("update YaoPinKucun set shuliang=shuliang+" + float.Parse(TextBox1.Text) + "  where YaoPinId='" + DropDownList2.SelectedValue + "'");
        }
        else
        {
            data.RunSql("insert into YaoPinKucun(shuliang,YaoPinId,StoreId)values('" + TextBox1.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList1.SelectedValue + "')");
        }
    
        Alert.AlertAndRedirect("入库成功！", "AddRuKu.aspx");

    }
   
}
