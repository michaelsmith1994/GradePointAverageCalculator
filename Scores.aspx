<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scores.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MyStyle.css" rel="stylesheet" />
</head>  

<body>
    <form id="form1" runat="server">
        <h1 style="background-color: #CCFFCC">Grade Point Calculator</h1>
        <div class="container">
            
            <asp:Label ID="lblquiz" runat="server" Font-Bold="True" Text="Pop Quiz Grade (5) " CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxQuizPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            
            <asp:Label ID="lblquiz0" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtboxQuizPercent" CssClass="valError" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="125" MinimumValue="0" Type="Integer">Use Int representation for the percentage, do not include &quot;%&quot; symbol.</asp:RangeValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxQuiz1" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="quizValidator1" runat="server" ControlToValidate="txtboxQuiz1" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtboxQuiz1" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxQuiz2" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="quizValidator2" runat="server" ControlToValidate="txtboxQuiz2" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtboxQuiz2" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxQuiz3" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="quizValidator3" runat="server" ControlToValidate="txtboxQuiz3" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtboxQuiz3" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxQuiz4" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="quizValidator4" runat="server" ControlToValidate="txtboxQuiz4" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtboxQuiz4" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxQuiz5" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="quizValidator5" runat="server" ControlToValidate="txtboxQuiz5" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtboxQuiz5" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblAssign" runat="server" Font-Bold="True" Text="Assigments Grade (4) " CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxAssPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblAssign0" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtboxAssPercent" CssClass="valError" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="125" MinimumValue="0" Type="Integer">Use Int representation for the percentage, do not include &quot;%&quot; symbol.</asp:RangeValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxAss1" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="assValidator1" runat="server" ControlToValidate="txtboxAss1" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtboxAss1" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxAss2" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="assValidator2" runat="server" ControlToValidate="txtboxAss2" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtboxAss2" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxAss3" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="assValidator3" runat="server" ControlToValidate="txtboxAss3" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtboxAss3" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxAss4" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="assValidator4" runat="server" ControlToValidate="txtboxAss4" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtboxAss4" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblCodeTest" runat="server" Text="Code Test Grade (2) " Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxCdTestPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblAssign1" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtboxCdTestPercent" CssClass="valError" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="125" MinimumValue="0" Type="Integer">Use Int representation for the percentage, do not include &quot;%&quot; symbol.</asp:RangeValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxCdTest1" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="cdtValidator1" runat="server" ControlToValidate="txtboxCdTest1" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtboxCdTest1" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxCdTest2" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="cdtValidator2" runat="server" ControlToValidate="txtboxCdTest2" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtboxCdTest2" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblMidTerm" runat="server" Text="Mid-Term Grade " Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxMidTestPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblAssign2" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtboxMidTestPercent" CssClass="valError" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="125" MinimumValue="0" Type="Integer">Use Int representation for the percentage, do not include &quot;%&quot; symbol.</asp:RangeValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxMidTest1" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="midTestValidator" runat="server" ControlToValidate="txtboxMidTest1" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtboxMidTest1" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblFinal" runat="server" Text="Final Exam Grade " Font-Bold="True" CssClass="mainLabel"></asp:Label>
            <asp:TextBox ID="txtboxFinalTestPercent" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <asp:Label ID="lblAssign3" runat="server" Font-Bold="True" Text="% of Total Grade" CssClass="mainLabel"></asp:Label>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtboxFinalTestPercent" CssClass="valError" Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="125" MinimumValue="0" Type="Integer">Use Int representation for the percentage, do not include &quot;%&quot; symbol.</asp:RangeValidator>
            <br />
            <br />
            <asp:TextBox ID="txtboxFinalTest1" runat="server" CssClass="centerTxtBox"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="finalTestValidator" runat="server" ControlToValidate="txtboxFinalTest1" Display="Dynamic" ErrorMessage="Please enter a number between 0-100" MaximumValue="100" MinimumValue="0" CssClass="valError" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtboxFinalTest1" CssClass="valError" Display="Dynamic" ErrorMessage="All fields must contain a valid interger between 0-100. Please complete the Form."></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" CssClass="centerStuff" Font-Bold="True" Height="22px" Width="128px" />
            <asp:Label ID="hiddenFieldCounter1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="hiddenFieldCounter2" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
