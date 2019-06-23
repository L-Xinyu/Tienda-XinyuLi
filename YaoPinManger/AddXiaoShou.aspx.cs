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

public partial class UserManger_AddXiaoShou : System.Web.UI.Page
{
    Alert alert = new Alert();
    SQL data = new SQL();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

          
            GetChanp();


            SqlDataReader dr;
            dr = data.GetDataReader("select * from  YaoPin where id='" + DropDownList2.SelectedValue + "'");
            if (dr.Read())
            {

                Label2.Text = dr["JinHuoJia"].ToString();

                Label1.Text = dr["XiaoShouJia"].ToString();



            }
            else
            {
                
            }
        }
    }
  
    private void GetChanp()
    {
        DropDownList2.DataSource = data.GetDataReader("select * from  YaoPin  ");
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "id";
        DropDownList2.DataBind();
        this.DropDownList2.Items.Insert(0, new ListItem("请选择药品", "0"));
    }
    private void BinderYaoPin()
    {

        SqlDataReader dr;
        dr = data.GetDataReader("select * from  dbo.V_YaoPinKuCun where YaoPinId='" + DropDownList2.SelectedValue + "'   ");
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
   
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BinderYaoPin();


        SqlDataReader dr;
        dr = data.GetDataReader("select * from  YaoPin where id='" + DropDownList2.SelectedValue + "'");
        if (dr.Read())
        {



            Label1.Text = dr["XiaoShouJia"].ToString();

            Label2.Text = dr["JinHuoJia"].ToString();

        }
        else
        {
        }
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
                string sql = "update YaoPinKucun set shuliang=shuliang-" + float.Parse(TextBox1.Text) + " where YaoPinId=" + DropDownList2.SelectedValue;
                data.RunSql(sql);
            }

            data.RunSql("insert into dbo.XiaoShou(GoodID,ShuLiang,UserID,YuanYin,CManger,XiaoShouJia,JinHuoJia)values('" + DropDownList2.SelectedValue + "','" + TextBox1.Text + "','" + Session["adminid"].ToString() + "','" + TextBox3.Text.Trim() + "','" + TextBox2.Text + "','" + Label1.Text + "','" + Label2.Text + "')");


            Alert.AlertAndRedirect("操作成功！", "XiaoShouManger.aspx");

        }

    }
   
}
