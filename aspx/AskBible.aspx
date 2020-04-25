<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AskBible.aspx.cs" Inherits="aspx_AskBible" %>

<form id="form1" runat="server">

    <%@ Register Src="~/UserControls/HeadOfPage.ascx" TagPrefix="uc1" TagName="HeadOfPage" %>
    <%@ Register Src="~/UserControls/FooterOfPage.ascx" TagPrefix="uc1" TagName="FooterOfPage" %>

    <% Page.Title = "Ask us for a Bible"; %>
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <!--#include file="~/includes/resources.inc"-->
    </head>
    <body>
        <div class="container">


            <uc1:HeadOfPage runat="server" ID="HeadOfPage" />

            <div id="default_article">
                <div class="Bible_Brown_Backdrop">
                    <div class="Bible_Table_Wrapper_Overlay">
                        <div class="Bible_Text">
                            <h1 align="center">Request a Bible</h1>
                            <p>
                                If we can spare a bible, we gladly will.  Fill out the form below and we will send you a bible.  We will send you
                                either a NIV or GNB which is a more modern English version.
                            </p>
                        </div>
                        <div class="Bible_Table_wrapper">
                            <table class="Bible_Table">
                                <tr>
                                    <td>First Name:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="fname_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Last Name:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="lname_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address 1</td>
                                    <td>
                                        <asp:TextBox ID="addr1_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address 2</td>
                                    <td>
                                        <asp:TextBox ID="addr2_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>City:</td>
                                    <td>
                                        <asp:TextBox ID="city_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>State:</td>
                                    <td>
                                        <asp:TextBox ID="state_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Zip Code:</td>
                                    <td>
                                        <asp:TextBox ID="zipCode_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>(Last 4) Zip</td>
                                    <td>
                                        <asp:TextBox ID="zipCode_Last4_Bible" runat="server" Height="20px" Width="230px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Bible Language:</td>
                                    <td>
                                        <asp:RadioButtonList ID="bible_Language" runat="server">
                                            <asp:ListItem Selected="True">English</asp:ListItem>
                                            <asp:ListItem>Spanish</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                            <div style="text-align: center; padding-top: 10px;">
                                <asp:Button class="Bible_SubmitButton" ID="bibleSubmitBtn" runat="server" Text="Submit" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

</form>

</div>
    <uc1:FooterOfPage runat="server" ID="FooterOfPage" />
</body>
</html>
