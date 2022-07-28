<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment2(1).aspx.cs" Inherits="Assignment2_1_.Assignment2_1_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="ID" runat="server" Text="SupplierID"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="SupID" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Supplier ID" ControlToValidate="SupID" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="S_Name" runat="server" Text="Supplier Name"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="SupName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SupName" ErrorMessage="Enter the Supplier Name" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="P_Name" runat="server" Text="Product Name"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="PName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PName" ErrorMessage="Enter the Product name" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Quanr" runat="server" Text="Quantiy"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="Quantity" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Quantity" ErrorMessage="Quantity should be between 100 and 1000" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Quantity" ErrorMessage="Quantity should be between 100 and 1000" ForeColor="Red" MaximumValue="1000" MinimumValue="100"></asp:RangeValidator>
        <br />
        <asp:Label ID="S_Date" runat="server" Text="Supply Date"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="SDate" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
         <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="SDate" Display="Dynamic" ErrorMessage="Only current date is valid" MaximumValue="Date.Today" MinimumValue="Date.Today"></asp:RangeValidator>
         <br />
        <asp:Label ID="R_By" runat="server" Text="Recieved By"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:DropDownList ID="DropdownList" runat="server">
        </asp:DropDownList>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropdownList" ErrorMessage="Select a reciever" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
        <asp:Label ID="RecNo" runat="server" Text="Reciever Phone Number"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:TextBox ID="Rec_Num" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Rec_Num" ErrorMessage="Enter a valid number" ForeColor="Red">*</asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Rec_Num" ErrorMessage="Enter a Valid number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
         <br /><br />
        <asp:Label ID="Invoice" runat="server" Text="Invoice Provided?"></asp:Label>&nbsp&nbsp&nbsp&nbsp<asp:RadioButton ID="RadioButton1" Text="Yes" runat="server" />
        &nbsp&nbsp&nbsp<asp:RadioButton ID="RadioButton2" Text="No" runat="server" />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp;<p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
