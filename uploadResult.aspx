<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadResult.aspx.cs" Inherits="uploadResult" %>

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
            <tr><th colspan="2"><asp:Label ID="name" runat="server" Text=""></asp:Label></th></tr>
            <tr><td>Email:</td>
            <td> <asp:Label ID="email" runat="server" Text=""></asp:Label></td></tr>
            <tr><td>Contact Number:</td>
            <td><asp:Label ID="phone" runat="server" Text=""></asp:Label></td></tr>
            <tr><td>University Roll Number:</td>
            <td> <asp:Label ID="uni_roll" runat="server" Text=""></asp:Label></td></tr>
            <tr><td>Admission Number:</td>
            <td><asp:Label ID="admission_num" runat="server" Text=""></asp:Label></td></tr>
            <tr><td>Current Academic Year:</td>
            <td> <asp:Label ID="year" runat="server" Text=""></asp:Label></td></tr>
            <tr><td>Number of ongoing backs:</td>
            <td> <asp:Label ID="backs" runat="server" Text=""></asp:Label></td></tr>
            <tr><td>Previously Alloted Room:</td>
            <td><asp:Label ID="prev_room" runat="server" Text=""></asp:Label></td></tr>
       </table>
            </center>
    </div>
        <div id="next_step">
            <center>
            <asp:Button ID="upload" runat="server" Text="Upload Result Now" />
            <asp:Button ID="not_now" runat="server" Text="No. I'll Come Back Later" OnClick="not_now_Click" />
                </center>
        </div>
        <asp:Panel ID="updateResult" runat="server">
    <div style="width:400px; height:300px; background-color:Black; color: #FF3300; padding:15px; border:solid 1px #FF3300;">
    <h2>Update Result</h2>
    <p>You must update your result for verification. Please note that the document is a PDF file.</p>
        <p>Its simple. Click on the button below and browse for the result!</p>
        <asp:FileUpload ID="resultUploader" runat="server"  />
        <p>Now when you have chosen the result file hit the 'Upload' button. </p>
        <asp:Button ID="Button2" runat="server" Text="Upload Result" OnClick="Button2_Click" />
        <p>Told ya its simple..!!</p>
        <center>
            <asp:Button ID="closeuploader" runat="server" Text="Close" /></center>
    
    
    
    </div>
    </asp:Panel>
    <cc1:ModalPopupExtender ID="updateresult_ModalPopupExtender" runat="server" 
         Enabled="True" TargetControlID="upload" 
        PopupControlID="updateResult" CancelControlID="closeuploader" Drag="True">
    </cc1:ModalPopupExtender>
       
    </form>
</body>
</html>
