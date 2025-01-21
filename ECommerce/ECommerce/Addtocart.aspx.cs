using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography.X509Certificates;

namespace ECommerce
{
    public partial class Addtocart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if it's not a postback
            if (!IsPostBack)
            {
                // Disable the button if there are no products
                if (Session["buyitems"] == null)
                {
                    Button1.Enabled = false;
                } else
                {
                    Button1.Enabled = true;
                }
                // Adding product to the GridView
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pprice");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");

                // Check if the product ID is in the query string
                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        // Add new row to DataTable
                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-9A9GOB7\\SQLEXPRESS; Initial Catalog=Mus; Integrated Security=True ");
                        SqlDataAdapter da = new SqlDataAdapter("select * from Productlist where ProductID=" + Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimg"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");
                    }
                    else
                    {
                        // Update existing DataTable
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection("Data Source=DESKTOP-9A9GOB7\\SQLEXPRESS; Initial Catalog=Mus; Integrated Security=True");

                        SqlDataAdapter da = new SqlDataAdapter("select * from productlist where ProductID = " + Request.QueryString["id"], scon);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["Pimg"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["pprice"].ToString());
                        int Quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * Quantity;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Addtocart.aspx");

                    }
                }
                else
                {
                    // Update GridView with existing DataTable
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }

            }
            // Set order date in session
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"] = OrderDate;
            orderid();
            {

            }

        }

        // Calculate grand total
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice += Convert.ToInt32(dt.Rows[i]["ptotalprice"].ToString());
                i = i + 1;


            }   
            return totalprice;
            
        }public void orderid()
        {
            string alpha = "abCdefghIjklmNopqrStuvwXyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i <5; i ++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];

            }string orderid;
            orderid = "Order_Id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString()
                + DateTime.Now.Second.ToString();
            Session["Orderid"] = orderid;

        }

        // Event handler for deleting a row in GridView
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i<=dt.Rows.Count -1 ; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                  
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Item Has been Deleted From Shopping Cart
                    break;
                }
            }

            //Setting SNo. after deleting row item from the cart
            for (int i = 1; i <=dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();


            }
            Session["buyitems"] = dt;
            Response.Redirect("AddtoCart.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i<=dt.Rows.Count -1 ; i++)
            {
                SqlConnection scon = new SqlConnection(@"Data Source=DESKTOP-9A9GOB7\\SQLEXPRESS; Initial Catalog=Mus; Integrated Security=True");
                try
                {
                    scon.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO OrderDetails ...", scon);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    // Log or print the exception details
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    scon.Close();
                }

            }

            //IF Session is Null Redirecting to login else placing the order
            if (Session["username"] ==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if(GridView1.Rows.Count.ToString() == "0ata Source=DESKTOP-9A9GOB7\\SQLEXPRESS; Initial Catalog=Mus; Integrated Security=True")
                {
                    Response.Write("<script>alert('Your Cart is Empty. You cannot place an Order'); </script>");
                }
                else
                {
                    Response.Redirect("PlaceOrder.aspx");
                }
            }
        }
    }
        

}

