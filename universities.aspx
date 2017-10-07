<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/nav.Master" CodeBehind="universities.aspx.cs" Inherits="WebApplication1.WebForm1" %>



<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <title>Universities | EduCaterers</title>

    <style>
        .box {
            width: 90%;
            max-width: 600px;
            height: auto;
            margin: 0 auto;
            margin-top: 20px;
            border-radius: 7px;
            box-shadow: 0px 3px 10px 1px rgba(0, 0, 0, 0.9);
            opacity: 1;
            text-align: center;
                background: #f0f0f0;
        }

        .field {
            width: 100%;
            margin: 10px auto;
            padding: 10px;
            background: #FFFF;
            border: none;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: none;
            color: black;
            font-weight: 700;
            font-family: Roboto,serif;
            text-align: center;
        }


        center {
            text-align: center;
            width: 80%;
            margin: auto;
            clear: both;
        }


        body {
            min-height: 600px !important;
            width: 100%;
            
        }

        h1 {
            clear: both;
        }

        ::-webkit-input-placeholder { /* WebKit browsers */
            color: black;
        }

        :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: black;
        }

        ::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: black;
        }

        :-ms-input-placeholder { /* Internet Explorer 10+ */
            color: black;
        }



        .btn {
            width: 100%;
            margin: 10px auto;
            padding: 10px;
            background: #161616;
            border: none;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: none;
            color: orange;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: uppercase;
        }

            .btn:hover {
                background: #FFBF00;
                color: #333;
            }

            .btn:active {
                background: #FACC2E;
                color: #333;
            }
    </style>

     <script type="text/javascript">
    function openModal() {
        $('#addUni').modal('show');
    }
</script>

</asp:Content>

<asp:Content ID="navContent" ContentPlaceHolderID="navLinks" runat="server">
    <li><a href="home.aspx">Home</a></li>
    <li><a href="universities.aspx"  class="active">Universities</a></li>
    <li><a href="Prepare.aspx">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
    
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="fixedNavLinks" runat="server">
    <li><a href="home.aspx">Home</a></li>
    <li><a href="universities.aspx"  class="active">Universities</a></li>
    <li><a href="Prepare.aspx">Prepare</a></li>
    <li><a href="myPortal.aspx">My Portal</a></li>
   
    </asp:Content>

<asp:Content ID="uni" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 style="margin-bottom:80px; background: #ffdf4b; min-height:80px; padding:30px; color:#007aa1">Find Universities</h1>
    <div class="container"  style="min-height: calc(100vh - 100px);">
        
        <div class="row" style="margin-bottom:70px">

            <div class="col-md-5">

                

                <div class="box">
                    <asp:TextBox class="field" ID="Name" placeholder="Search For Universities" runat="server"></asp:TextBox>
                    <br />

                    <asp:Button ID="Button1" class="btn" runat="server" OnClick="SearchButton_Click" Text="Search" />
                    <br />
                    <asp:Label ID="Message" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    
                </div>

            </div>
            <div class="col-md-1">
                <h4 style="padding:50px 0px;">OR</h4>
            </div>
            <div class="col-md-6">

                <div class="box" style="padding-top:20px">


                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                AutoPostBack="true">
                            </asp:DropDownList>


                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem Text="City" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="Type" runat="server">
                                <asp:ListItem Text="Study Level" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Undergraduate" Value="Under"></asp:ListItem>
                                <asp:ListItem Text="Postgraduate" Value="Post"></asp:ListItem>
                            </asp:DropDownList>


                            <asp:DropDownList ID="dField" runat="server">
                               
                            </asp:DropDownList>

                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <br />

                    <asp:Button ID="Button2" class="btn" runat="server" OnClick="dropDownSearch" Text="Search" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                   
                </div>

            </div>


        </div>
        <div class="row">
            <div class="col-md-12">
                <asp:Label Visible="false" ID="notLoggedIn" runat="server" Text="To add universities to your profile, Please Login." CssClass="alert alert-info" Width="100%"></asp:Label>
                <asp:Label Visible="false" ID="uniAdded" runat="server" Text="" Width="100%"></asp:Label>
          
            </div>
            <div class="col-md-12 col-md-offset-2" id="ranking">
                <asp:GridView ID="SearchResultGrid"  runat="server" OnRowDataBound="showAlert" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SearchResultGrid_SelectedIndexChanged">
                        <HeaderStyle BackColor="#FF3300"  CssClass="table table-responsive" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                      
                    </asp:GridView>

            </div>

        </div>

        <div id="addUni" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
       
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add University</h4>
           
      </div>
      <div class="modal-body">
                     <asp:Label ID="uniName" runat="server" Font-Size="Medium" Font-Bold="True"></asp:Label>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="field3" runat="server" OnSelectedIndexChanged="fieldIndexChanged"
                                AutoPostBack="true">
                            </asp:DropDownList>
                            <asp:DropDownList ID="academicLevel" runat="server" OnSelectedIndexChanged="typeIndexChanged"  AutoPostBack="true"></asp:DropDownList>
                            <asp:DropDownList ID="dateDropDown" runat="server"></asp:DropDownList>
                            
                         </ContentTemplate>

                    </asp:UpdatePanel>
                           
	            <asp:Button ID="addUniversityToApplied" class="btn" runat="server" OnClick="addUniv" Text="Add University" />
                   	
      </div>
     
    </div>

  </div>
</div>

        

    </div>


</asp:Content>


