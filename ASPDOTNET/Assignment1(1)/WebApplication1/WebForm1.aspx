<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" Height="27px" Text="Button" Width="70px" OnClick="Button1_Click" />
         &nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:Image ID="Image1" runat="server" Height="155px" Width="209px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
