using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Online_Examination_System.Admin
{
    public partial class AdminHome :System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OESCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e) {

        }
        protected void btnLogout_Click(object sender, EventArgs e) {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/User/index.aspx");
        }

        protected void Linkbutton1_Click(object sender, EventArgs e) {
            // add user
            MultiView1.SetActiveView(viewAdd);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name from tblRegister where Usertype='User'", conn);
            ddlAddUser.DataSource = cmd.ExecuteReader();
            ddlAddUser.DataBind();
            ddlAddUser.Items.Insert(0, "-- Select --");
            conn.Close();
        }

        protected void ddlAddUser_SelectedIndexChanged(object sender, EventArgs e) {
            // user detail from dropdown select
            conn.Open();
            gridAddUserDetail.Visible = true;
            SqlCommand cmd = new SqlCommand("select * from tblRegister where name='" + ddlAddUser.SelectedItem.Text.ToString() + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            gridAddUserDetail.DataSource = dr;
            gridAddUserDetail.DataBind();
            conn.Close();
        }

        protected void btnAddUser_Click(object sender, EventArgs e) {
            // btn add user
            Response.Write("<script>alert('User Added Successfully')</script>");
            ddlAddUser.SelectedIndex = -1;
            gridAddUserDetail.Visible = false;

        }

        protected void Linkbutton2_Click(object sender, EventArgs e) {
            // deleteuser
            MultiView1.SetActiveView(ViewDelete);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name from tblRegister where usertype = 'user'", conn);
            ddlDeleteUser.DataSource = cmd.ExecuteReader();
            ddlDeleteUser.DataBind();
            ddlDeleteUser.Items.Insert(0, "-- Select --");
            conn.Close();
        }

        protected void btnDeleteUser_Click(object sender, EventArgs e) {
            // delete button 
            Response.Write("<script>alert('User Deleted Successfully')</script>");
            ddlAddUser.SelectedIndex = -1;

        }

        protected void Linkbutton3_Click(object sender, EventArgs e) {
            // add question
            MultiView1.SetActiveView(ViewAddQuestion);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select subjectName from tblSubject", conn);
            ddlSubjectName.DataSource = cmd.ExecuteReader();
            ddlSubjectName.DataBind();
            ddlSubjectName.Items.Insert(0, "-- Select --");
            conn.Close();
        }

        protected void btnAddQuestion_Click(object sender, EventArgs e) {
            // Add Question Paper
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into tblQuestions values (@qname,@qtype,@option1,@option2,@option3,@option4,@right)", conn);
            cmd.Parameters.AddWithValue("@qname", txtQustion.Text);
            cmd.Parameters.AddWithValue("@qtype", ddlSubjectName.SelectedItem.Text.ToString());
            cmd.Parameters.AddWithValue("@option1", txtOption1.Text);
            cmd.Parameters.AddWithValue("@option2", txtOption2.Text);
            cmd.Parameters.AddWithValue("@option3", txtOption3.Text);
            cmd.Parameters.AddWithValue("@option4", txtOption4.Text);
            cmd.Parameters.AddWithValue("@right", txtRightOption.Text);
            int val = cmd.ExecuteNonQuery();
            if(val > 0) {
                Response.Write("<script>alert('Question Added Successfully')</script>");
                txtQustion.Text = txtOption1.Text = txtOption1.Text = txtOption2.Text = string.Empty;
                txtOption3.Text = txtOption4.Text = txtRightOption.Text = string.Empty;
                ddlSubjectName.SelectedIndex = -1;

            } else {
                Response.Write("<script>alert('Something Incorrect !! ')</script>");
            }
            conn.Close();
        }

        protected void Linkbutton7_Click(object sender, EventArgs e) {
            MultiView1.SetActiveView(ViewAddSubject);
            
        }

        protected void btnAddSubject_Click(object sender, EventArgs e) {
            // add Subject
            conn.Close();
            conn.Open();
            if(CheckSubject() == true) {
                lblSubjectAdd.ForeColor = System.Drawing.Color.Red;
                lblSubjectAdd.Text = txtAddSubject.Text + " Subject Already Added";
                txtAddSubject.Text = "";
            } else {
                using(SqlCommand cmd = new SqlCommand("insert into tblSubject values ('" + txtAddSubject.Text + "')", conn)) {
                    int val = cmd.ExecuteNonQuery();
                    if(val > 0) {
                        lblSubjectAdd.ForeColor = System.Drawing.Color.Red;
                        lblSubjectAdd.Text = "Added Successfully ";
                        txtAddSubject.Text = "";
                    } else {
                        lblSubjectAdd.Text = "Something Incorrect !!!" ;
                    }
                }
                conn.Close();
            }
        }
        // Method for Check Subject is ALready present or not
        private Boolean CheckSubject() {
            conn.Close();
            conn.Open();
            Boolean sub = false;
            using(SqlCommand cmd = new SqlCommand("select * from tblSubject where SubjectName = '" + txtAddSubject.Text + "'", conn)) {
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if(ds.Tables[0].Rows.Count > 0) {
                    sub = true;
                }
                return sub;
            }
            conn.Close();
        }

        protected void Linkbutton4_Click(object sender, EventArgs e) {
                // Preview Question
            MultiView1.SetActiveView(ViewPreviewQuestion);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select subjectName from tblSubject", conn);
            ddlSubjectPreview.DataSource = cmd.ExecuteReader();
            ddlSubjectPreview.DataBind();
            ddlSubjectPreview.Items.Insert(0, "-- Select --");
            conn.Close();
        }

        protected void ddlSubjectPreview_SelectedIndexChanged(object sender, EventArgs e) {
            // select subject to see question paper
            conn.Open();
            string subName = ddlSubjectPreview.SelectedItem.Text.ToString();
            SqlCommand cmd = new SqlCommand("select * from tblQuestions where Q_type='" + subName + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            gridPreviewQuestion.DataSource = dr;
            gridPreviewQuestion.DataBind();
            conn.Close();
        }

        protected void Linkbutton5_Click(object sender, EventArgs e) {
            // Delete Question 
            MultiView1.SetActiveView(ViewDeleteQuestion);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select subjectName from tblSubject", conn);
            ddlDeleteQuestion.DataSource = cmd.ExecuteReader();
            ddlDeleteQuestion.DataBind();
            ddlDeleteQuestion.Items.Insert(0, "-- Select --");
            conn.Close();
        }

        protected void ddlDeleteQuestion_SelectedIndexChanged(object sender, EventArgs e) {
            // View Show = Select subject for delete question 
            conn.Open();
            string subname = ddlDeleteQuestion.SelectedItem.Text.ToString();
            SqlCommand cmd = new SqlCommand("select * from tblQuestions where Q_Type = '"+subname+"'", conn);
            ddlDeleteQuestionList.DataSource = cmd.ExecuteReader();
            //ddlDeleteQuestion.Items.Insert(0, "-- Select --");
            ddlDeleteQuestionList.DataBind();
            conn.Close();

        }

        protected void btnDeleteQuestion_Click(object sender, EventArgs e) {
            // Delete Question
            conn.Open();
            string qname = ddlDeleteQuestionList.SelectedItem.Text.ToString();
            if(qname.Equals(" ")) {
                Response.Write("<script>alert('select first')</script>");
            } else {
                SqlCommand cmd = new SqlCommand("delete from tblQuestions where Q_Name = '" + qname + "'", conn);
                int x = cmd.ExecuteNonQuery();
                if(x > 0) {
                    lblDeleteQuestionStatus.ForeColor = System.Drawing.Color.Red;
                    lblDeleteQuestionStatus.Text = "Question Delete Successfully";
                    ddlDeleteQuestionList.SelectedIndex = -1;
                    ddlDeleteQuestion.SelectedIndex = -1;
                } else {
                    lblDeleteQuestionStatus.ForeColor = System.Drawing.Color.Red;
                    lblDeleteQuestionStatus.Text = "Something Wrong";
                }
            }
            
            conn.Close();
        }

        protected void Linkbutton6_Click(object sender, EventArgs e) {
            // view report view
            MultiView1.SetActiveView(ViewReport);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from tblUserTestReport", conn);
            gridViewReport.DataSource = cmd.ExecuteReader();
            gridViewReport.DataBind();
            conn.Close();
        }
    }
}