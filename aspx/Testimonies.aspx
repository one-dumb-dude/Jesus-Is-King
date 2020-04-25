<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Testimonies.aspx.cs" Inherits="aspx_Testimonies" %>

<%@ Register Src="~/UserControls/HeadOfPage.ascx" TagPrefix="uc1" TagName="HeadOfPage" %>
<%@ Register Src="~/UserControls/FooterOfPage.ascx" TagPrefix="uc1" TagName="FooterOfPage" %>

<% Page.Title = "Testimonies"; %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--#include file="~/includes/resources.inc"-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <uc1:HeadOfPage runat="server" ID="HeadOfPage" />

            <div id="TestiHead">

                <p>
                    Hear from others, see what they have to say about there own personal experiences with Christ.  I encourage all who stumble upon this page to post their own experiences they had when they've met Christ for
                the first time.  What made you believe or have faith in Christ.  What are the things that happened or occurred that actually made you into a believer.  Share this others so those who don't know who 
                Christ is can get a glimpse of his works.
                </p>

            </div>

            <asp:SqlDataSource ID="JesusIsKingDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:JesusIsKingConnectionString %>"
                SelectCommand="SELECT fname, lname, [date], comment_txt FROM [user] as u INNER JOIN [Comments] as j ON u.user_id = j.user_id ORDER BY comment_id DESC"></asp:SqlDataSource>

            <div id="TestiBottomComment_Wrapper">

                <asp:Repeater ID="Repeater1" runat="server">

                    <ItemTemplate>

                        <div id="TestiBottomComment_Container">

                            <div id="TestiBottomComment">

                                <span id="Comment_Name">

                                    <asp:Label ID="fname_Label" runat="server" Text='<%# Eval("fname")%>'></asp:Label>

                                    <asp:Label ID="lname_Label" runat="server" Text='<%# Eval("lname")%>'></asp:Label>

                                </span>

                                <div id="Comment_Date">

                                    <asp:Label ID="SQLDate_Label" runat="server" Text='<%# Eval("[date]", "{0:MMMMdd, yyyy - h:mm tt}") %>'></asp:Label>

                                </div>

                                <br />

                                <br />

                                <div id="Comment_Text">

                                    <asp:Label ID="Comment_txt_Label" runat="server" Text='<%# Eval("comment_txt") %>'></asp:Label>

                                </div>

                                <br />

                            </div>

                        </div>

                    </ItemTemplate>

                </asp:Repeater>

                <div id="Comment_Page_Button_Wrapper">

                    <asp:Repeater ID="RepeaterPage" runat="server" OnItemCommand="RepeaterPage_ItemCommand">

                        <ItemTemplate>

                            <div id="Comment_Page_Button">

                                <asp:LinkButton ID="CommentPageButton" runat="server" CommandArgument="<%# Container.DataItem %>" CausesValidation="false">
                                <%# Container.DataItem %>
                                </asp:LinkButton>

                            </div>

                        </ItemTemplate>

                    </asp:Repeater>

                </div>

            </div>



            <br />

            <div id="flag">JHS</div>

            <div id="comment_info_div_wrapper">
                <div id="comment_info_div">


                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
<%--                            <table id="comment_info_table">
                                <tr>
                                    <td>First Name:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="fname_TextBox" class="comment_anon" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="fname_RFvalidator" runat="server" ControlToValidate="fname_TextBox" Display="Dynamic" ErrorMessage="First name required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="fname_StringRangeValid" runat="server" ControlToValidate="fname_TextBox" Display="Dynamic" ErrorMessage="Input 2 - 15 characters (No spaces, no numbers)" ForeColor="Red" ValidationExpression="^[A-Za-z]{2,15}$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Last Name:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="lname_TextBox" class="comment_anon" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="lname_StringRangeValid" runat="server" ControlToValidate="lname_TextBox" Display="Dynamic" ErrorMessage="Input 2 - 15 characters (No spaces, no numbers)" ForeColor="Red" ValidationExpression="^[A-Za-z]{2,15}$"></asp:RegularExpressionValidator>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>E-Mail:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="email_TextBox" class="comment_anon" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="email_RFvalidator" runat="server" ControlToValidate="email_TextBox" Display="Dynamic" ErrorMessage="First name required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_TextBox" Display="Dynamic" ErrorMessage="Input an E-mail Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top;">Comment:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="comment_TextBox" class="comment_textbox" runat="server" MaxLength="500" TextMode="MultiLine" ToolTip="Input Comment (max. 500)"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="commentText_RFvalid" runat="server" ControlToValidate="comment_TextBox" Display="Dynamic" ErrorMessage="Please input a comment" ForeColor="Red" ToolTip="Maximum Characters (500)"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Button ID="Submit_Comment" CssClass="PrayForUs_SubmitButton" runat="server" Text="Submit" OnClick="Submit_Comment_Click" PostBackUrl="~/aspx/Testimonies.aspx" />
                                    </td>
                                </tr>
                            </table>--%>
                            Sign In to add comment
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <asp:Panel ID="Comment_Loggedin_Panel" runat="server" DefaultButton="Submit_Comment_Loggedin">
                                <span>Post a comment:</span>
                                <br />
                                <asp:TextBox ID="Comment_Box_Loggedin" CssClass="comment_box_loggedin" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <br />
                                <%--                            <asp:RegularExpressionValidator ID="RegEx_Post_Loggedin" runat="server" ControlToValidate="Comment_Box_Loggedin" ErrorMessage="Max Characters: 255" ForeColor="#CC0000" ValidationExpression="^.{10, 255}$" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                                <br />
                                <asp:Button ID="Submit_Comment_Loggedin" CssClass="Comment_Loggedin_SubmitButton" runat="server" Text="Submit" OnClick="submit_Comment_Loggedin_Click" />
                            </asp:Panel>
                        </LoggedInTemplate>
                    </asp:LoginView>


                </div>
            </div>


            <br />
            <br />

        </div>

    </form>

</body>
</html>
