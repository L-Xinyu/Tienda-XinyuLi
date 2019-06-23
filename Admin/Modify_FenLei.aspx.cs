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
public partial class Admin_Modify_FenLei : System.Web.UI.Page
{
    SQL data = new SQL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlDataReader dr = data.GetDataReader("select * from FenLei where id=" + Request.QueryString["id"].ToString());
            if (dr.Read())
            {

                TextBox1.Text = dr["Name"].ToString();

            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        data.RunSql("update FenLei set  Name='" + TextBox1.Text + "'  where id=" + Request.QueryString["id"].ToString());

        data.RunSql("update  YaoPin set  FenLeiName='" + TextBox1.Text + "'  where FenLeiID=" + Request.QueryString["id"].ToString());
        Alert.AlertAndRedirect("修改成功", "FenLeiManger.aspx");
    }
}
