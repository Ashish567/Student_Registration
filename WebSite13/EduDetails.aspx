<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EduDetails.aspx.cs" Inherits="EduDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>Education Details</title>




    <!-- Bootstrap CSS and JSS-->
    <link href="App_Themes/bootstrap-4.0.0-beta.2-dist/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="App_Themes/bootstrap-4.0.0-beta.2-dist/css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="App_Themes/bootstrap-4.0.0-beta.2-dist/css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="App_Themes/bootstrap-4.0.0-beta.2-dist/css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="App_Themes/bootstrap-4.0.0-beta.2-dist/css/bootstrap.css" rel="stylesheet" />
    <link href="App_Themes/bootstrap-4.0.0-beta.2-dist/css/bootstrap.min.css" rel="stylesheet" />


    <script src="App_Themes/bootstrap-4.0.0-beta.2-dist/js/bootstrap.bundle.js"></script>
    <script src="App_Themes/bootstrap-4.0.0-beta.2-dist/js/bootstrap.bundle.min.js"></script>
    <script src="App_Themes/bootstrap-4.0.0-beta.2-dist/js/bootstrap.js"></script>
    <script src="App_Themes/bootstrap-4.0.0-beta.2-dist/js/bootstrap.min.js"></script>



    <!-- CSS and JSS Other than Bootstrap-->

    <link href="App_Themes/css/footable.bootstrap.css" rel="stylesheet" />
    <link href="App_Themes/css/footable.bootstrap.min.css" rel="stylesheet" />
    <link href="App_Themes/css/jquery-ui.css" rel="stylesheet" />
    <link href="App_Themes/css/jquery-ui.min.css" rel="stylesheet" />
    <link href="App_Themes/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="App_Themes/css/StyleSheet.css" rel="stylesheet" />

    <script src="App_Themes/js/footable.js"></script>
    <script src="App_Themes/js/footable.min.js"></script>
    <script src="App_Themes/js/jqBootstrapValidation.js"></script>
    <script src="App_Themes/js/jquery-3.2.1.js"></script>
    <script src="App_Themes/js/jquery-3.2.1.min.js"></script>
    <script src="App_Themes/js/jquery.dataTables.min.js"></script>
    <script src="App_Themes/js/jquery.validate.js"></script>
    <script src="App_Themes/js/jquery.validate.min.js"></script>


    <script>
        $(taskPage).find('#saveTask').click(function (evt) {
            evt.preventDefault();
            if ($(taskPage).find('form').valid()) {
                var task = $('form').toObject();
                $('#taskRow').tmpl(task).appendTo($(taskPage
                ).find('#tblTasks tbody'));
            }
        });
    </script>


    </head>
    <body>
    <form id="form1" runat="server" class="container-fluid">
    <div id="li3">
        
    <div class="pi row-fluid">
    <h3 id="bi4" class="kites" style="font-family:Calibri">Education Details</h3>
    </div><%--Header--%>



    <div class="container-fluid">
    <div class="form-inline row">
    <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="row">
    <div class="col-sm-3 col-md-3 col-lg-4 col-xs-12">
    <strong><asp:Label ID="LblRegNo" runat="server" Text="Registration No :"></asp:Label></strong>
    </div>
    <div class="col-sm-3 col-md-3 col-lg-2 col-xs-12">   
    <asp:TextBox type="text" placeholder="Registration No" CssClass="form-control" ID="TxtRegNo" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    </div>
    </div>
    <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="row">
    <div class="col-sm-3 col-md-3 col-lg-4 col-xs-12">
    <strong><asp:Label ID="LblRegDt" runat="server" Text="Registration Date :"></asp:Label></strong>
    </div>
                         
    <div class="col-sm-3 col-md-3 col-lg-2 col-xs-12">
    <asp:TextBox type="date" CssClass="form-control" ID="TxtRegDt" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    </div>
    </div>
    </div>
            
    <br /> 
    <div class="form-inline row">
    <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="row">
    <div class="col-sm-3 col-md-3 col-lg-4 col-xs-12">
    <strong><asp:Label ID="LblName" runat="server" Text="Name :"></asp:Label></strong>
    </div>
    <div class="col-sm-3 col-md-3 col-lg-2 col-xs-12">
    <asp:TextBox placeholder="Name" CssClass="form-control" ID="TxtName" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    </div>
    </div>
    <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="row">
    <div class="col-sm-3 col-md-3 col-lg-4 col-xs-12">
    <strong><asp:Label ID="LbllFname" runat="server" Text="Father's Name :"></asp:Label></strong>
    </div>
    <div class="col-sm-3 col-md-3 col-lg-2 col-xs-12">
    <asp:TextBox placeholder="Father's Name" CssClass="form-control input-sm" ID="TxtFname" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    </div> 
    </div>
    </div><br />
    <div class="form-inline row">
    <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="row">
    <div class="col-sm-3 col-md-3 col-lg-4 col-xs-12">
    <strong><asp:Label ID="LblMob" runat="server" Text="Mobile No :"></asp:Label></strong>
    </div>
    <div class="col-sm-3 col-md-3 col-lg-2 col-xs-12">
    <asp:TextBox type="tel" placeholder="Mobile No" CssClass="form-control input-sm" ID="TxtMob" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    </div>
    </div>
    <div class="col-sm-6 col-md-6 col-lg-6">
    <div class="row">
    <div class="col-sm-3 col-md-3 col-lg-4 col-xs-12">
    <strong><asp:Label ID="LblEmail" runat="server" Text="Email ID :"></asp:Label></strong>
    </div>
    <div class="col-sm-3 col-md-3 col-lg-2 col-xs-12">
    <asp:TextBox type="email" placeholder="Email ID" CssClass="form-control input-sm" ID="TxtEmail" runat="server" ReadOnly="true"></asp:TextBox>
    </div>
    </div>
    </div>
    </div><br />
                 
               
    <asp:Table ID="AddEdu" CssClass="table table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl" runat="server">
    <asp:TableHeaderRow>
    <asp:TableHeaderCell>
    <asp:Label runat="server" Text="Degree"></asp:Label></asp:TableHeaderCell>
    <asp:TableHeaderCell>
    <asp:Label ID="LblStrm" runat="server" Text="Stream"></asp:Label></asp:TableHeaderCell>
    <asp:TableHeaderCell>
    <asp:Label ID="LblMrks" runat="server" Text="Marks(%)"></asp:Label></asp:TableHeaderCell>
    <asp:TableHeaderCell>
    <asp:Label ID="LblYop" runat="server" Text="Year Of Passing"></asp:Label></asp:TableHeaderCell>
    <asp:TableHeaderCell>
    <asp:Label ID="LblUniv" runat="server" Text="University"></asp:Label></asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
    <asp:TableCell>
    <asp:DropDownList ID="DdlDgre" required="required" AutoPostBack="true" OnSelectedIndexChanged="Ddl11_SelectedIndexChanged" CssClass="form-control" runat="server">
    <asp:ListItem>-Select-</asp:ListItem>
    <asp:ListItem>Matriculation</asp:ListItem>
    <asp:ListItem>Intermediate</asp:ListItem>
    <asp:ListItem>Graduation</asp:ListItem>
    <asp:ListItem>Post-Graduation</asp:ListItem>
    </asp:DropDownList>

    </asp:TableCell>
    <asp:TableCell>
    <asp:DropDownList ID="DdlSbDgre" required="required" CssClass="form-control" AppendDataBoundItems="false" AutoPostBack="true" runat="server">
    <asp:ListItem>-Select-</asp:ListItem>
                 
    </asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
    <asp:TextBox ID="TxtPrcnt" placeholder="%" required="required" CssClass="form-control" runat="server"></asp:TextBox></asp:TableCell>
    <asp:TableCell>
    <asp:DropDownList ID="DdlYop" CssClass="form-control" required="required" runat="server">
    <asp:ListItem>-Select-</asp:ListItem>
    <asp:ListItem>2017</asp:ListItem>
    <asp:ListItem>2016</asp:ListItem>
   
    <asp:ListItem>2015</asp:ListItem>
    <asp:ListItem>2014</asp:ListItem>
    <asp:ListItem>2013</asp:ListItem>
    <asp:ListItem>2012</asp:ListItem>
    <asp:ListItem>2011</asp:ListItem>
    <asp:ListItem>2010</asp:ListItem>
    <asp:ListItem>2009</asp:ListItem>
    <asp:ListItem>2008</asp:ListItem>
    <asp:ListItem>2007</asp:ListItem>
    <asp:ListItem>2006</asp:ListItem>
    <asp:ListItem>2005</asp:ListItem>
    <asp:ListItem>2004</asp:ListItem>
    <asp:ListItem>2003</asp:ListItem>
    <asp:ListItem>2002</asp:ListItem>
    <asp:ListItem>2001</asp:ListItem>
    <asp:ListItem>2000</asp:ListItem>
    <asp:ListItem>1999</asp:ListItem>
    <asp:ListItem>1998</asp:ListItem>
    <asp:ListItem>1997</asp:ListItem>
    <asp:ListItem>1996</asp:ListItem>
    <asp:ListItem>1995</asp:ListItem>
    <asp:ListItem>1994</asp:ListItem>
    <asp:ListItem>1993</asp:ListItem>
    <asp:ListItem>1992</asp:ListItem>
    <asp:ListItem>1991</asp:ListItem>
    <asp:ListItem>1990</asp:ListItem>
    </asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
    <asp:TextBox ID="TxtUniv" placeholder="University" required="required" CssClass="form-control input-sm" runat="server"></asp:TextBox></asp:TableCell>
    </asp:TableRow>




    </asp:Table>
    <div id="alert" style="margin-left:30px" runat="server">
    <p style="color:red">Please choose a selection</p>
    </div>
    <div style="text-align:center">
    <asp:Button ID="BtnNwRow" CssClass="btn btn-primary" style="padding-left:50px;padding-right:50px" runat="server" OnClick="Addnewrow" Text="Add" />
    </div>
    <br /> <br />
    </div>
    <div class="lites container-fluid" style="padding-left:15px" id="ji1">
    <h3>List Of Added Education</h3>
    </div>
       
    <div class="container-fluid">

       
    <div class="container-fluid">
    <asp:GridView ID="GdvLstEdu" CssClass="table table-bordered table-hover table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl" HeaderStyle-CssClass="headerStyle" BorderStyle="Solid" RowStyle-Wrap="false" runat="server" OnRowDeleting="Gdv2_RowDeleting" AutoGenerateDeleteButton="true" Caption="Table 2" CaptionAlign="Top">
  
    </asp:GridView></div>

    </div>
    </div>
   
   

    </form>
    </body>
    </html>
