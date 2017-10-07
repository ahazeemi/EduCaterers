<%@ Page Title="" Language="C#" MasterPageFile="~/nav.Master" AutoEventWireup="true" CodeBehind="Prepare.aspx.cs" Inherits="WebApplication1.Prepare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .video-container {
	position:relative;
	padding-bottom:56.25%;
	padding-top:30px;
	height:0;
	overflow:hidden;
}

.video-container iframe, .video-container object, .video-container embed {
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navLinks" runat="server">
    <li><a href="home.aspx">Home</a></li>
    <li><a href="universities.aspx">Universities</a></li>
    <li><a href="Prepare.aspx" class="active">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fixedNavLinks" runat="server">
    <li><a href="home.aspx">Home</a></li>
    <li><a href="universities.aspx">Universities</a></li>
    <li><a href="Prepare.aspx" class="active">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="margin-bottom: 80px; background: #ffdf4b; min-height: 80px; padding: 30px; color: #007aa1; clear: both">Resources</h1>

    <div class="container" style="min-height: calc(100vh - 100px);">
        <div class="row" style="text-align:center">
            <div class="col-md-12">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="fieldDropDown" runat="server" OnSelectedIndexChanged="FieldDropDown_SelectedIndexChanged"
                        AutoPostBack="true">
                    </asp:DropDownList>

                    <asp:DropDownList ID="Load_Video" runat="server"></asp:DropDownList>
                    <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" OnClick="Play_Video" Text="play" />
                    <br />
                    <div class="video-container"><div id="videoplay" runat="server"></div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
                </div>
        </div>
    </div>
</asp:Content>
