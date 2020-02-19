<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="housePage.aspx.cs" Inherits="prjRemaxWebsite.GUI.housePage" %>

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
                    <li class="nav-item">
                            <a class="nav-link" href="messaginPage"><strong>Contact Agents</strong></a>
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
                        <asp:Label ID="lblType" runat="server" Text="Type of Residence"></asp:Label>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:Label ID="lblCity" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="text-center">
                        <asp:Label ID="lblNumberRooms" runat="server" Text="Number of Rooms"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="border-right:solid">
                        <asp:DropDownList ID="cboTypeOfResidence" runat="server" Width="181px" AutoPostBack="True" OnSelectedIndexChanged="cboTypeOfResidence_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:DropDownList ID="cboLocation" runat="server" Width="181px" AutoPostBack="True" OnSelectedIndexChanged="cboLocation_SelectedIndexChanged" ></asp:DropDownList>
                    </td>
                    <td class="text-center" style="border-right:solid">
                        <asp:DropDownList ID="cboPrice" runat="server" Width="181px" AutoPostBack="True" OnSelectedIndexChanged="cboPrice_SelectedIndexChanged" >
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>10000</asp:ListItem>
                            <asp:ListItem>20000</asp:ListItem>
                            <asp:ListItem>30000</asp:ListItem>
                            <asp:ListItem>50000</asp:ListItem>
                            <asp:ListItem>100000</asp:ListItem>
                            <asp:ListItem>200000</asp:ListItem>
                            <asp:ListItem>300000</asp:ListItem>
                            <asp:ListItem>500000</asp:ListItem>
                            <asp:ListItem>600000</asp:ListItem>
                            <asp:ListItem>70000</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-center">
                        <asp:DropDownList ID="cboNumberOfRooms" runat="server" Width="181px" AutoPostBack="True" OnSelectedIndexChanged="cboNumberOfRooms_SelectedIndexChanged">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1 1/2</asp:ListItem>
                            <asp:ListItem>2 1/2</asp:ListItem>
                            <asp:ListItem>3 1/2</asp:ListItem>
                            <asp:ListItem>4 1/2</asp:ListItem>
                            <asp:ListItem>5 1/2</asp:ListItem>
                            <asp:ListItem>6 1/2</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-center" rowspan="2">

                        <asp:Button ID="btnSearch" runat="server" Text="Search" Width="139px" OnClick="btnSearch_Click" />

                    </td>
                </tr>
            </table>
        </section>

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
    </form>
</body>
</html>
