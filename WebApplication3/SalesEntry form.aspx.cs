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
    public partial class SalesEntry_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=mano; integrated security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("detailsinsert", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p = new SqlParameter("@bno", SqlDbType.Int);
            p.Value = TextBox1.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@itemno", SqlDbType.Int);
            p1.Value = TextBox2.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p3 = new SqlParameter("@itemname", SqlDbType.VarChar);
            p3.Value = TextBox3.Text;
            cmd.Parameters.Add(p3);


            SqlParameter p4 = new SqlParameter("@qty", SqlDbType.TinyInt);
            p4.Value = TextBox4.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@tax", SqlDbType.Float);
            p5.Value = DropDownList1.SelectedItem.ToString();
            cmd.Parameters.Add(p5);

            SqlParameter p6 = new SqlParameter("@price", SqlDbType.Money);
            p6.Value = TextBox5.Text;
            cmd.Parameters.Add(p6);

            cmd.ExecuteNonQuery();
            Label1.Text = "Values are stored";
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox1.Focus();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=mano; integrated security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("detailsinsert1", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p = new SqlParameter("@bno", SqlDbType.Int);
            p.Value = TextBox1.Text;
            cmd.Parameters.Add(p);

            SqlParameter p1 = new SqlParameter("@itemno", SqlDbType.Int);
            p1.Value = TextBox2.Text;
            cmd.Parameters.Add(p1);

            SqlParameter p3 = new SqlParameter("@itemname", SqlDbType.VarChar);
            p3.Value = TextBox3.Text;
            cmd.Parameters.Add(p3);


            SqlParameter p4 = new SqlParameter("@qty", SqlDbType.TinyInt);
            p4.Value = TextBox4.Text;
            cmd.Parameters.Add(p4);

            SqlParameter p5 = new SqlParameter("@tax", SqlDbType.Float);
            p5.Value = DropDownList1.SelectedItem.ToString();
            cmd.Parameters.Add(p5);

            SqlParameter p6 = new SqlParameter("@price", SqlDbType.Money);
            p6.Value = TextBox5.Text;
            cmd.Parameters.Add(p6);

            cmd.ExecuteNonQuery();
            Label1.Text="Values are updatated";
            con.Close();
        }

        protected void Button7_Click1(object sender, EventArgs e)
        {
            string bno = TextBox1.Text;
            string tax = TextBox4.Text;
            string price = TextBox5.Text;
            Response.Redirect("Sales Master.aspx?fbno=" + bno + "&ftax=" + tax + "&fprice=" + price);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"data source=(localdb)\v11.0; initial catalog=mano; integrated security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from  Detail where Billno'"+TextBox1.Text+"'", con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Values are deleted";
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}