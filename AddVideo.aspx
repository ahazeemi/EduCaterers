<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="AddVideo.aspx.cs" Inherits="WebApplication1.AddVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navPlace" runat="server">
     <li>
        <a href="admin.aspx">
            <i class="fa fa-university" aria-hidden="true"></i>
            <p>Add Universities</p>
        </a>

    </li>
    <li>
        <a href="add-field.aspx">
            <i class="fa fa-book" aria-hidden="true"></i>
            <p>Add Field</p>
        </a>

    </li>
    <li>
        <a href="add-programme.aspx">
            <i class="fa fa-building" aria-hidden="true"></i>
            <p>Add Programme</p>
        </a>

    </li>
    <li>
        <a href="add-entrytest.aspx">
            <i class="fa fa-file-text" aria-hidden="true"></i>
            <p>Add Entry Test</p>
        </a>

    </li>
    <li>
        <a href="ChatAdmin.aspx">
            <i class="fa fa-comments-o" aria-hidden="true"></i>
            <p>Career Counseling</p>
        </a>

    </li>
    <li   class="active">
        <a href="AddVideo.aspx">
            <i class="fa fa-youtube" aria-hidden="true"></i>
            <p>Add Video Resources</p>
        </a>

    </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="notificationPlace" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="content">
    <asp:scriptmanager runat="server"></asp:scriptmanager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="fieldDropDown" runat="server"></asp:DropDownList>
                
                <asp:TextBox ID="Video_Name" placeholder="Video Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="link" placeholder="Embed Code" runat="server"></asp:TextBox>
               
            </ContentTemplate>
        </asp:UpdatePanel>
         <asp:Button ID="Button1" runat="server" OnClick="Add_Field" Text="ADD_Prep_Link" />
    </div>
</asp:Content>
