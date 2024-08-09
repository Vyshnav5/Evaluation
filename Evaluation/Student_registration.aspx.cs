using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_pro
{
    public partial class Student_registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                for (int i = 17; i <= 30; i++)
                {
                    age.Items.Add(i.ToString());
                }
            }
        }
        tution cs = new tution();
        public void add()
        {
            string s = "insert into student_login(s_email,s_password,s_type) values('" + email.Text + "','" + conpass.Text + "','" + "Student" + "')";
            cs.exenonquery(s);
        }
        public void add1()
        {
            string s = "insert into student_details(s_reg_no,s_name,s_age,s_mobile,s_class,s_email)values('"+reg.Text+"','" + name.Text + "','" + age.Text + "','" + Ph.Text + "','" +@class.Text + "','" + email.Text + "')";
            cs.exenonquery(s);

        }
        public void img()
        {
            if(FileUpload1.HasFile)
            {
                Random rnd = new Random();
                int num = rnd.Next(1, 100000000);
                string val = FileUpload1.FileName;
                string[] a = val.Split('.');
                string va = num + "." + a[1];
                Label1.Text = va;
                FileUpload1.SaveAs(Server.MapPath("/Images/" + va));
                string s = "insert into student_image(stu_img,s_email)values('" + Label1.Text + "','" + email.Text + "')";
                cs.exenonquery(s);
            }
           
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            add();
            add1();
            img();
            reg.Text = "";
            name.Text = "";
            email.Text = "";
            pass.Text = "";
            conpass.Text = "";
            Ph.Text = "";

        }
    }
}