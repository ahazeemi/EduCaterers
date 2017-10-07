<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" %>

<asp:Content ID="Content3" ContentPlaceHolderID="navPlace" runat="server">
   <li  class="active">
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
                <div class="col-md-4">
                    <div class="card">
                        <asp:TextBox class="field" ID="Name" placeholder="University Name" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <asp:TextBox class="field" ID="Country" placeholder="Country" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <asp:TextBox class="field" ID="City" placeholder="City" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <asp:TextBox class="field" ID="hecRank" placeholder="Hec Rank" runat="server"></asp:TextBox>
                    </div>
                </div>
                  <div class="col-md-4">
                    <div class="card">
                        <asp:TextBox class="field" ID="worldrank" placeholder="World Rank" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <asp:TextBox class="field" ID="link1" placeholder="Website Link" runat="server"></asp:TextBox>
                    </div>
                </div>
                 <div class="col-md-4">
                    <div class="card">
                        <asp:FileUpload ID="FileUpload1" runat="server"/>
                    </div>
                </div>
          </div>
               <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <asp:Button ID="addAdminBtn" class="btn" runat="server" Text="Add University"  OnClick="Add_Uni_Click"/>
                        
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

                        <div class="col-md-8">
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                AutoPostBack="true">
                                <asp:ListItem Text="Select Country" Value="0"></asp:ListItem>
                            </asp:DropDownList>




                            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                AutoPostBack="true">
                                <asp:ListItem Text="Select City" Value="0"></asp:ListItem>
                            </asp:DropDownList>


                            <asp:DropDownList ID="uniDropDown" runat="server" >
                                <asp:ListItem Text="Select University" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        </div>
                       
                    </ContentTemplate>

            </asp:UpdatePanel>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <asp:Button ID="delUni" class="btn" runat="server" Text="Delete University" OnClick="delUni_Click"/>
                        
                    </div>
                </div>
                </div> 

               
  
            .
               


        </div>
    </div>


</asp:Content>
