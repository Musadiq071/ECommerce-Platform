<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="ECommerce.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
  



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;    
    <!-- Table for login and logout option starts here  -->
     

    <table  style=" width:1150px; height:30px" >
        <tr style="background-color:#f5898f3">
            <td colspan =" 2" style="text-align:right" >
                <asp:Label ID="Label4" runat="server" style="text-align:left" Font-Bold="True"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="Arial" NavigateUrl="~/Login.aspx">Login Here Now</asp:HyperLink>
                <asp:Button ID="Button1" runat="server" Text="LogOut" BackColor="#FF5050" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="Aqua" Height="27px" Width="105px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table> 
    <!-- Table for login and logout option ends here  -->

       <!-- DataList for displaying products -->
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="290px" Width="310px" ForeColor="White" RepeatColumns="4" RepeatDirection="Horizontal" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table style="align-content:center">
                <tr>
                    <td style="text-align:center; background-color:#5f98f3  " >

                         <!-- Product Name -->
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname")%>' ClientIDMode="AutoID" Font-Bold="True" 
                            Font-Names="Open Sans Extrabold" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                          <!-- Product Image -->
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Pimg")%>' BorderColor="#5F98F3" BorderWidth="1px" Height="279px" Width="278px" />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:center; background-color:#5f98f3  ">
                          <!-- Product Price -->
                        <asp:Label ID="Label2" runat="server"  Text="Price: $" Font-Bold="True" Font-Names="Arial"
                            ForeColor="White" Style=" text-align:center"></asp:Label>
                        <asp:Label ID="Label3" runat="server"  Text='<%# Eval("Pprice")%>' Font-Bold="True" Font-Names="Arial"
                            ForeColor="White" Style=" text-align:center"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td align="center">Quantity
                           <!-- Quantity Dropdown -->
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td style="text-align:center">

                           <!-- Add to Cart Button -->
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                            ImageUrl="~/Images/addcart.gif" Width="160px" CommandArgument='<%# Eval("ProductID")%>' CommandName="AddToCart"  />
                    </td>
                </tr>

                <tr>
                    <td>
                        <!-- Empty row for spacing -->
                    </td>
                </tr>

            </table>
        </ItemTemplate>
    </asp:DataList>
      <!-- SqlDataSource for retrieving product data -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MusConnectionString %>" SelectCommand="SELECT * FROM [Productlist]"></asp:SqlDataSource>

   




</asp:Content>
