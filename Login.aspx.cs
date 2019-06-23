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
public partial class Admin_Denglu : System.Web.UI.Page
{

    SQL data = new SQL();
    SqlDataReader dr;
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }

    }

    private void chkADmin()
    {

       
            if (accounts.Value == "" && pwd.Value == "")
            {
                Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


            }
            else
            {
                dr = data.GetDataReader("select * from  UsersInfo where Name='" + accounts.Value.Trim() + "'and Password='" + pwd.Value.Trim() + "'     and Roule='" + DropDownList1.SelectedValue + "'");
                if (dr.Read())
                {
                    Session["adminid"] = dr["id"].ToString();

                    Session["admin"] = dr["name"].ToString();
                    Session["UserName"] = dr["TName"].ToString();

                    Session["Roule"] = dr["Roule"].ToString();

                    Session["Bumen"] = dr["Bumen"].ToString();

                    if (Session["Roule"].ToString() == "系统管理员")
                    {

                        Response.Redirect("Admin/index.html");
                    }



                    if (Session["Roule"].ToString() == "员工")
                    {

                        Response.Redirect("YaoPinManger/index.html");
                    }

                }
                else
                {
                    Alert.AlertAndRedirect("用户的账号或者密码不对请重新登陆！", "login.aspx");
                }
           
        }
    }

 
    protected void BUTTON1_ServerClick(object sender, EventArgs e)
    {
        chkADmin();

    }
}
