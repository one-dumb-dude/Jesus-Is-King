<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="aspx_AboutUs" %>

<form id="form1" runat="server">

    <%@ Register Src="~/UserControls/HeadOfPage.ascx" TagPrefix="uc1" TagName="HeadOfPage" %>
    <%@ Register Src="~/UserControls/FooterOfPage.ascx" TagPrefix="uc1" TagName="FooterOfPage" %>

    <% Page.Title = "About Us"; %>

    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <!--#include file="~/includes/resources.inc"-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="Jesus is King - Contact Us" />
    </head>

    <body>
        <div class="overlay"></div>

        <div class="container">

            <uc1:HeadOfPage runat="server" ID="HeadOfPage" />

            <div id="contact_us_container">
                <div id="contact_us_wrapper">
                    <div id="location_address_wrapper">
                        <div id="grace_baptist_img_container">
                            <img class="church_pic" src="../Images/grace_baptistist_church.jpeg" />
                        </div>
                        <div id="address_text_top">
                            Grace Baptist Church
                            <br />
                            91 Overlook Ave
                            <br />
                            Belleville, New Jersey 07109    
                        </div>
                        <div id="address_text_bottom">
                            We are a Christian Baptist Church located in Belleville New Jersey. We are a small group of Latino Christians who stem from multiple parts of Central and South America.  We are god-fearing, Jesus loving people who desire to help others who are in need of Christ.  If you are ever in our area, please come by and visit us sometime.
                        
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <uc1:FooterOfPage runat="server" ID="FooterOfPage" />
</form>
<script type="text/javascript">
    $(document).ready(function () {

        $('.church_pic').hover(mouseIn, mouseOut);

        function mouseIn() {
            $('.overlay').css({ 'visibility': 'visible' });
        }

        function mouseOut() {
            $('.overlay').css('visibility', 'hidden');
        }

    });
</script>

</body>

</html>
