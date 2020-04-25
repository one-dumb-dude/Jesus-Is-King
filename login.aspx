<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="aspx_Login" %>



<%@ Register Src="~/UserControls/HeadOfPage.ascx" TagPrefix="uc1" TagName="HeadOfPage" %>
<%@ Register Src="~/UserControls/FooterOfPage.ascx" TagPrefix="uc1" TagName="FooterOfPage" %>

<% Page.Title = "Log in"; %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--#include file="~/includes/resources.inc"-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Jesus is King - Login" />
</head>
<body>
    <form id="form2" runat="server">
        <div class="Login_body_container">

            <uc1:HeadOfPage runat="server" ID="HeadOfPage" />

            <div class="Login_Container">
                <div class="Login_Content">
                    <div class="JesusIsKing_Label">
                        Jesus Is King!
                    </div>
                    <div class="JesusIsKing_Menu">
                        <asp:Login ID="Login1" runat="server" CreateUserText="Register New User" CreateUserUrl="~/aspx/CreateNewUser.aspx" Height="100px" Width="300px" DestinationPageUrl="~/Default.aspx" CssClass="Login_menu" LoginButtonStyle-CssClass="Login_button_submit" HyperLinkStyle-CssClass="Login_register_link">
                        </asp:Login>
                    </div>

                </div>
            </div>
        </div>

        <uc1:FooterOfPage runat="server" ID="FooterOfPage" />

    </form>
</body>
</html>
