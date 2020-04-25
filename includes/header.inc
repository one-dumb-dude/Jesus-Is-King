<nav class="NavBarTop">
  <div class="NavBarTop_Container">
    <div class="NavBarTop_Welcome">
      Welcome to Lord Jesus Is King!
    </div>
    <div class="NavBarTop_Login">

      <asp:LoginName ID="LoginName1" runat="server" Font-Bold="true" />
      <asp:LoginStatus ID="LoginStatus1" runat="server" />

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
        <li>
          <a href="/Default.aspx">Home</a>
        </li>
        <li>
          <a href="/aspx/BibleVerses.aspx">Verse of the Day</a>
        </li>
        <li>
          <a href="/aspx/Testimonies.aspx">Testimonies</a>
        </li>
        <li>
          <a href="/aspx/AskPrayer.aspx">Prayer Request</a>
        </li>
        <li>
          <a href="/aspx/AskBible.aspx">Bible Request</a>
        </li>
        <li>
          <a href="/aspx/AboutUs.aspx">About Us</a>
        </li>
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

