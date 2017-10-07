<%@ Page Title="" Language="C#" MasterPageFile="~/nav.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="navContent" ContentPlaceHolderID="navLinks" runat="server">
    <li><a href="home.aspx"  class="active">Home</a></li>
    <li><a href="universities.aspx">Universities</a></li>
    <li><a href="Prepare.aspx">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
    
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="fixedNavLinks" runat="server">
    <li><a href="home.aspx"  class="active">Home</a></li>
    <li><a href="universities.aspx">Universities</a></li>
    <li><a href="Prepare.aspx">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
   
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid " id="who-are-we">
        <div class="row banner banner1 parallax">
            <div class="col-sm-12">
                <h2>Who are we?</h2>
                <h3>EduCaterers simplifies the whole process of finding and applying to universities. So you will never miss a deadline, again.  </h3> </div>
        </div>
    </div>
    <h4>How Can We Help You?</h4>
    <h2>Universities</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <a href="universities.aspx#ranking">
                    <div class="big-box"><img src="img/uni-rank2.jpg" alt="University-By-Ranking">
                        <h3><span>University Rankings</span></h3> </div>
                </a>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <a href="universities.aspx">
                            <div class="mini-box"><img src="img/uni-sub.jpg" alt="University-By-Subject">
                                <h3><span>Find University by Subject</span></h3> </div>
                        </a>
                    </div>
                    <div class="col-md-12">
                        <a href="universities.aspx">
                            <div class="mini-box"><img src="img/uni-loc.jpg" alt="University-By-Location">
                                <h3><span>Find University by Location</span></h3> </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <h2>Prepare</h2>
        <div class="row">
            <div class="col-md-6">
                <a href="Prepare.aspx">
                    <div class="big-box"><img src="img/university-by-subject.jpg" alt="Entry-Test-Resources">
                        <h3><span>Entry Test Resources</span></h3> </div>
                </a>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <a href="Chat.aspx">
                            <div class="mini-box"><img src="img/career.jpeg" alt="University-By-Subject">
                                <h3><span>Career Consultancy</span></h3> </div>
                        </a>
                    </div>
                    <div class="col-md-12">
                        <a href="myPortal.aspx">
                            <div class="mini-box"><img src="img/uni-find.jpg" alt="University-By-Location">
                                <h3><span>University Finder</span></h3> </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--<div class="container">
   
        
        <div class=row style="text-align: center">
            <h2>Prepare</h2>
            <div class="col-md-4 col-sm-6">
                
            </div>
            <div class="col-md-4 col-sm-6">
                <h3>Career Consultancy</h3>
                <p>Stuck with the options? Let our experts help you on your way to applying to the universities that work for you.!</p>
                <button class="button" style="vertical-align:middle"><span>Consult </span></button>
            </div>
            <div class="col-md-4 col-sm-6">
                <h3>University Finder</h3>
                <p>Finding the University thats perfect for you!</p>
                <button class="button" style="vertical-align:middle"><span>University Finder </span></button>
            </div>
        </div>
       
    </div>-->
    <div class="container">
        <div class="row banner banner1 parallax">
            <div class="col-sm-12" style="text-align:center">
                <h2>My Portal</h2>
                <h3>Manage Your Universities, Deadlines, Entry Tests and much more!  </h3>
                <a href="signup.aspx" class="button" style="vertical-align:middle;"><span>Join Now </span></a>
                <a href="login.aspx" class="button"  style="vertical-align:middle;"><span>Login </span></a>
            </div>
        </div>
    </div>
</asp:Content>
