<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="prjRemaxWebsite.GUI.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Real State Remax Website</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />
    <link href="../style/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-top-left-radius: calc(.25rem - 1px);
            border-top-right-radius: calc(.25rem - 1px);
            height: 190px;
        }
        .auto-style2 {
            width: 100%;
            border-top-left-radius: calc(.25rem - 1px);
            border-top-right-radius: calc(.25rem - 1px);
            height: 190px;
        }
        .auto-style3 {
            width: 100%;
            border-top-left-radius: calc(.25rem - 1px);
            border-top-right-radius: calc(.25rem - 1px);
            height: 257px;
        }
    </style>
</head>
<body>
    <form runat="server">
    <header>
     
        <nav class="navbar navbar-expand-lg light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                     <li class="nav-item">
                        <a class="navbar-brand" href="homePage"><strong>
                            <img src="../img/REMAX_masterLogo@1x.png" width="150px" height="26px" class="d-inline-block align-top" alt=""/>
                                                                </strong></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="homePage.aspx"><strong>Home</strong> <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="housePage.aspx"><strong>Listing</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="housePage.aspx"><strong>Search Houses</strong></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="agentPage.aspx"><strong>Search Agents</strong></a>
                    </li>
                    <li class="nav-item">
                            <a class="nav-link" href="messaginPage.aspx"><strong>Contact Agents</strong></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <%--first banner--%>
    <section class="banner">
        <div class="bd-example">
          <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../img/slide2.5.jpg"class="d-block w-100" alt="..." style="filter: brightness(50%)"/>
                    <div class="carousel-caption d-none d-md-block txt-position">
                        <h1>The house of your dreams</h1>
                        <p style="font-size: 18px">Contact an agent now and take your first step towards a new home</p>
                        <asp:Button ID="btnSearchHouse2" runat="server" Text="Find Houses" class="btn btn-color btn-size" OnClick="btnSearchHouse2_Click1" />
                    </div>
              </div>              
          </div>
        </div>
       </div>
    </section>
    <%--call to action--%>
    <section>
        <div id="text-align">        
            <h2>Useful information. For buyers. For sellers. For fun.</h2>
        </div>
        <div class="container space">
            <div class="row">
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img src="../img/agentpic.jpg" class="auto-style1" alt="..." />
                        <div class="card-body">
                            <h5 class="card-title">Allow us to assit you!</h5>
                            <p class="card-text">Our agents are experts on finding new places people can call home in a short amount of time, so why not give us a try now?</p>
                            <asp:Button ID="btnSearchAgent" runat="server" Text="Search Agents" class="btn btn-color" OnClick="btnSearchAgent_Click" />                           
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img src="../img/slide1.jpg" class="auto-style3" alt="..." />
                        <div class="card-body">
                            <h5 class="card-title">Find your new home!</h5>
                            <p class="card-text">Modern houses, Condo, Farmhouse, Mansion?? You name it and we have it for you. Start searching your new home now! </p>
                            <asp:Button ID="btnSearchHouse" runat="server" Text="Search Houses" class="btn btn-color" OnClick="btnSearchHouse_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-sm">
                    <div class="card" style="width: 18rem;">
                        <img src="../img/messasge.jpg" class="auto-style2" alt="..." />
                        <div class="card-body">
                            <h5 class="card-title">Contact one of our agents!</h5>
                            <p class="card-text">Start messaging our real estate experts to be one step closer to the house of your dreams, start messaging now!</p>
                            <asp:Button ID="btnContactAgent" runat="server" Text="Message an Agent!" class="btn btn-color" OnClick="btnContactAgent_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--second banner--%>
    <section>
        <div class="bd-example">
          <div id="carouselExampleCaption" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../img/modernhouse.jpg" class="d-block w-100" alt="..." style="filter: brightness(50%)"/>                   
                    <div class="carousel-caption d-none d-md-block txt-position">
                        <h1>Trust us now and enjoy for ever</h1>
                        <p style="font-size: 18px">It's as easy as browsing, liking and buying!!</p>
                    </div>
              </div>              
          </div>
        </div>
       </div>
    </section>
    <footer>
        <p>Copyright © 2019 Edgar Camilo Olmos Madrid and Remax.</p>
    </footer>
    </form>
</body>
</html>
