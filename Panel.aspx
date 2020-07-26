<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="Online_Examination_System.Exam.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Test Panel</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="text-center bg-primary text-white">Online Exam</h1>
    <div class="container-fluid">
        <div class="row bg-dark text-white">
            <div class="col-md-5">
                <h3>Exam : <asp:Label ID="lblExamName" Text="" runat="server" /></h3>
            </div>
            <div class="col-md-7">
                <h3 class="float-left">Marks : 100</h3>
                <h3 class="float-right">Time : 2 Hour</h3>
            </div>
        </div>
        <div class="container mt-4">
            <table class="table bg-warning">
                <tr>
                    <td colspan="3" align="center" class="h4"> :
                        <asp:Label ID="lblQuestionCount" Text="" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" class="h4">
                        Question : <asp:Label ID="lblQuestion" Text="" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" class="h4">
                        <asp:RadioButton ID="Radiobutton1" Text='<%# Eval("Option1") %>' runat="server" GroupName="Option"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" class="h4">
                        <asp:RadioButton ID="Radiobutton2" Text='<%# Eval("Option2") %>' runat="server" GroupName="Option" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" class="h4">
                        <asp:RadioButton ID="Radiobutton3" Text='<%# Eval("Option3") %>' runat="server" GroupName="Option" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" class="h4">
                        <asp:RadioButton ID="Radiobutton4" Text='<%# Eval("Option4") %>' runat="server" GroupName="Option"/>
                    </td>
                </tr>
                <tr align="center">
                    <td><asp:Button ID="Button1" Text="Back" runat="server" CssClass="btn btn-secondary" OnClick="Button1_Click"/></td>
                    <td><asp:Button ID="Button2" Text="Next" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" /></td>
                    <td><asp:Button ID="Button3" Text="Finish" runat="server" CssClass="btn btn-danger" OnClick="Button3_Click" /></td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
