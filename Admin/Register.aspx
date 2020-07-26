<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Online_Examination_System.Admin.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registeration</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #00ff90;
            padding: 0px;
            margin: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial; width: 450px; margin-left:240px; border: 5px ridge green; padding: 10px; float:left; background-color:yellow;">
            <h1 class="auto-style1">Register Yourself With Us</h1>
            <table cellpadding="5" cellspacing="5" style="width: 445px">
                <tr>
                    <td>Name </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="200" MaxLength="30"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ForeColor="Red" Text="*" ControlToValidate="txtName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Father's Name </td>
                    <td>
                        <asp:TextBox ID="txtFather" runat="server" Width="200" MaxLength="30" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Father's name is required" ForeColor="Red" Text="*" ControlToValidate="txtFather" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Choose Max Qualificatin</td>
                    <td>
                        <asp:DropDownList ID="ddlQualification" runat="server" Width="200">
                            <asp:ListItem Text="-- Select --" />
                            <asp:ListItem Text="10th" Value="10th" />
                            <asp:ListItem Text="12th" Value="12th" />
                            <asp:ListItem Text="Graduate" Value="Graduate" />
                            <asp:ListItem Text="Post Graduate" Value="Post Graduate" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select your qualification" InitialValue="-- Select --" ForeColor="Red" Display="Dynamic" Text="*" ControlToValidate="ddlQualification"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" Width="200" MaxLength="15" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="PHONE is required" ForeColor="Red" Text="*" ControlToValidate="txtPhone" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server" Width="200">
                            <asp:ListItem Text="-- Select --" />
                            <asp:ListItem Text="Male" />
                            <asp:ListItem Text="Female" />
                            <asp:ListItem Text="Other" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Gender" InitialValue="-- Select --" ForeColor="Red" Display="Dynamic" Text="*" ControlToValidate="ddlGender"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="200" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email is required" ForeColor="Red" Text="*" ControlToValidate="txtEmail" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is required" ForeColor="Red" Text="*" ControlToValidate="txtPassword" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" Width="200" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm Password is required" ForeColor="Red" Text="*" ControlToValidate="txtConfirmPass" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not match" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" ForeColor="Red" Text="*" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="200"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="DOB is required" ForeColor="Red" Text="*" ControlToValidate="txtDOB" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server" Width="200" MaxLength="50" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="City is required" ForeColor="Red" Text="*" ControlToValidate="txtCity" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td>
                        <asp:TextBox ID="txtCountry" runat="server" Width="200" MaxLength="30" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Country is required" ForeColor="Red" Text="*" ControlToValidate="txtCountry" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Upload Image</td>
                    <td>
                        <asp:FileUpload ID="fileImage" runat="server" Width="200" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Upload Image is required" ForeColor="Red" Text="*" ControlToValidate="fileImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnRegister" Text="Join Now" runat="server" Height="32px" style="font-weight: 700; background-color: #00FF00" Width="90px" OnClick="btnRegister_Click" />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="lblStatus" Text="" runat="server" Font-Bold="true" Font-Size="X-Large"/>   
                    </td>
                </tr>
            </table>
        </div>
        <div style="font-family: Arial; width: 450px; padding: 10px; float: left;">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Font-Size="X-Large"/>
            </div>
    </form>
</body>
</html>
