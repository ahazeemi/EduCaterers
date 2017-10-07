<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="myPortal.aspx.cs" Inherits="WebApplication1.myPortal" %>

<asp:Content ID="Content3" ContentPlaceHolderID="navPlace" runat="server">
    <li class="active">
        <a href="myPortal.aspx">
            <i class="fa fa-home" aria-hidden="true"></i>
            <p>Home</p>
        </a>
    </li>
    <li>
        <a href="user-universities.aspx">
            <i class="fa fa-university" aria-hidden="true"></i>
            <p>Universities</p>
        </a>
    </li>
    <li>
        <a href="UserPrepare.aspx">
            <i class="fa fa-book" aria-hidden="true"></i>

            <p>Prepare</p>

        </a>
    </li>

    <li>
        <a href="Chat.aspx">
            <i class="fa fa-comments-o" aria-hidden="true"></i>
            <p>Career Counseling</p>
        </a>
    </li>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js/js-image-slider.js" type="text/javascript"></script>
   

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="content">

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <h4 id="ab" runat="server"></h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Upcoming Deadlines</h4>

                        </div>
                        <div>
                            <div id="sliderFrame" style="height:150px; width:300px">
                                <div id="slider" style="height:150px; width:300px">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <asp:Image ImageUrl='<%#Eval("image_path") %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div id="htmlcaption" style="display: none;">
                                    <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
                                </div>
                            </div>
                        </div>
                        


                    </div>
                    
                </div>
                <div class="col-md-12">
                    <asp:GridView runat="server" ID="GridView"></asp:GridView>
                </div>


            </div>



        </div>
    </div>
</asp:Content>
