<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registered Users Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr><td>
                    <asp:Label ID="Label1" runat="server" Text="Welcome Back!"></asp:Label><asp:Label ID="Label2" runat="server" ></asp:Label></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" style="height: 26px" /></td>
                        
                </tr>
                <tr><td><h1>Below is a list of names of all employees that have been registered successfully </h1></td></tr>
                <tr><td>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                </td></tr>
            </table>
        </div>
    </form>
</body>
</html>
