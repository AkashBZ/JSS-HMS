<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta charset="utf-8"/>
        <link rel="stylesheet" href="StyleSheet2.css" />
    <script type="text/javascript">
        function validateLength(oSrc, args) {
            args.IsValid = (args.Value.length >= 10);
        }
        
        function jsFunction()
        {
            document.getElementById("name").value= "";
            document.getElementById("email").value = "";
            document.getElementById("phone").value = "";
            document.getElementById("uni_roll").value = "";
            document.getElementById("admission_num").value = "";
            document.getElementById("password").value = "";
            document.getElementById("conf_password").value = "";
            document.getElementById("percentage").value = "";
            document.getElementById("prev_room").value = "";
            document.getElementById("DropDownList2").selectedIndex = 0;
            document.getElementById("DropDownList1").selectedIndex = 0;
            return false;
        }
</script>
 
    <script src="JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="main_container">
        <header></header>

        <div id="main_section">
            <table>
                <tr>
                    <td>Name:</td>
                    <td> <asp:TextBox runat="server" ID="name" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td> <asp:TextBox runat="server" ID="email" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Create a password:</td>
                    <td> <asp:TextBox runat="server" ID="password" TextMode="Password" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td> <asp:TextBox runat="server" ID="conf_password" TextMode="Password" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Phone Number:</td>
                    <td> <asp:TextBox runat="server" ID="phone" MaxLength="10" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>University Roll Number:</td>
                    <td> <asp:TextBox runat="server" ID="uni_roll" MaxLength="10" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Admission Number:</td>
                    <td> <asp:TextBox runat="server" ID="admission_num" ValidationGroup="details" ></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="admission_num_TextBoxWatermarkExtender" WatermarkText="eg: 12-CS-080" WatermarkCssClass="waterMark" runat="server" Enabled="True" TargetControlID="admission_num">
                        </cc1:TextBoxWatermarkExtender>
                    </td>
                </tr>
                <tr>
                    <td>Current Year:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" ValidationGroup="details">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1">First Year</asp:ListItem>
                            <asp:ListItem Value="2">Second Year</asp:ListItem>
                            <asp:ListItem Value="3">Third Year</asp:ListItem>
                            <asp:ListItem Value="4">Final Year</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                 <tr>
                    <td>Aggregate % in previous year:</td>
                    <td> <asp:TextBox runat="server" ID="percentage" MaxLength="3" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Number of backs(if any):</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" ValidationGroup="details">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="0">Zero</asp:ListItem>
                            <asp:ListItem Value="1">One</asp:ListItem>
                            <asp:ListItem Value="2">Two</asp:ListItem>
                            <asp:ListItem Value="3">More Than Two</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                 <tr>
                    <td>Previous Alloted Room:</td>
                    <td> <asp:TextBox runat="server" ID="prev_room" MaxLength="3" ValidationGroup="details"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Button ID="submitButton" runat="server" Text="Register" ValidationGroup="details" OnClick="submitButton_Click"  /></td>
                     <td><asp:Button ID="resetButton" runat="server" Text="Reset" OnClientClick="return jsFunction()" /></td>                   
                </tr>
           </table>
        </div>
    
    </div>
        <asp:RequiredFieldValidator ID="nameValidator" runat="server" SetFocusOnError="true" ErrorMessage="This is a Required Field!" ControlToValidate="name" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true" ErrorMessage="This is a Required Field!" ControlToValidate="email" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This is a Required Field!" SetFocusOnError="true" ControlToValidate="uni_roll" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This is a Required Field!" SetFocusOnError="true" ControlToValidate="admission_num" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="true" ErrorMessage="This is a Required Field!" ControlToValidate="phone" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SetFocusOnError="true" ErrorMessage="This is a Required Field!" ControlToValidate="percentage" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" SetFocusOnError="true" ErrorMessage="This is a Required Field!" ControlToValidate="DropDownList2" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" SetFocusOnError="true" ErrorMessage="This is a Required Field!" ControlToValidate="prev_room" Display="None" ValidationGroup="details"></asp:RequiredFieldValidator>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="nameValidator"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator1"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator2"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator3"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RequiredFieldValidator4"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator5"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="RequiredFieldValidator6"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" TargetControlID="RequiredFieldValidator7"></cc1:ValidatorCalloutExtender>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" SetFocusOnError="true" runat="server" ErrorMessage="Please enter the correct email!" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" Display="None" ValidationGroup="details"></asp:RegularExpressionValidator>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" TargetControlID="RegularExpressionValidator1"></cc1:ValidatorCalloutExtender>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="The phone number is incorrect!" ControlToValidate="phone" Display="None" ValidationGroup="details" SetFocusOnError="true" ClientValidationFunction="validateLength" ></asp:CustomValidator>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" runat="server" TargetControlID="CustomValidator1"></cc1:ValidatorCalloutExtender>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="phone"></cc1:FilteredTextBoxExtender>
        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="The University Roll Number is incorrect!" ControlToValidate="uni_roll" Display="None" ValidationGroup="details" SetFocusOnError="true" ClientValidationFunction="validateLength" ></asp:CustomValidator>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender11" runat="server" TargetControlID="CustomValidator2"></cc1:ValidatorCalloutExtender>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="uni_roll" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="percentage" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers" TargetControlID="prev_room"></cc1:FilteredTextBoxExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="None" SetFocusOnError="true" ErrorMessage="This fiels is mandatory" ControlToValidate="password"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="None" SetFocusOnError="true" ErrorMessage="This fiels is mandatory" ControlToValidate="conf_password"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" SetFocusOnError="true" runat="server" ErrorMessage="Passwords do not match!" Display="None" ControlToValidate="conf_password" ControlToCompare="password"></asp:CompareValidator>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender12" runat="server" TargetControlID="RequiredFieldValidator8"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender13" runat="server" TargetControlID="RequiredFieldValidator9"></cc1:ValidatorCalloutExtender>
        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender14" runat="server" TargetControlID="CompareValidator1"></cc1:ValidatorCalloutExtender>
    </form>
   is 
    
</body>
</html>