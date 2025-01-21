<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ECommerce.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <title></title>
      <!-- Define inline styles -->
    <style type="text/css">
        .auto-style6 {
            width: 50%;
            height: 37px;
        }
        .auto-style7 {
            height: 37px;
        }
        .auto-style8 {
            width: 50%;
            height: 38px;
        }
        .auto-style9 {
            height: 38px;
        }
        .auto-style10 {
            width: 50%;
            height: 39px;
        }
        .auto-style11 {
            height: 39px;
        }
        .auto-style12 {
            height: 55px;
        }
        .auto-style13 {
            height: 110px;
        }
        .auto-style14 {
            width: 165px;
            height: 128px;
        }
        .auto-style15 {
            height: 53px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="position: fixed">
        </div>
            <table align="center" border="0" dir="ltr" draggable="false" style="width: 660px; height: 405px; background-color: #5f98f3"  >
             <tr>  <td colspan="2" align="center" class="auto-style13" > 
                   <!-- Registration header -->
                 <h2>&nbsp;<img class="auto-style14" src="Images/register.png" /></h2>
                 <h3>REGISTER NOW</h3>
                   </td>
                   
                <tr>
                       <!-- Registration form fields -->

                    <td class="auto-style6"><b>FirstName:</b></td>
                    <td class="auto-style7" >
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a Valid Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Characters Only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><b>LastName:</b></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a Valid Last Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Characters Only" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><b>Email ID:</b></td>
                    <td class="auto-style7" >
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter a Valid Email ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter a Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><b>Gender:</b></td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><b>HomeAddress:</b></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a Address" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><b>Phone no:</b></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a Valid Phone No" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Valid Phone No" ForeColor="Red" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><b>Password:</b></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter a Valid Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><b>Confirm Password:</b>;</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter a Valid Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password Not Matched" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2" class="auto-style12">
                        <asp:Button ID="Button1" runat="server" Text="Register" BackImageUrl="registerbtn.jpeg" Width="152px" OnClick="Button1_Click" BackColor="#5F98F3" Font-Bold="True" Font-Size="X-Large" Height="41px" />
                    </td>

                </tr>
                 <tr>
                     <td colspan="2">
                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                     </td>
                 </tr>
                <tr>
                    <td colspan="2" class="auto-style15" >
                        <asp:Label runat="server" ID="Label1" Height="40px" Width="345px"></asp:Label>
                    </td>
                  
                </tr>
            </table>
          <h2>  &nbsp;Already have a account? <a href="login.aspx">click here and login now</a></h2>
    </form>
</body>
</html>
