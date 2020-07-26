<%@ Page Language="C#" MasterPageFile="~/User/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Examination_System.Admin.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div style="font-family: Arial; width: 450px; margin: 0px auto; border: 5px ridge green; padding: 10px;">
            <h1 class="bg-primary text-center text-white">Login Panel</h1>
            <table cellpadding="5" cellspacing="5" style="width: 425px; height: 223px; background-color: #CCFF99">
                <tr>
                    <td>Username or Email</td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" MaxLength="40" Height="27px" CssClass="form-control"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="username is required" ForeColor="Red" Text="*" ControlToValidate="txtUsername" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="40" Height="25px" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password is required" ForeColor="Red" Text="*" ControlToValidate="txtPassword" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="lblStatus" Text="" runat="server" Font-Bold="true" Font-Size="Large" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" CssClass="btn btn-danger"/>
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" Font-Size="Large" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">New User?
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Register.aspx"> Click Here for Register</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
