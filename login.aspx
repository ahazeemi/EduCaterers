<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/nav.Master" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm2" %>




   


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="css/login.css" rel="stylesheet" type="text/css"/>
</asp:Content>

<asp:Content ID="navContent" ContentPlaceHolderID="navLinks" runat="server">
    <li><a href="home.aspx">Home</a></li>
    <li><a href="universities.aspx">Universities</a></li>
    <li><a href="Prepare.aspx">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
   
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="fixedNavLinks" runat="server">
    <li><a href="home.aspx">Home</a></li>
    <li><a href="universities.aspx">Universities</a></li>
    <li><a href="Prepare.aspx">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
    
    </asp:Content>

   
 <asp:Content ID="content3"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:login id="Login2" onauthenticate="Login"  runat="server" ForeColor="#ff5050" style="width: 100%; margin-bottom: 0px;" FailureText="Email or password is incorrect" >
    <layouttemplate>
        <div class="box"  style="min-height: calc(100vh - 100px);">
            <div class="content">
                <h1>Login | EduCaterers</h1>
                
                
                <asp:textbox class="field" placeholder="Email" id="UserName" runat="server" ></asp:textbox>
                <asp:requiredfieldvalidator id="UserNameRequired" ForeColor="#ff5050" runat="server" controltovalidate="UserName" errormessage="User Name is required." tooltip="User Name is required." validationgroup="Login1">Please enter email</asp:requiredfieldvalidator>
                <br>
                <asp:textbox class="field" placeholder="Password" id="Password" runat="server" textmode="Password" ></asp:textbox>
                <asp:requiredfieldvalidator id="PasswordRequired" ForeColor="#ff5050" runat="server" controltovalidate="Password" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">Please enter password</asp:requiredfieldvalidator>
                <br>
                <asp:button class="btn" id="LoginButton" runat="server" OnClick="Login" commandname="Login" text="LogIn" validationgroup="Login1"></asp:button>
                <br>
                <asp:literal id="FailureText"  runat="server" enableviewstate="False"></asp:literal></div>
                 <br />
                <h4 style="color:white; text-transform:none; font-family:Roboto,serif">Don't Have an Account? <a href="signup.aspx">Sign Up Here.</a> </h4>
        </div>
    </layouttemplate>
           
    </asp:login>
     <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    </asp:Content>
       
       
