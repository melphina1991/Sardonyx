<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index</title>
    <link href="Sardonyx.css" rel="stylesheet" type="text/css" />
</head>
<body>
        <div class="IndexBox">
         <img src="logon.png" alt="user avatar" class="user" />
            <h2>Choose Employee Type </h2>
            <br />
  <form id="form1" runat="server">
                       
                        <asp:Button CssClass="btnCash" runat="server" Text="Cashier" OnClick="Unnamed1_Click"  />
      <br />
      <h3> Or </h3>
      <br />
                        <asp:Button  CssClass="btnAdmin" runat="server" Text="Administrator" OnClick="Unnamed2_Click"  />
                        
   </form>        
        </div>
   
</body>
</html>
