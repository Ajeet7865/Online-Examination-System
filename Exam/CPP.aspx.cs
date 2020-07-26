using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Examination_System.Exam
{
    public partial class C__ :System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack) {
                if(Session["user"]!=null) {
                    Response.Redirect("~/Exam/CPP.aspx");
                } else {
                    Response.Redirect("~/Admin/Login.aspx");
                }
            }
        }
    }
}