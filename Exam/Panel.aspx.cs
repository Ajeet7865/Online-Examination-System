using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

namespace Online_Examination_System.Exam
{
    public partial class Panel :System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OESCS"].ConnectionString);



        public string username, examname;
        public int ans, n = 0, count = 0, marks = 0, totalMarks, qid, c;
        
				
        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack) {
                if(Session["user"] != null) {
                    lblExamName.Text = Request.QueryString["type"];
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("select * from tblQuestions where q_type = '" + Request.QueryString["type"].ToString() + "' order by Q_Id", conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    RepeaterQuestions.DataSource = dr;
                    RepeaterQuestions.DataBind();
                    conn.Close();
                } else {
                    Response.Redirect("~/Admin/Login.aspx");

                }

            }
        }

        protected void Button1_Click1(object sender, EventArgs e) {
            // Submit Question test
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into tblUserTestReport values ('" + Session["user"] + "',Getdate(),'" + Request.QueryString["type"].ToString() + "',81,100)", conn);
            int val = cmd.ExecuteNonQuery();
            if(val > 0) {
                Response.Write("<script>alert('Submit Exam Successfully')</script>");
                RepeaterQuestions.Visible = false;
                Button2.Visible = true;
                Button1.Visible = false;
                Button3.Visible = true;
            } else {
                Response.Write("<script>alert('Not Submit')</script>");
            }
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e) {
            // view report
            conn.Open();
            gridReport.Visible = true;
            Button1.Visible = false;
            SqlCommand cmd = new SqlCommand("select * from tblUserTestReport where candidate_name = '" + Session["user"].ToString() + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            gridReport.DataSource = dr;
            gridReport.DataBind();
            conn.Close();


        }

        protected void Button3_Click(object sender, EventArgs e) {
            // Profile Home Button
            Response.Redirect("~/User/UserProfile.aspx");

        }
    }
}