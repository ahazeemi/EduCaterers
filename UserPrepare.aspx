<%@ Page Title="" Language="C#" MasterPageFile="~/portal.Master" AutoEventWireup="true" CodeBehind="UserPrepare.aspx.cs" Inherits="WebApplication1.UserPrepare" %>



<asp:Content ID="Content3" ContentPlaceHolderID="navPlace" runat="server">
    <li>
        <a href="myPortal.aspx">
            <i class="fa fa-home" aria-hidden="true"></i>
            <p>Home</p>
        </a>
    </li>
    <li>
        <a href="user-universities.aspx">
            <i class="fa fa-university" aria-hidden="true"></i>
            <p>Universities</p>
        </a>
    </li>
    <li  class="active">
        <a href="userPrepare.aspx">
            <i class="fa fa-book" aria-hidden="true"></i>

            <p>Prepare</p>
        </a>
    </li>
 
     <li>
        <a href="Chat.aspx">
            <i class="fa fa-comments-o" aria-hidden="true"></i>
            <p>Career Counseling</p>
        </a>
    </li>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="content">

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <h4 id="ab" runat="server"></h4>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <a href="universities.aspx" class="ab button"><span>Add a University</span></a>
                        </div>
                        <div class="header">
                            <h4 class="title">Resources</h4>

                        </div>
                        <div class="content table-responsive table-full-width">
                         <asp:GridView ID="prepareGrid" runat="server" OnRowDataBound="prepareGrid_RowDataBound" EmptyDataText="No Entry Test Added"  CssClass="table table-hover">
                              

                         </asp:GridView>
                       </div>
                           
                    </div>
                </div>




            </div>



        </div>
    </div>
</asp:Content>


