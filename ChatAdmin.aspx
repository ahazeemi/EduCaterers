<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="ChatAdmin.aspx.cs" Inherits="WebApplication1.ChatAdmin" %>

<asp:Content ID="Content3" ContentPlaceHolderID="navPlace" runat="server">
     <li>
        <a href="admin.aspx">
            <i class="fa fa-university" aria-hidden="true"></i>
            <p>Add Universities</p>
        </a>

    </li>
    <li ">
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
     <li class="active">
        <a href="ChatAdmin.aspx">
            <i class="fa fa-comments-o" aria-hidden="true"></i>
            <p>Career Counseling</p>
        </a>

    </li>
    <li>
        <a href="AddVideo.aspx">
            <i class="fa fa-youtube" aria-hidden="true"></i>
            <p>Add Video Resources</p>
        </a>

    </li>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="content">

        <div class="container-fluid">
         <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <a href="universities.aspx" class="ab button"><span>Career Counseling</span></a>
                        </div>
                        <div class="header">
                            <h4 class="title">All Chats</h4>

                        </div>
                        <div class="content table-responsive table-full-width">
                         <asp:GridView ID="usersGrid" runat="server"  EmptyDataText="No Unseen Chats"  CssClass="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="usersGrid_SelectedIndexChanged">
                            
                         </asp:GridView>
                       </div>
                           
                    </div>
                </div>




            </div>



        </div>
    </div>
</asp:Content>

