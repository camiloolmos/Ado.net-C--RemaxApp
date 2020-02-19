<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="messaginPage.aspx.cs" Inherits="prjRemaxWebsite.GUI.messaginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Messaging Page</title>
    <link href="../style/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <style type="text/css">
        .tb-message {
            width: 50%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div id="top-bar">
                <a class="navbar-brand" href="homePage.aspx" style="padding-left: 80px">
                    <img src="../img/REMAX_masterLogo@1x.png" width="150px" height="26px" class="d-inline-block align-top" alt=""/>
                </a>
                <img src="../img/REMAX_Collection.png" style="padding-left: 160px" />
                <img src="../img/REMAX_Commercial.png" style="padding-left: 240px" />
            </div>
            <nav class="navbar navbar-expand-lg light">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="homePage.aspx"><strong>Home</strong> <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="housePage.aspx"><strong>Listing</strong></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="housePage"><strong>Search Houses</strong></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="agentPage"><strong>Search Agents</strong></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="messaginPage"><strong>Contact Agents</strong></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <%--Messaging section--%>
        <section class="message">
            <section class="message">
                <h1 class="text-center"><strong>Message an Agent</strong></h1>
                <table align="center" class="auto-style3">
                    <tr>
                        <td colspan="2">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>
                            <asp:Label ID="lblFrom" runat="server" Text="From :"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:TextBox ID="txtFrom" runat="server" OnTextChanged="txtFrom_TextChanged" Width="489px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>
                            <asp:Label ID="lblTo" runat="server" Text="To :"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:DropDownList ID="cboRecipient" runat="server" AutoPostBack="True" Height="53px" Width="489px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>
                            <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server" Width="489px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>
                            <asp:Label ID="lblMessage" runat="server" Text="Message :"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:TextBox ID="txtMessage" runat="server" Height="61px" TextMode="MultiLine" Width="489px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="text-left" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" class="btn btn-color btn-size" OnClick="btnCancel_Click" style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;" Text="Cancel" />
                            <asp:Button ID="btnSend" runat="server" class="btn btn-color btn-size" OnClick="btnSend_Click" style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;" Text="Send " />
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMessageSent" runat="server" style="text-align: center; color: forestgreen;" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </section>
            <footer>
                <p class="footer-description">
                    © 2019 Edgar Olmos.</p>
            </footer>

        </section>
    </form>
</body>
</html>
