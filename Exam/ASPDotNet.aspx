<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPDotNet.aspx.cs" Inherits="Online_Examination_System.Exam.ASPDotNet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center bg-primary text-white">Welcome To Our Online Exam Portal</h1>
            <h3 class="text-center">Online ASP.NET Quiz</h3>
            <div>
                <div class="row">
                    <div class="col-md-4">
                        <div id="Q1">
                            <h3>Q.1 What is ASP.NET ?</h3>
                            <asp:RadioButtonList ID="R1" runat="server">
                                <asp:ListItem Text="Server Side Scripting" Value="1" />
                                <asp:ListItem Text="Client Side Scripting" Value="2" />
                                <asp:ListItem Text="Library" Value="3" />
                                <asp:ListItem Text="Framework" Value="4" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" ErrorMessage="select answer" ControlToValidate="R1" runat="server" ForeColor="Red" SetFocusOnError="true" />
                        </div>
                        <div id="Q4">
                            <h3>Q.4 C-Sharp is ?</h3>
                            <asp:RadioButtonList ID="R4" runat="server">
                                <asp:ListItem Text="Structure Programming" Value="1" />
                                <asp:ListItem Text="Object Oriented Programming" Value="2" />
                                <asp:ListItem Text="Procedure Programming" Value="3" />
                                <asp:ListItem Text="Scripting Language" Value="4" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator4" ErrorMessage="select answer" ControlToValidate="R4" runat="server" ForeColor="Red" SetFocusOnError="true" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div id="Q2">
                            <h3>Q.2 CLR full form ?</h3>
                            <asp:RadioButtonList ID="R2" runat="server">
                                <asp:ListItem Text="Common Language Running" Value="1" />
                                <asp:ListItem Text="Client Language Runtime" Value="2" />
                                <asp:ListItem Text="Common Language Runtime" Value="3" />
                                <asp:ListItem Text="Command Line Run" Value="4" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" ErrorMessage="select answer" ControlToValidate="R2" runat="server" ForeColor="Red" SetFocusOnError="true" />
                        </div>
                        <div id="Q5">
                            <h3>Q.5 Runtime Manager is ?</h3>
                            <asp:RadioButtonList ID="R5" runat="server">
                                <asp:ListItem Text="CLR" Value="1" />
                                <asp:ListItem Text="JVM" Value="2" />
                                <asp:ListItem Text="ASP Engine" Value="3" />
                                <asp:ListItem Text="CTS" Value="4" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator5" ErrorMessage="select answer" ControlToValidate="R5" runat="server" ForeColor="Red" SetFocusOnError="true" />
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div id="Q3">
                            <h3>Q.3 ASP stands for ?</h3>
                            <asp:RadioButtonList ID="R3" runat="server">
                                <asp:ListItem Text="Active Service Page" Value="1" />
                                <asp:ListItem Text="Active Server Proram" Value="2" />
                                <asp:ListItem Text="Active Server Page" Value="3" />
                                <asp:ListItem Text="Application Server Page" Value="4" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" ErrorMessage="select answer" ControlToValidate="R3" runat="server" ForeColor="Red" SetFocusOnError="true" />
                        </div>
                        <div id="Q6">
                            <h3>Q.6 SQL stands for ?</h3>
                            <asp:RadioButtonList ID="R6" runat="server">
                                <asp:ListItem Text="Server Query Language" Value="1" />
                                <asp:ListItem Text="Structure Query Linker" Value="2" />
                                <asp:ListItem Text="Structure Qury Language" Value="3" />
                                <asp:ListItem Text="Structure Query Language" Value="4" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator6" ErrorMessage="select answer" ControlToValidate="R6" runat="server" ForeColor="Red" SetFocusOnError="true" />
                        </div>
                    </div>
                </div>
                <asp:Button ID="Button1" Text="Submit Answers" runat="server" BorderWidth="0px" Height="59px" Style="font-weight: 700; font-size: large; background-color: #FF0066; color: #FFFFFF; margin-top: 20px; padding: 5px;" Width="161px" />
            </div>
        </div>
    </form>
</body>
</html>
