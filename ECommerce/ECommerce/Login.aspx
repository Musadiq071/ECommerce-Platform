<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ECommerce.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <!-- Style definitions for the login page -->
    <style type="text/css">
        .auto-style2 {
            height: 66px;
        }
        .auto-style3 {
            width: 174px;
            height: 160px;
        }
        .auto-style4 {
            height: 67px;
        }
        .auto-style5 {
            height: 41px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Login Form -->
    <table class="" style="border-style: hidden; border-width: thin; width: 492px; height: 346px; background-color: #0094ff;" align="center">
        <tr>
             <!-- Logo and Title -->
            <td colspan="2" align="center"><h2><img alt="login logo" class="auto-style3" src="Images/OIP%20(1)-modified.png" /></h2>
                <h3>Login Page</h3>
            </td>
        </tr>
        <tr>
              <!-- Email ID input -->
            <td align="center" width="50%" class="auto-style2"><b>Email ID </b></td>
            <td class="auto-style2"><b>
                <asp:TextBox ID="letxt" runat="server" TextMode="Email" BackColor="#5F98F3" ForeColor="Black" Width="169px" CausesValidation="True" Height="29px"></asp:TextBox>
                </b></td>
        </tr>
        <tr>
              <td align="center" width="50%"><b>Password</b></td>
            <td><b>
                   <!-- Password input -->
                <asp:TextBox ID="lptxt" runat="server" TextMode="Password" BackColor="#5F98F3" ForeColor="Black" Height="28px" Width="167px"></asp:TextBox>
                </b></td>
        </tr>
        <tr>
             <!-- Login button -->
            <td colspan =" 2" align="center" class="auto-style4">
           
                <asp:Button ID="Loginbtn" runat="server" Text="Login" Width="146px" BackColor="#5F98F3"  BorderStyle="None" Height="36px" OnClick="Loginbtn_Click" Font-Bold="True" Font-Size="X-Large" />
            
            
            </td>
        </tr>
        <tr>
                <!-- Display error message, if any -->
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

     <!-- Registration link for new users -->
  <h2>  &nbsp;Are you a new user? <a href="Register.aspx">Register now by clicking here </a>
  </h2>
        
        
       

    
</asp:Content>
