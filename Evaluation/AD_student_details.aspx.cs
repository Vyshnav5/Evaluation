using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_pro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack) { }
            string s = "select * from student_details ";
            DataTable dt = cs.exetable(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        tution cs = new tution();
    }
}