<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AskPrayer.aspx.cs" Inherits="aspx_AskPrayer" %>

<form id="PrayForUs_Form" runat="server">

    <%@ Register Src="~/UserControls/HeadOfPage.ascx" TagPrefix="uc1" TagName="HeadOfPage" %>
    <%@ Register Src="~/UserControls/FooterOfPage.ascx" TagPrefix="uc1" TagName="FooterOfPage" %>

    <% Page.Title = "Ask for a Prayer"; %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <!--#include file="~/includes/resources.inc"-->
    </head>
    <body>
        <div class="container">

            <uc1:HeadOfPage runat="server" ID="HeadOfPage" />


            <div id="default_article">
                <article>

                    <fieldset>
                        <div class="Brown_Backdrop">
                            <div class="PrayFoUs_Summary">
                                <h1 align="center">The Power of Prayer</h1>
                                <p>
                                    We Strongly believe in the power of prayer.  Send us your prayer request and what we will do is
                                print a copy of your prayer request on paper and we will read it amongst our small group in our church. 
                                We will then gather around a circle along with others folks paper prayer request and pray over them. 
                                    We will acknowledge each ones request and earnestly put those requests into our prayers.  Just Fill out '
                                    the form below and we will E-mail you once your prayer request.
                                </p>
                            </div>
                            <table>
                                <tr>
                                    <td class="PrayForUs_FirstLast">First Name:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="fnameInput" runat="server" OnTextChanged="TextBox1_TextChanged" Height="22px" Width="300px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="requiredFname" runat="server" ControlToValidate="fnameInput" ErrorMessage="Input First Name" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="validateFirstName" runat="server" ControlToValidate="fnameInput" ErrorMessage="First Name Must Be 2 - 15 Characters" ValidationExpression="^[a-zA-Z]{2,15}$" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrayForUs_FirstLast">Last Name:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="lnameInput" runat="server" Height="22px" Width="300px"></asp:TextBox>
                                        <br />
                                        <asp:RegularExpressionValidator ID="validateLastName" runat="server" ControlToValidate="lnameInput" Display="Dynamic" ErrorMessage="Last Name must be 2-15 characters" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z]{2,15}$"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrayForUs_FirstLast">E-Mail:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="emailInput" runat="server" Height="22px" Width="300px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="emailInput" ErrorMessage="Input E-Mail Address" Display="Dynamic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="validateEmail" runat="server" ControlToValidate="emailInput" ErrorMessage="You must enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrayForUs_PrayQuestion" colspan="2">
                                        <span>What would you like us to pray for you?</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="PrayForUs_TextArea_TableCell" colspan="2">
                                        <textarea class="PrayForUs_TextBox" id="prayerRequestText" name="requestText" aria-checked="false"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td class="PrayForUs_TextArea_SubmitButton">
                                        <asp:Button class="PrayForUs_SubmitButton" ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </fieldset>
</form>
</article>
            </div>




 </div>
    <script type="text/javascript">
        $('#PrayForUs_Form').validate({
            errorClass: "error-validation",
            validClass: "valid-validation",
            rules: {
                requestText: {
                    required: true,
                    minlength: 15
                }
            },
            messages: {
                requestText: {
                    required: "Please enter your prayer request",
                    minlength: "At least 15 Characters Minimum"
                }
            },
        });
    </script>
<uc1:FooterOfPage runat="server" ID="FooterOfPage" />

</body>
</html>
