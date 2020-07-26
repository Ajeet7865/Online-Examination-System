using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Examination_System.Admin
{
    public partial class WebForm2 :System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["OESCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e) {

        }

    }
}