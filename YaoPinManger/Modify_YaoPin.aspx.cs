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
public partial class Admin_Modify_YaoPin : System.Web.UI.Page
{
    Alert alert = new Alert();
    SQL data = new SQL();
    public string DownPath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from  dbo.FenLei  ");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
            
            GetInfo();
        }
    }
    
    private void GetInfo()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr;
        dr = data.GetDataReader("select * from  YaoPin where id=" + id);
        dr.Read();
        txtname.Text = dr["name"].ToString();
        txtds.Text = dr["ds"].ToString();

        DropDownList1.Items.FindByText(dr["FenLeiName"].ToString()).Selected = true;//选项Text  

        DropDownList1.Items.FindByValue(dr["FenLeiID"].ToString()).Selected = true;//选项Text  
     
  
        pic.Text = dr["Images"].ToString();
        Image1.ImageUrl = "../uploads/" + dr["Images"].ToString();

        TextBox3.Text = dr["GuiGe"].ToString();

        TextBox2.Text = dr["JinHuoJia"].ToString();

        TextBox4.Text = dr["XiaoShouJia"].ToString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update   YaoPin set   name='" + txtname.Text + "',ds='" + txtds.Text + "',Images='" + pic.Text + "',FenLeiID='" + DropDownList1.SelectedValue + "',FenLeiName='" + DropDownList1.SelectedItem.Text + "',GuiGe='" + TextBox3.Text + "',JinHuoJia='" + TextBox2.Text + "',XiaoShouJia='"+TextBox4.Text+"' where id=" + id);



        data.RunSql("update   YaoPinKucun set  JinHuoJia='" + TextBox2.Text + "',XiaoShouJia='" + TextBox4.Text + "' where YaoPinId=" + id);


        Alert.AlertAndRedirect("修改成功！", "YaoPinManger.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text =up.s;
        Image1.ImageUrl = "../uploads/" + pic.Text;

    }
}
