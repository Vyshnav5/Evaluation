using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_pro
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = " select * from student_details inner join subject on student_details.s_email=subject.s_email";
            DataTable dt = cs.exetable(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        tution cs = new tution();

    }
}