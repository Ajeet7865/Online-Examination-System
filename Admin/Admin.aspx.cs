using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Examination_System.Admin
{
    public partial class Admin :System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OESCS"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e) {
            if(Session["user"]!=null) {
                lblAdmin.Text = Session["user"].ToString();
            } else {
                Response.Redirect("~/User/index.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e) {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/User/index.aspx");
        }
    }
}