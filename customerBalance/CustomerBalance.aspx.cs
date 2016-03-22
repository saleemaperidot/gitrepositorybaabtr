using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustomerBalance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int temp;
        string constr = System.Configuration.ConfigurationManager.ConnectionStrings["cs"].ToString();
        SqlConnection con = new SqlConnection(constr);
        try
        {
            SqlCommand cmd1 = new SqlCommand("select vchr_first_name,vchr_second_name,int_balance from tbl_customer where pk_int_customer_id='" + TextBox1.Text + "'", con);
            con.Open();
            //temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            GridView1.DataSource = cmd1.ExecuteReader();
            GridView1.DataBind();
        }
        catch
        {
        }
        finally
        {
        }
       
    }
}