<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BibleVerses.aspx.cs" Inherits="aspx_BibleVerses" %>

<%@ Register Src="~/UserControls/HeadOfPage.ascx" TagPrefix="uc1" TagName="HeadOfPage" %>
<%@ Register Src="~/UserControls/FooterOfPage.ascx" TagPrefix="uc1" TagName="FooterOfPage" %>

<% Page.Title = "Bible Verses"; %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--#include file="~/includes/resources.inc"-->
    <script src="/js/getJSON.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <uc1:HeadOfPage runat="server" ID="HeadOfPage" />

            <div id="bible_verses_container">
                <div id="bible_verses_text_container">
                    <div id="votd">
                        <div id="loading_gif">
                            <img src="../Images/ajax-loader.gif" />
                        </div>
                        <div id="bookName"></div>
                        <div id="bookChapter"></div>
                        <div id="bookVerse"></div>
                        <div id="bookText"></div>
                    </div>
                </div>
            </div>
        </div>


        <uc1:FooterOfPage runat="server" ID="FooterOfPage" />
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            //window.scrollTo(0, document.body.scrollHeight);
            window.scrollTo(0, 400);
        });
    </script>
</body>
</html>
