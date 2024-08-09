using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_pro
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            view();
            view1();
        }
        tution cs = new tution();
        public void view()
        {
            string s = "select * from student_details ";
            DataTable dt = cs.exetable(s);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        public void view1()
        {
            string s = " select * from student_details inner join subject on student_details.s_email=subject.s_email";
            DataTable dt = cs.exetable(s);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "insert into subject(s_email,c_maths,c_english,c_java,c_C,c_marks)values('" + Label1.Text + "','" + maths.Text + "','" + english.Text + "','" + java.Text + "','" + C.Text + "','100')";
            cs.exenonquery(s);
            view();
            view1();

        }

        protected void Mark_Click(object sender, EventArgs e)
        {
            int s_id = Convert.ToInt32((sender as Button).CommandArgument);
            string s = "select * from student_details where student_details.s_id=" + s_id + "";
            DataTable dt = cs.exetable(s);
            if (dt.Rows.Count > 0)
            {
              
                name.Text = dt.Rows[0][2].ToString();
                 Label1.Text = dt.Rows[0][6].ToString();
            }
        }
    }
}