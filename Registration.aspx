<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Registration</title>
     <link href="Sardonyx.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="IndexsBox">
            <img src="regg.png" alt="user avatar" class="user" />
            <asp:HiddenField ID="hfContactId" runat="server" />
            <table>
                <tr>
                <td>
            <asp:Label ID="Label4" CssClass="lbl" runat="server" Text="Signed in as"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="Label5" CssClass="lbl" runat="server" Text="Label"></asp:Label>
                        </td>
                    <td></td>
                    <td>
                         <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Log Out" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" CssClass="lblPassi" runat="server" Text="Name"></asp:Label>

                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
                       
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label2" CssClass="lblPassi" runat="server" Text="User Name"></asp:Label>

                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox><br /><br />
                      
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label3" CssClass="lblPassi" runat="server" Text="Password"></asp:Label>

                    </td>

                    <td colspan="2">
                        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                        
                    </td>
                </tr>

                
                 <tr>
                    

                    <td colspan="2">
                        <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Green" BackColor="White"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                       
                    </td>

                    <td colspan="2">
                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" BackColor="White"></asp:Label>
                    </td>
                </tr>
            </table>
           
            <asp:GridView ID="gvEmp" CssClass="grid" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField Datafield="Name" HeaderText="Name"/>
                    <asp:BoundField Datafield="UserName" HeaderText="UserName"/>
                    <asp:BoundField Datafield="Password" HeaderText="Password"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="linkView" runat="server" CommandArgument='<%#Eval("ContactID")%>' OnClick="lnk_OnClick">More</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <table>
                <tr>
                    
                    
                    <td colspan="1">
                        <asp:Button ID="btnSave" CssClass="btns" runat="server" Text="Save" OnClick="btnSave_Click" />
                                                
                    </td>
                    <td>
                        <asp:Button ID="btnDel" CssClass="btns" runat="server" Text="Delete" OnClick="btnDel_Click" />
                    </td>

                    <td>
                        <asp:Button ID="btnClear" CssClass="btns" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
