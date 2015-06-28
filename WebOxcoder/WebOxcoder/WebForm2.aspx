<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebOxcoder.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    
    </div>
        <asp:RadioButton ID="RadioButton1" runat="server" />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="0">男</asp:ListItem>
        </asp:RadioButtonList>
    </form>
</body>
</html>
