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
                    <h3>Exam :
                        <asp:Label ID="lblExamName" Text="" runat="server" /></h3>
                </div>
                <div class="col-md-7">
                    <h3 class="float-left">Marks : 100</h3>
                    <h3 class="float-right">Time : 2 Hour</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 offset-2 border border-dark p-3">
                    <asp:Repeater ID="RepeaterQuestions" runat="server">
                        <ItemTemplate>
                            <table class="table">
                                <tr>
                                    <td class="bg-danger text-white">Question :<asp:Label ID="lblQuestion" Text='<%# Eval("Q_name") %>' runat="server" /></td>
                                </tr>
                                <tr><td><asp:RadioButton ID="Op1" runat="server" GroupName="Option" /><%# Eval("Option1") %></td></tr>
                                <tr><td><asp:RadioButton ID="Op2" runat="server" GroupName="Option" /><%# Eval("Option2") %></td></tr>
                                <tr><td><asp:RadioButton ID="Op3" runat="server" GroupName="Option" /><%# Eval("Option3") %></td></tr>
                                <tr><td><asp:RadioButton ID="Op4" runat="server" GroupName="Option" /><%# Eval("Option4") %></td></tr>
                                <asp:Label ID="lblCorrectAnswer"  Text='<%# Eval("RightOption") %>' runat="server" ForeColor="Green" Font-Bold="true" Visible="false"/>
                                    
                                
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:Button ID="Button1" Text="Submit" runat="server" CssClass="btn btn-success btn-lg" OnClick="Button1_Click1"/>
                    <asp:Button ID="Button2" Text="View Report" runat="server" CssClass="btn btn-primary btn-lg" Visible="false" OnClick="Button2_Click"/>
                    <asp:Button ID="Button3" Text="Home" runat="server" CssClass="btn btn-danger btn-lg" Visible="false" OnClick="Button3_Click"/>
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="gridReport" runat="server" Visible="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CssClass="text-center">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </div>
            </div>

        </div>
    </form>

</body>
</html>
