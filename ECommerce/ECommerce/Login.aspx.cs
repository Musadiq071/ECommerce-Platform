using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace ECommerce
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            // Establish a connection to the database
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-9A9GOB7\\SQLEXPRESS; Initial Catalog=Mus; Integrated Security=True;");

            // Using SqlDataAdapter to fill DataTable with query results
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Register where Email= '" + letxt.Text + "' and Password='" + lptxt.Text + "'", con);
            DataTable dt = new DataTable();
            // Fill the DataTable with the query results
            sda.Fill(dt);
            // Check if there is a matching user in the DataTable
            if (dt.Rows.Count == 1)
            {
                Session["username"] = letxt.Text;
                Response.Redirect("Homepage.aspx");
                 Label1.Text = "Login Successfull";
                 Label1.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                Label1.Text = "Login UnSuccessfull";
                Label1.ForeColor = System.Drawing.Color.Red;


            }
        }
    }
}