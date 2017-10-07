<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/nav.Master" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>



<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="css/login.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box" style="clear: both">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="content">
            <h1>Signup | EduCaterers</h1>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:TextBox placeholder="Username" class="field" ID="txtUsername" runat="server" AutoPostBack="true" OnTextChanged="txtUsername_TextChanged" />

                    <asp:RequiredFieldValidator ErrorMessage=" " ForeColor="#ff5050" ControlToValidate="txtUsername"
                        runat="server" />
                    <div class="center" style="text-align: center">
                        <asp:Image ID="tick" runat="server" Width="27px" Visible="false" ImageUrl="~/img/tick.png" />
                        <asp:Image ID="cross" runat="server" Width="27px" Visible="false" ImageUrl="~/img/redc.png" />
                        <asp:Label ID="av" runat="server" Text=""></asp:Label>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:TextBox placeholder="Name" class="field" ID="Name" runat="server" />

            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="#ff5050" ControlToValidate="Name"
                runat="server" />

            <asp:TextBox placeholder="Password" class="field" ID="txtPassword" runat="server" TextMode="Password" />

            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="#ff5050" ControlToValidate="txtPassword"
                runat="server" />


            <asp:TextBox class="field" placeholder="Re-enter password" ID="txtConfirmPassword" runat="server" TextMode="Password" />

            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="#ff5050" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />

            <asp:TextBox class="field" placeholder="Email" ID="txtEmail" runat="server" />

            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="#ff5050"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="#ff5050" ErrorMessage="Invalid email address." />





            <asp:TextBox class="field" placeholder="Current Education" ID="Curr_edu" runat="server" />

            <asp:TextBox class="field" placeholder="Phone" ID="Phone" runat="server" />

            <asp:Button class="btn" ID="Button1" Text="Submit" runat="server" OnClick="RegisterUser" />
            <asp:Label ID="Message" runat="server" Text=""></asp:Label>
            <h4 style="color: white; text-transform: none; font-family: Roboto,serif">Have an Account? <a href="login.aspx">Login Here</a> </h4>

        </div>
    </div>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</asp:Content>
