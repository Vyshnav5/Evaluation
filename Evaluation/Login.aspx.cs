using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_pro
{
    public partial class Student_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { }
        }
        tution cs = new tution();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (email.Text.Trim() == "" || pass.Text.Trim() == "")
            {
                this.lbl.Text = "ENTER USERNAME AND PAASWORD";
            }
            else
            {

                string t = "select * from student_login  where s_email='" + email.Text + "' and s_password='" + pass.Text + "'";

                DataTable dt = cs.exetable(t);
                if (dt.Rows.Count > 0)
                {
                    string type = dt.Rows[0][3].ToString();
                    if (type == "Admin")
                    {
                        Response.Redirect("Admin_home.aspx");
                    }

                    else if (type == "Student")
                    {

                        this.Session["s_email"] = email.Text;


                        Response.Redirect("Student_home.aspx");


                    }

                }
                else
                {
                    lbl.Text = "INVALID USER NAME OR PASSWORD";
                }

            }
        }
    }
}