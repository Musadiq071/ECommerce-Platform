<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addtocart.aspx.cs" Inherits="ECommerce.Addtocart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <!-- ASP.NET form -->
    <form id="form1" runat="server">
        <div align="center" style="margin:0 auto;">
            <h2 style="text-decoration:underline overline blink; color:#5f98f3 " > You have Following products in your cart </h2>
 
             <!-- Hyperlink to continue shopping -->
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="X-Large" NavigateUrl="~/Homepage.aspx">Continue Shopping</asp:HyperLink>
 
            <br /><br />
             <!-- GridView to display cart contents -->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#66FFFF" BorderColor="Black" BorderWidth="5px" EmptyDataText="No Product availible Cart Empty" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="Sno" HeaderText="SrNo">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Pid" HeaderText="Product ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pquantity" HeaderText="Product Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ptotalprice" HeaderText="SubTotal">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                 
                <FooterStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006666" ForeColor="White" />
            </asp:GridView>

            <br />
             <!-- Button to place an order -->
         
            <asp:Button ID="Button1" runat="server" Text="Place Order"  BackColor="#3498db" BorderColor="Lime" BorderStyle="Ridge" Font-Bold="True" cursor:pointer Font-Size="Large" Height="40px" OnClick="Button1_Click" Width="135px" />
            </div>
    </form>
</body>
</html>
