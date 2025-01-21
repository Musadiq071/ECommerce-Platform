using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ECommerce
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Establish a connection to the database
            SqlConnection con =new SqlConnection("Data Source=DESKTOP-9A9GOB7\\SQLEXPRESS; Initial Catalog=Mus; Integrated Security=True;");
            con.Open();
            // Create a SqlCommand to insert values into the 'Register' table
            SqlCommand cmd =new SqlCommand("INSERT INTO Register" + "(Fname, Lname, Email,Gender, Address, Phone, Password) values(@fname, @Lname, @Email, @Gender, @Address, @Phone,@Password)", con);
            // Add parameters to the SqlCommand
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value); 
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
            // Execute the SqlCommand to insert data into the database
            cmd.ExecuteNonQuery();
            // Close the database connection
            con.Close();
            // Display success message
            Label1.Text = "Registered Successfully!";











        }
    }
}