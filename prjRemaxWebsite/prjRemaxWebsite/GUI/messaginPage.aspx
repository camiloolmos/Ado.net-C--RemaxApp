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
        .auto-style2 {
            width: 126px;
        }
        .auto-style3 {
            width: 44%;
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
            <h1 class="text-center"><strong>Message an Agent</strong></h1>
            <table class="auto-style3" align="center">
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblFrom" runat="server" Text="From :"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="txtFrom" runat="server" Width="489px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblTo" runat="server" Text="To :"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:DropDownList ID="cboTo" runat="server" Width="489px" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblCity" runat="server" Text="City :"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:DropDownList ID="cboCity" runat="server" Width="489px" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="lblLanguage" runat="server" Text="Language :"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:DropDownList ID="cboLanguage" runat="server" Width="489px" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <strong>
                        <asp:Label ID="lblLanguage0" runat="server" Text="Message :"></asp:Label>
                        </strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" Width="489px" Height="61px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><hr /></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-left">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-color btn-size" style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;" OnClick="btnCancel_Click"/>
                        <asp:Button ID="btnSend" runat="server" Text="Send " class="btn btn-color btn-size" style="background-color: rgb(229, 48, 48); border-color: rgb(229, 48, 48); color: #ffffff;" OnClick="btnSend_Click" />
                    </td>
                </tr>
            </table>

        </section>
    </form>
</body>
</html>
