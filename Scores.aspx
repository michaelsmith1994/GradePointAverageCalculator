<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scores.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MyStyle.css" rel="stylesheet" />
    <script src="jsFunctions.js"></script>
</head>  
    
<body>
    <form id="form1" runat="server" onsubmit="validateDynamicFields()">
        <h1 style="background-color: #CCFFCC">Grade Point Calculator</h1>
        <div class="container">
            <!-- Quiz labels -->
            <asp:HiddenField ID="hiddenquizcounter" runat="server" Value="0" />
            <asp:Label ID="lblquiz" runat="server" Font-Bold="True" Text="Quiz Grades " CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxQuizPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblquiz0" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <!--dynamically added fields -->
            <br />
            <br />
            <button type="button" onclick="addAdditionalField('txtboxQuiz')">Add Additional Quiz</button>
            <button type="button" onclick="removeLastField('txtboxQuiz')">Remove Last Quiz</button>
            <br />
            <asp:Label ID="quizListTitle" runat="server" Text="Quiz List" Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <ul class="modern-list">
                <li><div id="quizFieldsContainer"></div></li>
            </ul>
            <br />
            <!-- Assignment labels -->
            <asp:HiddenField ID="hiddenassigncounter" runat="server" Value="0" />
            <asp:Label ID="lblAssign" runat="server" Font-Bold="True" Text="Assigment Grades " CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxAssPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblAssign0" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <!--dynamically added fields -->            
            <br />
            <br />
            <button type="button" onclick="addAdditionalField('txtboxAss')">Add Additional Assignment</button>
            <button type="button" onclick="removeLastField('txtboxAss')">Remove Last Assignment</button>
            <br />
            <asp:Label ID="assignListTitle" runat="server" Text="Assignment List" Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <ul class="modern-list">
                <li><div id="assignmentFieldsContainer"></div></li>
            </ul>
            <br />
            <!-- Test labels -->
            <asp:HiddenField ID="hiddentestcounter" runat="server" Value="0" />
            <asp:Label ID="Label1" runat="server" Text="Test Grades " Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxCdTestPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <!--dynamically added fields -->
            <br />
            <br />
            <button type="button" onclick="addAdditionalField('txtboxCdTest')">Add Additional Test Field</button>
            <button type="button" onclick="removeLastField('txtboxCdTest')">Remove Last Test Field</button>
            <br />
            <asp:Label ID="testListTitle" runat="server" Text="Test List" Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <ul class="modern-list">    
                <li><div id="codeTestFieldsContainer"></div></li>
            </ul>
            <br />
            <!-- Midterm Test labels -->
            <asp:HiddenField ID="hiddenmidtestcounter" runat="server" Value="0" />
            <asp:Label ID="lblMidTerm" runat="server" Text="Mid-Term Grade " Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxMidTestPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblAssign2" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <br />
            <br />
            <button type="button" onclick="addAdditionalField('txtboxMidTest')">Add Additional Mid-Term Test</button>
            <button type="button" onclick="removeLastField('txtboxMidTest')">Remove Last Mid-Term Field</button>
            <br />
            <asp:Label ID="midTermListTitle" runat="server" Text="Midterm Test List" Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <ul class="modern-list">
                <li><div id="midtermTestFieldsContainer"></div></li>
            </ul>
            <br />
            <!-- Final Test labels -->
            <asp:HiddenField ID="hiddenfinaltestcounter" runat="server" Value="0" />
            <asp:Label ID="lblFinal" runat="server" Text="Final Exam Grade " Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxFinalTestPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblAssign3" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <br />
            <br />
            <button type="button" onclick="addAdditionalField('txtboxFinalTest')">Add Additional Final Test</button>
            <button type="button" onclick="removeLastField('txtboxFinalTest')">Remove Last Final Field</button>
            <br />
            <asp:Label ID="finalTestListTitle" runat="server" Text="Final Test List" Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <ul class="modern-list">
                <li><div id="finalTestFieldsContainer"></div></li>
            </ul>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" CssClass="centerStuff" Font-Bold="True" Height="22px" Width="128px" />
            <br />
            <asp:Label ID="hiddenFieldCounter1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="hiddenFieldCounter2" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:HiddenField ID="totalQuizSumHidden" runat="server" />
            <asp:HiddenField ID="totalAssignmentSumHidden" runat="server" />
            <asp:HiddenField ID="totalTestSumHidden" runat="server" />
            <asp:HiddenField ID="totalMidTestSumHidden" runat="server" />
            <asp:HiddenField ID="totalFinalTestSumHidden" runat="server" />
        </div>
    </form>
</body>
</html>
