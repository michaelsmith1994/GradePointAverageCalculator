<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grade.aspx.cs" Inherits="WebApplication1.Grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="MyStyle.css" rel="stylesheet" />


</head>
    
<body>
    <form id="form1" runat="server">
        <h1 style="background-color: #CCFFCC">Grade Point Calculator</h1>
          <div style="text-align:center; background-color: #CCFFCC; opacity: 0.80; border-radius: 10px;"/>
        <p>
            <asp:Label ID="Label1" runat="server" CssClass="mainLabel" Text="Overall Grade Percentage is:" Width="600px"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblTotalPercentage" runat="server" CssClass="mainLeft" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FF3300" Width="800px"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" CssClass="mainLabel" Text="Letter Grade Earned:" Width="600px"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblLetterGrade" runat="server" CssClass="mainLeft" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FF3300" Width="800px"></asp:Label>
        </p>
    </form>
</body>
</html>
