using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Examination_System.Admin
{
    public partial class Login :System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OESCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnLogin_Click(object sender, EventArgs e) {
            // Login Button
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tblRegister where email=@email and [password]=@password", conn);
            cmd.Parameters.AddWithValue("@email", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if(dr.HasRows) {
                Session["user"] = dr["Name"].ToString();
                Session["id"] = dr["Id"].ToString();
                if(dr["UserType"].ToString() == "Admin") {
                    Response.Redirect("~/Admin/WebForm2.aspx");
                } else {
                    Response.Redirect("~/User/UserProfile.aspx");
                }
                
                
            } else {
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Incorrect Email Password !!";
            }
            conn.Close();
        }
    }
}