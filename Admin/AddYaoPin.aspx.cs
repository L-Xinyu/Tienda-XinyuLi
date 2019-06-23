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

public partial class Admin_AddYaoPin : System.Web.UI.Page
{
    Alert alert = new Alert();
    SQL data = new SQL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from  dbo.FenLei  ");
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into YaoPin(name,ds,Images,Code,JinHuoJia,FenLeiID,FenLeiName,GuiGe,XiaoShouJia)values('" + txtname.Text + "','" + txtds.Text + "','" + pic.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text+ "')");


        Alert.AlertAndRedirect("添加成功！", "YaoPinManger.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../uploads/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../uploads/" + pic.Text;
    }
}
