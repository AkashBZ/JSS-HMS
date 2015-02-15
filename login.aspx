<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="main_section">
        <center>
            <table>
                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="email" runat="server" ValidationGroup="login"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="password" runat="server" TextMode="Password" ValidationGroup="login"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="login_button" runat="server" Text="LogIn" ValidationGroup="login"></asp:Button></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="redirect_button" runat="server" Text="I do not have an account"></asp:Button></td>
                </tr>
            </table>
        </center>
        
    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is a required field" Display="None" ControlToValidate="email"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This is a required field" Display="None" ControlToValidate="password"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is incorrecct!" Display="None" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RegularExpressionValidator1"></cc1:ValidatorCalloutExtender>
    </form>
</body>
</html>
