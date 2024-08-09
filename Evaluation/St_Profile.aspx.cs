using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_pro
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            view1();
        }
        tution cs = new tution();
     
        public void view1()
        {
            string s_email = this.Session["s_email"] as string;
            string s = "select * from student_details where s_email='" + s_email + "'";
            DataTable dt = cs.exetable(s);
            if (dt.Rows.Count > 0)
            {

                name.Text = dt.Rows[0][2].ToString();
                ph.Text = dt.Rows[0][4].ToString();
                age.Text = dt.Rows[0][3].ToString();
                email.Text = dt.Rows[0][6].ToString();
               
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string s_email = this.Session["s_email"] as string;
            string s = "select * from student_details where s_email='" + s_email + "'";
            DataTable dt = cs.exetable(s);
            if (dt.Rows.Count > 0)
            {

                name1.Text = dt.Rows[0][2].ToString();
                ph1.Text = dt.Rows[0][4].ToString();
                age1.Text = dt.Rows[0][3].ToString();
                email1.Text = dt.Rows[0][6].ToString();

            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string s_email = this.Session["s_email"] as string;
            string s = "update student_details set s_name='" + name1.Text + "',s_age='" + age1.Text + "',s_mobile='" + ph1.Text + "',s_email='" + email1.Text + "' where s_email='" + s_email + "'";
            cs.exenonquery(s);
            view1();
         
        }
    }
}