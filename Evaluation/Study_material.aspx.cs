using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_pro
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        tution cs = new tution();

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                Random rnd = new Random();
                int num = rnd.Next(1, 100000000);
                string val = FileUpload1.FileName;
                string[] a = val.Split('.');
                string va = num + "." + a[1];
                Label1.Text = va;
                FileUpload1.SaveAs(Server.MapPath("/Materials/" + va));
                string s = "insert into Study_materials(study_material)values('" + Label1.Text + "')";
                cs.exenonquery(s);
            }
        }
    }
}