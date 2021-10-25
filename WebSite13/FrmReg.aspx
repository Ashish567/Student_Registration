<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FrmReg.aspx.cs" Inherits="FrmReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link rel="shortcut icon" href="images/l.png" />
    
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link href="App_Themes/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap.min.css" rel="stylesheet" />
    
    <script src="App_Themes/js/bootstrap.js"></script>
    <script src="App_Themes/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="StyleSheet.css" rel="stylesheet" />



</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
    <div id="li8">
         <div class="pi row-fluid">
            <h3 id="bi" class="kites" style="font-family:Calibri">Registration Form</h3>
        </div><%--Header--%>

        <div class="container-fluid">
             <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6"><%--col-sm-6--%>
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12"><%--col-sm-12--%>
            <strong><asp:Label ID="lblregid"   style="font-family:Calibri" runat="server" Text="Enquiry No(If any) :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1"><%--col-sm-12 --%>
            <asp:TextBox  ID="Txt1" style="padding-left:20px;padding-right:20px" type="number"  placeholder="Enter enquiry reference no." CssClass="form-control inputxlarge" runat="server"></asp:TextBox>
                </div>
        </div>
            </div>
        </div><br />

            
             <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6"><%--col-sm-6--%>
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12"><%--col-sm-12--%>
            <strong><asp:Label ID="lbl1"   style="font-family:Calibri" runat="server" Text="Registration No :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1"><%--col-sm-12 --%>
            <asp:TextBox  ID="Txt11"  placeholder="registration no" type="number" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                </div>
        </div>
            </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
                <div class=" col-md-4 col-lg-4 col-xs-12" ><%--style="padding:initial"--%><%--col-sm-12--%>
            <strong><asp:Label ID="Lbl2"  runat="server" style="font-family:Calibri" Text="Registration Date :"></asp:Label></strong>
                    </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2"><%--col-sm-12 --%>
            <asp:TextBox ID="Txt2"  CssClass="form-control" type="date" runat="server"></asp:TextBox>
                    </div>
                </div>
        </div>


    </div><br />



             <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6"><%--col-sm-6--%>
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12"><%--col-sm-12--%>
            <strong><asp:Label ID="lbl22"   style="font-family:Calibri" runat="server" Text="Stream :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1"><%--col-sm-12 --%>
             <asp:DropDownList CssClass="form-control" ID="Ddl1" runat="server">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Applied</asp:ListItem>
                    <asp:ListItem>Electronics</asp:ListItem>
                 <asp:ListItem>Computer</asp:ListItem>
                </asp:DropDownList>
                </div>
        </div>
            </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
                <div class=" col-md-4 col-lg-4 col-xs-12" ><%--style="padding:initial"--%><%--col-sm-12--%>
            <strong><asp:Label ID="lbl3"  runat="server" style="font-family:Calibri" Text="Registration Fee :"></asp:Label></strong>
                    </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2"><%--col-sm-12 --%>
            <asp:TextBox ID="Txt3"  CssClass="form-control" placeholder="registration fees" type="number" runat="server"></asp:TextBox>
                    </div>
                </div>
        </div>


    </div>
          <br />
            <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6"><%--col-sm-6--%>
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12"><%--col-sm-12--%>
            <strong><asp:Label ID="lbl4"   style="font-family:Calibri" runat="server" Text="Name :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1"><%--col-sm-12 --%>
            <asp:TextBox  ID="Txt22" style="padding-left:20px;padding-right:20px"  placeholder="Enter Name" CssClass="form-control inputxlarge" runat="server"></asp:TextBox>
                </div>
        </div>
            </div>
        </div><br />

            <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6"><%--col-sm-6--%>
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12"><%--col-sm-12--%>
            <strong><asp:Label ID="lbl5"   style="font-family:Calibri" runat="server" Text="Father's Name :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1"><%--col-sm-12 --%>
            <asp:TextBox  ID="Txt44" style="padding-left:20px;padding-right:20px"  placeholder="Enter Father's Name" CssClass="form-control inputxlarge" runat="server"></asp:TextBox>
                </div>
        </div>
            </div>
        </div><br />
            
             <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
                <div class="col-md-4 col-lg-4 col-xs-12">
            <strong><asp:Label ID="Label6"  style="font-family:Calibri" runat="server" Text="Date Of Birth :"></asp:Label></strong>
                    </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
            <asp:TextBox ID="Txt33" CssClass="form-control" type="date"  placeholder="Date Of Birth" runat="server"></asp:TextBox>
               </div>     
            </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
            <div class="col-md-4 col-lg-4 col-xs-12" style="padding-left:10px">
            <strong><asp:Label ID="lbl7" runat="server"  style="font-family:Calibri" Text="Mobile No :"></asp:Label></strong>
                </div>
            <div class="col-md-2 col-lg-2 col-xs-12">
            <asp:TextBox ID="Txt4" CssClass="form-control" placeholder="Enter Mobile No"  type="tel" runat="server"></asp:TextBox>
                </div>
                </div>
        </div>
        </div><br />

             <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6"><%--col-sm-6--%>
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12"><%--col-sm-12--%>
            <strong><asp:Label ID="lbl8"   style="font-family:Calibri" runat="server" Text="Email ID :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1"><%--col-sm-12 --%>
            <asp:TextBox  ID="Txt5" style="padding-left:20px;padding-right:20px" type="email"  placeholder="Enter Email" CssClass="form-control inputxlarge" runat="server"></asp:TextBox>
                </div>
        </div>
            </div>
        </div><br />

             <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6"><%--col-sm-6--%>
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12"><%--col-sm-12--%>
            <strong><asp:Label ID="lbl9"   style="font-family:Calibri" runat="server" Text="Send Notification :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1"><%--col-sm-12 --%>
                <asp:CheckBoxList ID="Chklst1" CssClass="form-check-inline" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>SMS</asp:ListItem>
                    <asp:ListItem>Email</asp:ListItem>

                </asp:CheckBoxList>
                </div>
        </div>
            </div>
        </div><br />


            <div class="form-inline">
            
            <strong><asp:Label ID="lbl25" runat="server"  Text="Remarks :"></asp:Label></strong>
                
                      
                <textarea style="margin-left:70px" placeholder="Enter Your Remarks Here..." cols="80" class="form-control" id="TextArea1" rows="3"></textarea>
             
        </div><br />
                 <div style="text-align:center">
        <asp:Button ID="Btn1" class="btn btn-sm btn-primary" style="padding-left:30px;padding-right:30px;" runat="server" OnClick="Save_Click" Text="Save" />
        </div><br />






    
    </div>
        </div>

        <br />

        <div id="li9">
            <div class="container-fluid">
                 <asp:GridView CssClass="table table-responsive" AllowSorting="true" ID="Gdv1" runat="server">
                 </asp:GridView> <br />
                
                    <asp:Button ID="Btn2" CssClass="btn btn-primary" runat="server" Text="Approve" />
                    <asp:Button ID="Btn3" CssClass="btn btn-primary" runat="server" Text="Edit" />
                &nbsp
                <asp:Button ID="Btn4" runat="server" CssClass="btn btn-primary" Text="Delete/Dissaprove" />&nbsp
                <asp:Button ID="Btn5" runat="server" CssClass="btn btn-primary" Text="Proceed For Payment" />
                <br /><br />

                 <strong><asp:Label ID="lbl10" runat="server"  Text="Reason For Delete/Disapprove"></asp:Label></strong>
                 <textarea placeholder="Enter Your Texts" cols="80" class="form-control" id="TextArea2" rows="3"></textarea>
            <br />
              <div style="text-align:center">
        <asp:Button ID="Btn6" class="btn btn-sm btn-primary" style="padding-left:30px;padding-right:30px;" runat="server" Text="Submit" />
        </div><br />
            </div>
                  </div>

    </form>
</body>
</html>
