<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeadOfPage.ascx.cs" Inherits="UserControls_HeadOfPage" %>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />

<script runat="server">
</script>
<nav class="NavBarTop">
    <div class="NavBarTop_Container">
        <div class="NavBarTop_Welcome">
            <%=Loggin %>
            <asp:LoginName ID="LoginName1" runat="server" Font-Bold="true" />
        </div>
        <div class="NavBarTop_Login">
            <asp:LoginView ID="LoginView2" runat="server">
                <LoggedInTemplate>
                    <div id="NavBar_myaccount_menu">
                        <ul>
                            <li>My Account
                                <ul>
                                    <li><a href="#">Messages</a></li>
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">My Profile</a></li>
                                    <li><asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/Default.aspx" LogoutAction="Redirect" /></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </LoggedInTemplate>
            </asp:LoginView>

            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutPageUrl="~/Default.aspx" LogoutAction="Redirect" />
                    <a href="../aspx/CreateNewUser.aspx">&nbsp;(Register as New user)</a>
                </AnonymousTemplate>
            </asp:LoginView>
        </div>
    </div>
</nav>

<div id="headwrapper">
    <div id="headertitle">
        <div id="headertitle_text_container">
            <%=thisPageTitle(Page.Title)%>
        </div>
    </div>
    <div id="headmenu_container">
        <div id="headmenu">
            <ul class="headmenu_ul">
                <li><a href="/Default.aspx">Home</a></li>
                <li><a href="/aspx/BibleVerses.aspx">Verse of the Day</a></li>
                <li><a href="/aspx/Testimonies.aspx">Testimonies</a></li>
                <li><a href="/aspx/Commandments.aspx">Ten Commandments</a></li>
                <li><a href="/aspx/AskPrayer.aspx">Prayer Request</a></li>
                <li><a href="/aspx/AskBible.aspx">Bible Request</a></li>
                <li><a href="/aspx/AboutUs.aspx">About Us</a></li>
            </ul>
        </div>
    </div>
</div>

<div id="topBanner">
    <img src="../Images/topBanner1.jpg" />
    <img src="../Images/topBanner2.jpg" />
    <img src="../Images/topBanner3.jpg" />
    <img src="../Images/topBanner4.jpg" />
</div>

