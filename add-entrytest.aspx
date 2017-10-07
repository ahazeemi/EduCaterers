<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="add-entrytest.aspx.cs" Inherits="WebApplication1.add_entrytest" %>

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
    <li class="active">
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
                <div class="col-md-12">
                    <div class="card">
                        <h4>Add an Entry Test</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Label runat="server" Visible="false" ID="alertE" ></asp:Label>
                 
                </div>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="row">

                        <div class="col-md-2">
                            <p>Select University</p>
                        </div>

                        <div class="col-md-8">
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                AutoPostBack="true">
                                <asp:ListItem Text="Select Country" Value="0"></asp:ListItem>
                            </asp:DropDownList>




                            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                AutoPostBack="true">
                                <asp:ListItem Text="Select City" Value="0"></asp:ListItem>
                            </asp:DropDownList>


                            <asp:DropDownList ID="uniDropDown" runat="server" OnSelectedIndexChanged="uniIndexChanged"  AutoPostBack="true">
                                <asp:ListItem Text="Select University" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <p>Select Test Type</p>
                            </div>
                            <div class="col-md-10">
                                <asp:DropDownList ID="testType" runat="server">
                                    <asp:ListItem Text="Written"></asp:ListItem>
                                    <asp:ListItem Text="Computer"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    
                    <div class="row">
                        <div class="col-md-2">
                            <p>Select Field</p>
                        </div>
                        <div class="col-md-4">



                            <asp:DropDownList ID="fieldDropDown" runat="server" OnSelectedIndexChanged="fieldDropDown_SelectedIndexChanged"  AutoPostBack="true">
                                <asp:ListItem Text="Select Field" Value="0"></asp:ListItem>
                            </asp:DropDownList>

                            <asp:DropDownList ID="ddType" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-2">
                            <p>Select Registration Start Date</p>
                        </div>
                        <div class="col-md-10">
                            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                        </div>


                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <p>Select Test Date</p>
                        </div>
                        <div class="col-md-10">
                            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                        </div>


                    </div>

                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <p>Select Time</p>
                        </div>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="hr" placeholder="Hour"></asp:TextBox>


                            <asp:TextBox runat="server" ID="min" placeholder="Minute"></asp:TextBox>

                            <asp:DropDownList ID="ddlAmPm" runat="server">
                                <asp:ListItem Selected="True">AM</asp:ListItem>
                                <asp:ListItem Selected="False">PM</asp:ListItem>
                            </asp:DropDownList>


                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <p>Select Resource Link</p>
                        </div>
                        <div class="col-md-10">
                             <asp:TextBox runat="server" ID="link" placeholder="Link"></asp:TextBox>
                        </div>


                    </div>
                    </ContentTemplate>

            </asp:UpdatePanel>
                    <div class="row">

                        <div class="col-md-4">
                            <asp:Button ID="addEntryTest" class="btn" OnClick="addEntryTest_Click" runat="server" Text="Add Entry Test" />
                        </div>
                    </div>
                
        </div>


    </div>


</asp:Content>
