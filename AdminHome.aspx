<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Home</title>
    <link href="Sardonyx.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <form id="form1" runat="server">
                    
        <div class="IndexBox">
         <img src="new.png" alt="logo" class="user" />
              
            <table>
                <tr>
                <td>
            <asp:Label ID="Label1" CssClass="lbl" runat="server" Text="Welcome Back!"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="Label2" CssClass="lbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    <td>
                         <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Log Out" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <h2>Choose Task </h2>
            <br />
 
                        <asp:Button CssClass="btnCash" runat="server" Text="Employee Registration" OnClick="Unnamed1_Click"  />
      <br />
      <h3> Or </h3>
      <br />
                        <asp:Button  CssClass="btnAdmin" runat="server" Text="Generate Report" OnClick="Unnamed2_Click"  />
      <br />
      
                        
          
        </div>
   </form> 
</body>
</html>

