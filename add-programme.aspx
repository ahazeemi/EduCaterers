<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="add-programme.aspx.cs" Inherits="WebApplication1.addProgramme" %>
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
    <li  class="active">
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
               <div class="col-md-3">
                <div class="card">
                    <h4>Add A Programme</h4>
                </div>
                   </div>
               </div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="row">
                               
                                    <div class="col-md-2">
                                   <p>Select University</p>
                                        </div>
                                    
                                <div class="col-md-4">
                                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                        AutoPostBack="true">
                                    </asp:DropDownList>




                                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                        AutoPostBack="true">
                                    </asp:DropDownList>


                                    <asp:DropDownList ID="uniDropDown" runat="server"></asp:DropDownList>
                                </div>
                                   
                            </div>
                            <div class="row">
                                 <div class="col-md-2">
                                   <p>Select Field</p>
                                     </div>
                              <div class="col-md-4">
                                    <asp:DropDownList ID="ddType" runat="server">
                                    <asp:ListItem Text="Select" Selected="True" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Undergraduate" Value="Under"></asp:ListItem>
                                    <asp:ListItem Text="Postgraduate"  Value="Post"></asp:ListItem>

                                        </asp:DropDownList>

                               
                                    <asp:DropDownList ID="fieldDropDown" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            
                        </ContentTemplate>

                    </asp:UpdatePanel>
            <div class="row">
                                <div class="col-md-4">
                                    <asp:Button ID="addProg" class="btn" runat="server" Text="Add Programme" OnClick="addpro_Click" />
                                </div>
                            </div>
                </div>


        </div>
    </div>


</asp:Content>


