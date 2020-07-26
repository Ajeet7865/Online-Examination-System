<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Online_Examination_System.Admin.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container bg-primary p-3">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="text-center text-white">Online Examination Portal</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 text-white">
                    <h1>Welcome - <asp:Label ID="lblAdmin" Text="" runat="server" /></h1>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnLogout" Text="Logout" runat="server" CssClass="btn btn-danger" OnClick="btnLogout_Click" />
                </div>
            </div>
            <div class="container bg-warning">
                <table class="table mt-5">
                    <tr>
                        <td><asp:HyperLink ID="addUser" runat="server" NavigateUrl="~/Admin/AddUser.aspx" CssClass="font-weight-bold text-dark">Add User</asp:HyperLink></td>
                        <td><asp:HyperLink ID="deleteUser" runat="server" NavigateUrl="DeleteUser.aspx" CssClass="font-weight-bold text-dark">Delete User</asp:HyperLink></td>
                        <td><asp:HyperLink ID="setQ" runat="server" CssClass="font-weight-bold text-dark">Set Question Paper</asp:HyperLink></td>
                        <td><asp:HyperLink ID="previewQ" runat="server" CssClass="font-weight-bold text-dark">Preview Question Paper</asp:HyperLink></td>
                        <td><asp:HyperLink ID="delteQ" runat="server" CssClass="font-weight-bold text-dark">Delete Question Paper</asp:HyperLink></td>
                        <td><asp:HyperLink ID="viewReport" runat="server" CssClass="font-weight-bold text-dark">View Report</asp:HyperLink></td>
                    </tr>
                </table>

            </div>
        </div>
    </form>
</body>
</html>
