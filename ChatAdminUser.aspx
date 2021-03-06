﻿<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="ChatAdminUser.aspx.cs" Inherits="WebApplication1.ChatAdminUser" %>

<asp:Content ID="Content3" ContentPlaceHolderID="navPlace" runat="server">
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
            <i class="fa fa-university" aria-hidden="true"></i>
            <p>Add Entry Test</p>
        </a>

    </li>
    <li class="active">
        <a href="ChatAdmin.aspx">
            <i class="fa fa-comments-o" aria-hidden="true"></i>
            <p>Career Counseling</p>
        </a>

    </li>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="content">

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-offset-2 col-md-6">
                    <div class="card">
                        <div class="header">
                            <a href="universities.aspx" class="ab button"><span>Career Counseling</span></a>
                        </div>
                        <div class="header">
                            <h4 class="title" runat="server" id="chatWith"></h4>

                        </div>
                        <div>

                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div>
                                        <asp:TextBox ID="txtmsg" runat="server" CssClass="form-control input-lg"  Height="290px" ReadOnly="True" TextMode="MultiLine"
                                            ></asp:TextBox>
                                    </div>
                                    <asp:Timer runat="server" Interval="1000" OnTick="Unnamed1_Tick"></asp:Timer>
                                </ContentTemplate>

                            </asp:UpdatePanel>




                        </div>
                        <div>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:TextBox ID="msg" runat="server" Height="36px" Width="60%"></asp:TextBox>
                                    
                                <asp:LinkButton ID="LinkButton1" Height="36px" Width="30%" runat="server" CssClass="btn btn-primary form-control" OnClick="Send">
<i class="fa fa-plus"></i> SEND</asp:LinkButton>
                                </ContentTemplate>

                            </asp:UpdatePanel>
                        </div>


                    </div>
                </div>




            </div>



        </div>
    </div>
</asp:Content>

