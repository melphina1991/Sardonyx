<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlog.aspx.cs" Inherits="Adminlog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Login</title>
      <link href="Sardonyx.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
        <div class="IndexBox">
            <img src="logon.png" alt="user avatar" class="user" />
               <h2>Administrator Login </h2>
            <br />
            <form id="form1" runat="server">
            <table>
                
             <tr>
                    <td>
                        <asp:Label ID="lblUser" CssClass="lblUser" runat="server" Text="UserName"></asp:Label>

                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator id="reqUse"  ControlToValidate="txtUser" Text="(Required)" Runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="lblPass" CssClass="lblPass" runat="server" Text="Password"></asp:Label>

                    </td>
                     

                    <td colspan="2">
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator id="reqPass"  ControlToValidate="txtPass" Text="(Required)" Runat="server" />
                    </td>
                </tr>

                <tr>
                    
                    <td colspan="2">
                        <asp:Button ID="btnLog" CssClass="btnLog" runat="server" Text="Login" OnClick="btnLog_Click" />
                        
                    </td>
                </tr>

                    
          
            </table>
                <br />
                    <asp:Label ID="Label1" CssClass="lblPasserr" runat="server" Visible="false" Text="Either wrong password or username, please try again."></asp:Label>
                 </form>
        </div>
   
</body>
</html>