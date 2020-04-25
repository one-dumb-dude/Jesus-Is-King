<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



<%@ Register Src="~/UserControls/HeadOfPage.ascx" TagPrefix="uc1" TagName="HeadOfPage" %>
<%@ Register Src="~/UserControls/FooterOfPage.ascx" TagPrefix="uc1" TagName="FooterOfPage" %>

<% Page.Title = "Jesus is King!"; %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--#include file="~/includes/resources.inc"-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <uc1:HeadOfPage runat="server" ID="HeadOfPage" />

            <div id="default_article">
                <div id="QuoteOfDay1_Wrapper">
                    <div id="QuoteOfDay1">
                        "For God so loved the world that He gave His one and only Son, that everyone who believes in Him shall not perish but have eternal life"
                    </div>
                </div>
                <div id="article_wrapper">
                    <article>
                        <p class="p1">
                            <span class="dropcap">D</span>id you know that theres a great king in heaven who respects, loves and cares for you?
                                I know it seems like it's just a bunch of hoo-haa nonsense,
                                it may seem like just a bunch of gibberish or something made up by the government to keep you in line.  So that you can be obedient to you great masters in Washington DC,
                                but the truth is that it's not.
                        </p>
                        <br />
                        <p class="p1">
                            <span class="dropcap">P</span>eople from all over experience all kinds of different experiences when coming into accordance with God.  I truly believe if you pour out the deep down honest part of yourself
                                and actually ask for God to reveal himself to you that he will.  I'm not talking about him coming down and literally appearing before you but that he will surely come around 
                                through some friends or some stranger in the street or in any way that fits its way into your life.    
                        </p>
                        <br />

                        <div id="QuoteOfDay2_Wrapper">
                            <div id="QuoteOfDay2">
                                "My sheep hear my voice, and I know them, and they follow me. I give them eternal life, and they will never perish, and no one will snatch them out of my hand.
                                     My Father, who has given them to me, is greater than all, and no one is able to snatch them out of the Father's hand."
                            </div>
                        </div>

                        <p class="p1">
                            <span class="dropcap">A</span>lot of people say, hey, that religion is made up and that religion is the foundation of much violence that stems from the stupidity and ignorance of religion. "
                                I can agree that theres thousands of religions out there.  Why should i believe in this one particular religion?  I can't say for sure that i can prove it but one thing i
                                can definitely do is give you testimony to my experiences and not just mine but experiences I've seen foremost in other peoples life in the church.
                        </p>
                    </article>
                </div>
            </div>
            <div class="container_footer_container">
                <div class="container_footer_wrapper">
                    <div class="container_footer_left">
                        <ul>
                            <li>Home</li>
                            <li>Requests</li>
                            <li>About Us</li>
                        </ul>
                    </div>
                    <div class="container_footer_right">
                        <ul>
                            <li>Donate</li>
                            <li>Bible</li>
                            <li>Verse of the Day</li>
                        </ul>
                    </div>
                    <div class="container_footer_footer">
                        Copyright Baptist Church of America
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
