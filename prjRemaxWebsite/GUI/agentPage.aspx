<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agentPage.aspx.cs" Inherits="prjRemaxWebsite.GUI.agentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Real State Remax Website</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <link href="../style/style.css" rel="stylesheet" />
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
                            <a class="nav-link" href="homePage.aspx"><strong>Listing</strong></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><strong>Search Houses</strong></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><strong>Search Agents</strong></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <%--Filter Section--%>
        <section>

            <table class="w-100 table-design">
                <tr>
                    <td class="text-center" style="border-right:solid">
                        <asp:Label ID="lblAgentId" runat="server" Text="Agent Number"></asp:Label>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="text-center">
                        <asp:Label ID="lblLanguage" runat="server" Text="Language"></asp:Label>
                    </td>

                </tr>
                <tr>
                    <td class="text-center" style="border-right:solid">
                        <asp:DropDownList ID="cboAgentNumber" runat="server" Width="181px" AutoPostBack="True"></asp:DropDownList>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:DropDownList ID="cboGender" runat="server" Width="181px" AutoPostBack="True" OnSelectedIndexChanged="cboGender_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:DropDownList ID="cboCity" runat="server" Width="181px" AutoPostBack="True" OnSelectedIndexChanged="cboCity_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    <td class="text-center">
                        <asp:DropDownList ID="cboLanguage" runat="server" Width="181px" AutoPostBack="True" OnSelectedIndexChanged="cboLanguage_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    <td class="text-center" rowspan="2">

                        <asp:Button ID="btnSearch" runat="server" Text="Search" Width="139px" OnClick="btnSearch_Click" />

                    </td>
                </tr>
            </table>
        </section>

        <%--results section--%>
        <section>
              <%--Search section --%>
        <table class="w-100">
            <tr>
                <td style="width: 10%;">&nbsp;</td>
                <td style="width: 70%;">
        <asp:Literal ID="litHouses" runat="server"></asp:Literal>
                </td>
                <td style="width: 20%;">&nbsp;</td>
            </tr>
        </table>
        </section>
    </form>
</body>
</html>
