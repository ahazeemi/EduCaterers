<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="add-field.aspx.cs" Inherits="WebApplication1.addField" %>
<asp:Content ID="Content3" ContentPlaceHolderID="navPlace" runat="server">
    <li>
        <a href="admin.aspx">
            <i class="fa fa-university" aria-hidden="true"></i>
            <p>Add Universities</p>
        </a>

    </li>
    <li class="active">
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
                
                <div class="col-md-6">
                    <div class="card">
                        <h4>Add A Field</h4>
                        <asp:TextBox class="field" ID="fieldInitial" placeholder="Add Field Initial" runat="server"></asp:TextBox>
                        <asp:TextBox class="field" ID="fieldName" placeholder="Add Field Name" runat="server"></asp:TextBox>
                        <br />
                        <asp:Button ID="fieldAdd" class="btn" runat="server" OnClick="addfield_Click" Text="Add Field" />
                    </div>
                </div>
            </div>
            .
               


        </div>
    </div>


</asp:Content>

