using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class Sales_Master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.ReadOnly = true;
            TextBox3.ReadOnly = true;
            TextBox4.ReadOnly = true;


            TextBox1.Text = Request.QueryString["fbno"];
            TextBox3.Text = Request.QueryString["ftax"];
            TextBox4.Text = Request.QueryString["fprice"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=mano; integrated security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("salemasterinsert", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p = new SqlParameter("@bno", SqlDbType.Int);
            p.Value = TextBox1.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@cus", SqlDbType.VarChar);
            p1.Value = TextBox2.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p2 = new SqlParameter("@date", SqlDbType.Date);
            p2.Value = datepicker.Value;
            cmd.Parameters.Add(p2);

            SqlParameter p4 = new SqlParameter("@tax", SqlDbType.Float);
            p4.Value = TextBox3.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@total", SqlDbType.Money);
            p5.Value = TextBox4.Text;
            cmd.Parameters.Add(p5);


            cmd.ExecuteNonQuery();
            Response.Write("Values are Inserted");
            con.Close();
			
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}