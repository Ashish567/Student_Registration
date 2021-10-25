<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdmEntry.aspx.cs" Inherits="AdmEntry" %>

<!DOCTYPE html>

       <html xmlns="http://www.w3.org/1999/xhtml">
       <head runat="server">

       <title>Admission Form</title>
       <link rel="shortcut icon" href="images/l.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
     
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

     

       <script src="App_Themes/js/footable.js"></script>
       <script src="App_Themes/js/footable.min.js"></script>
       <script src="App_Themes/js/jqBootstrapValidation.js"></script>
       <script src="App_Themes/js/jquery.dataTables.min.js"></script>
       <script src="App_Themes/js/jquery.validate.js"></script>
       <script src="App_Themes/js/jquery.validate.min.js"></script>
       <script src="App_Themes/js/jquery-3.2.1.js"></script>
       <script src="App_Themes/js/jquery-3.2.1.min.js"></script>
      

       <link href="App_Themes/css/StyleSheet.css" rel="stylesheet" />
       
       

       <script type="text/javascript">

                  function RadioCheck(rb) {
                      
                      var gv = document.getElementById("<%=GdvStuRegis.ClientID%>");
                       var rbs = gv.getElementsByTagName("input");
                       for (var i = 0; i < rbs.length; i++) {
                           
                           if (rbs[i].type == "radio") {
                              
                               if (rbs[i].checked && rbs[i] != rb)
                               {
                                   rbs[i].checked = false;
                                   break;
                               }
                           }
                       }
              
                  }
       
        
        </script>

        </head>
           
        <body>
        <form id="form1" runat="server">
        <div  id="li">
        <div class="row-fluid">
            <h2 id="bi" class="kites" style="font-family:Calibri">Admission Entry</h2>
        </div><%--Header--%>

        <div class="container">
        <div class="row">
        <div class="col-lg-3 col-md-5 col-sm-6 col-xs-12 col-12">
        <asp:DropDownList ID="DdlSearch" runat="server" OnSelectedIndexChanged="Ddl1_SelectedIndexChanged" CssClass="form-control" TabIndex="1" AutoPostBack="True">
        <asp:ListItem>------Search By-----</asp:ListItem>
        <asp:ListItem Value="RegisID">Enquiry/Reference No</asp:ListItem>
        <asp:ListItem Value="Mobile">Mobile No</asp:ListItem>
        <asp:ListItem Value="Email">Email ID</asp:ListItem>
        </asp:DropDownList>
        </div>
       
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 cow2 col-12">
        <asp:TextBox ID="TxtOpt" type="text" runat="server" CssClass="form-control" Width="100%" placeholder="Please Select An Option" TabIndex="2"></asp:TextBox>
        </div>
        <div class="col-lg-1 col-md-3 col-sm-2 col-xs-12">
        <asp:Button ID="BtnNxt" runat="server" CssClass="form-control input-sm btn-primary" OnClick="Btnnxt_Click" Text="Next" TabIndex="3" />
        <asp:Button ID="BtnRst" runat="server" CssClass="form-control input-sm btn-primary" OnClick="Btnrst_Click" Text="Reset" TabIndex="3" />
        </div>
       
        </div><%--title bar tools--%>
       
        <div style="margin-left:10%;font-family:Calibri">
        <strong><asp:Label ID="LblOr" style="font-size:25px" runat="server" Text="Or">Or</asp:Label></strong>
        </div>
        </div>
                
        <div class="lites">
        <h3 style="margin-left:10px">Pending list for admission</h3>
        </div>
      
        <br />
        <div class="container-fluid">
        <asp:GridView ID="GdvStuRegis" CssClass="table table-bordered table-hover table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl table-hover" BorderStyle="Solid" runat="server" TabIndex="4">
        <Columns>
        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
        <ItemTemplate>
        <asp:RadioButton ID="Rdbtn1" runat="server" onclick="RadioCheck(this)"/>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Registration Id" ItemStyle-HorizontalAlign="Center" Visible="false">
        <ItemTemplate>
        <asp:Label ID="RegisID" runat="server" Text='<%# Bind("RegisID") %>' Visible="false"></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Date" ItemStyle-HorizontalAlign="Center" Visible="false">
        <ItemTemplate>
        <asp:Label ID="dte" runat="server" Text='<%# Bind("Date") %>' Visible="false"></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center" Visible="false">
        <ItemTemplate>
        <asp:Label ID="name" runat="server" Text='<%# Bind("Name") %>' Visible="false"></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Father's Name" ItemStyle-HorizontalAlign="Center" Visible="false">
        <ItemTemplate>
        <asp:Label ID="fname" runat="server" Text='<%# Bind("FName") %>' Visible="false"></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Mobile" ItemStyle-HorizontalAlign="Center" Visible="false">
        <ItemTemplate>
        <asp:Label ID="mobile" runat="server" Text='<%# Bind("Mobile") %>' Visible="false"></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email ID" ItemStyle-HorizontalAlign="Center" Visible="false">
        <ItemTemplate>
        <asp:Label ID="email" runat="server" Text='<%# Bind("Email") %>' Visible="false"></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Stream" ItemStyle-HorizontalAlign="Center" Visible="false">
        <ItemTemplate>
        <asp:Label ID="stream" runat="server" Text='<%# Bind("Stream") %>' Visible="false"></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
        </asp:GridView>

        <hr />
           
        <div class="form-inline btn-group" style="margin-bottom:8px">
        <asp:Button ID="BtnPrfNtry" CssClass="btn btn-primary"  runat="server" OnClick="Btn2_Click_prfntry" Text="Profile Entry" TabIndex="5" /> &nbsp 
        <asp:Button ID="BtnEduDtl" CssClass="btn btn-primary" runat="server" OnClick="Btn3_Click_edudtl" Text="Education Details" TabIndex="6" />&nbsp
        <asp:Button ID="BtnUpdoc" CssClass="btn btn-primary" runat="server" Text="Upload Documents" TabIndex="7" />&nbsp
        <asp:Button ID="BtnFeeInst" CssClass="btn btn-primary" runat="server" Text="Fee Installments" TabIndex="8" />&nbsp
        <asp:Button ID="BtnPrcdPymnt" CssClass="btn btn-primary" runat="server" Text="Proceed Payment" TabIndex="9" />&nbsp
        <asp:Button ID="BtnPrv" CssClass="btn btn-primary" runat="server"  Text="Preview" TabIndex="10"/>
        </div>
        </div>

        </div>
        
            
           
        </form>
          
        </body>
        </html>
