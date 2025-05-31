using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DBcode db = new DBcode();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string n = TextBox1.Text;
            int a = int.Parse(TextBox2.Text);
            int r = db.Insert(n, a);
            Label3.Text = (r!=0)? "Registered":"Failed";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DataSet res = db.Select();
            GridView1.DataSource = res;
            GridView1.DataBind();
        }
    }
}
