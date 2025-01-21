using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ECommerce
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if user is logged in
            if (Session["username"] !=null)
            {
                // Display user information if logged in
                Label4.Text = "Logged in as "+ Session["username"].ToString();
                HyperLink1.Visible= false;
                Button1.Visible= true;
            }else
            {
                // Display greeting if not logged in
                Label4.Text = "Hello you can login here now...";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Log out the user, redirect to Homepage, and display logout message
            Session.Abandon();
            Session.Abandon();
            Response.Redirect("Homepage.aspx");
            Label4.Text = "You have logged out Successfully....";
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            // Set session variable to indicate adding a product to the cart
            Session["addproduct"] = "true";
            Session["addproduct"] = "true";
            // Check if the command is to add to cart
            if (e.CommandName == "AddToCart")
            {
                // Find the DropDownList within the DataList
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                // Redirect to Addtocart.aspx with product details and quantity
                Response.Redirect("Addtocart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());

            }
        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {

        }
    }
}