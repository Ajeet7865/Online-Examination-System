using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Examination_System.Admin
{
    public partial class Register :System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OESCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack) {
                txtName.Focus();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e) {
            if(Page.IsValid) {
                try {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("insert into tblregister values (@name,@father,@qualification,@phone,@gender,@email,@password,@confirmpass,@DOB,@city,@country,@img) ", conn);
                    cmd.Parameters.AddWithValue("@name",txtName.Text);
                    cmd.Parameters.AddWithValue("@father",txtFather.Text);
                    cmd.Parameters.AddWithValue("@qualification",ddlQualification.SelectedItem.Text.ToString());
                    cmd.Parameters.AddWithValue("@phone",txtPhone.Text);
                    cmd.Parameters.AddWithValue("@gender",ddlGender.SelectedItem.Text.ToString());
                    cmd.Parameters.AddWithValue("@email",txtEmail.Text);
                    cmd.Parameters.AddWithValue("@password",txtPassword.Text);
                    cmd.Parameters.AddWithValue("@confirmpass",txtConfirmPass.Text);
                    cmd.Parameters.AddWithValue("@DOB",txtDOB.Text);
                    cmd.Parameters.AddWithValue("@city",txtCity.Text);
                    cmd.Parameters.AddWithValue("@country",txtCountry.Text);
                    if(fileImage.HasFile) {
                        string imgName = fileImage.FileName;
                        string path = "~/Upload/" + imgName;
                        fileImage.SaveAs(Server.MapPath(path));
                        cmd.Parameters.AddWithValue("@img", path);
                    }
                    int val = cmd.ExecuteNonQuery();
                    if(val > 0) {
                        lblStatus.ForeColor = System.Drawing.Color.Green;
                        lblStatus.Text = "You have Successfully Register";
                        txtName.Text = txtEmail.Text = txtPhone.Text =  txtCity.Text = txtCountry.Text = "";
                        ddlGender.SelectedIndex = -1; ddlQualification.SelectedIndex = -1;
                        txtDOB.Text = "";
                        txtPassword.Text = txtConfirmPass.Text = txtDOB.Text = txtFather.Text = "";
                    } else {
                        lblStatus.ForeColor = System.Drawing.Color.Red;
                        lblStatus.Text = "Registration Failed !!";
                    }
                } 
                finally {
                    conn.Close();
                }
            }
        }
    }
}