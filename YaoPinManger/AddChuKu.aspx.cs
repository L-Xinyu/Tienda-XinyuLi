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
public partial class Admin_AddChuKu : System.Web.UI.Page
{
    Alert alert = new Alert();
    SQL data = new SQL();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
          
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
        dr = data.GetDataReader("select * from   V_YaoPinKuCun where YaoPinId='" + DropDownList2.SelectedValue + "'   ");
        if (dr.Read())
        {

          
            txtSL.Text = dr["shuliang"].ToString();
           
          
 
         
        }
        else
        {
            alert.Alertjs("没有药品信息！");
            return;
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



        if (int.Parse(txtSL.Text) < int.Parse(TextBox1.Text))
        {
            alert.Alertjs("数量不能大于库存数量！");
        }
        else
        {
            SqlDataReader dr;
            dr = data.GetDataReader("select   *  from YaoPinKucun where YaoPinId='" + DropDownList2.SelectedValue + "'  ");
            if (dr.Read())
            {
                data.RunSql("update YaoPinKucun set shuliang=shuliang-" + float.Parse(TextBox1.Text) + " where YaoPinId='" + DropDownList2.SelectedValue + "'");

                data.RunSql("insert into YaoPinChuKu(shuliang,CManger,YaoPinId,YuanYin)values(" + TextBox1.Text.Trim() + ",'" + Session["UserName"].ToString() + "','" + DropDownList2.SelectedValue + "','" + TextBox3.Text + "')");
                Alert.AlertAndRedirect("出库成功！", "ChuKuList.aspx");

            }
            else
            {

                Alert.AlertAndRedirect("当前库存不存在不能申请出库！", "ChuKuList.aspx");

            }
        }

    }
   
}
