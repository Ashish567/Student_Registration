<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfileEntry.aspx.cs" Inherits="Frmadmissionentry2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admission Entry Contd</title>
     <link rel="shortcut icon" href="images/l.png" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <link href="App_Themes/css/bootstrap-grid.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap-reboot.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap-reboot.min.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap.css" rel="stylesheet" />
    <link href="App_Themes/css/bootstrap.min.css" rel="stylesheet" />


    <link href="StyleSheet.css" rel="stylesheet" />

    <script src="App_Themes/js/bootstrap.js"></script>
    <script src="App_Themes/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>






</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
    <div id="li2">
       
     <div class="pi row-fluid">
            <h3 id="bi" class="kites" style="font-family:Calibri">Profile Entry</h3>
        </div><%--Header--%>
         
             <div class="container-fluid">
    <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
            <div class=" col-md-4 col-lg-4 col-xs-12">
            <strong><asp:Label ID="lblregid"   style="font-family:Calibri" runat="server" Text="Registration No :"></asp:Label></strong>
             </div>
            <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1">
            <asp:TextBox  ID="Txt1"  placeholder="registration id" CssClass="form-control" runat="server" ReadOnly></asp:TextBox>
                </div>
        </div>
            </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
                <div class=" col-md-4 col-lg-4 col-xs-12" >
            <strong><asp:Label ID="Lbl2"  runat="server" style="font-family:Calibri" Text="Registration Date :"></asp:Label></strong>
                    </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
            <asp:TextBox ID="Txt2"  CssClass="form-control" type="date" runat="server" ReadOnly></asp:TextBox>
                    </div>
                </div>
        </div>


    </div>
             <br />
       
           <div class="form-inline row">
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
                <div class="col-md-4 col-lg-4 col-xs-12">
            <strong><asp:Label ID="Label1"  style="font-family:Calibri" runat="server" Text="Admission ID :"></asp:Label></strong>
                    </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
            <asp:TextBox ID="Txt3" CssClass="form-control"  placeholder="admission id" runat="server"></asp:TextBox>
               </div>     
            </div>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-6">
            <div class="row">
            <div class="col-md-4 col-lg-4 col-xs-12" style="padding-left:10px">
            <strong><asp:Label ID="Label2" runat="server"  style="font-family:Calibri" Text="Admission Date :"></asp:Label></strong>
                </div>
            <div class="col-md-2 col-lg-2 col-xs-12">
            <asp:TextBox ID="Txt4" CssClass="form-control"  type="date" runat="server"></asp:TextBox>
                </div>
                </div>
        </div>
        </div><br />

        <div class="form-inline row">
            <div class="col-sm-6 col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
                <strong><asp:Label ID="Label3"  style="font-family:Calibri" runat="server" Text="Name :"></asp:Label></strong>
                        </div>
                    <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1">
                <asp:TextBox ID="Txt5" CssClass="form-control"  placeholder="name" runat="server"></asp:TextBox>
                </div>
                    </div>
                </div>
            <div class="col-sm-6 col-md-6 col-lg-6">

              <div class="row">
                <div class="col-md-4 col-lg-4 col-xs-12">
                <strong><asp:Label ID="Label27"  style="font-family:Calibri" runat="server" Text="Father's Name :"></asp:Label></strong>
                </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1">
                    <asp:TextBox ID="Txt99" CssClass="form-control input-sm"  placeholder="father's name" runat="server"></asp:TextBox>
            </div>
                    </div>

            </div>
            </div>
        <br />
              <div class="form-inline row">
               <div class="col-sm-6 col-md-6 col-lg-6">
               <div class="row">
                <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label4"  style="font-family:Calibri" runat="server" Text="Date Of Birth :"></asp:Label></strong>
                    </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1">
                <asp:TextBox ID="Txt7"  type="date" CssClass="form-control input-sm"  runat="server"></asp:TextBox>
                    </div>
                    </div>
                
                </div>
                  <div class="col-sm-6 col-md-6 col-lg-6">

                   <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
                    <strong><asp:Label ID="Label5"  style="font-family:Calibri" runat="server" Text="Email Id :"></asp:Label></strong>
                    </div>
                   <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2 pow1">
                   <asp:TextBox ID="Txt8" CssClass="form-control input-sm" type="email"  placeholder="email id" runat="server"></asp:TextBox>
                  </div>
                    </div>


                  </div>



               </div>
                 
                 <br />


        <div class="form-inline row">
            <div class="col-sm-6 col-md-6 col-lg-6">
               <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3">
                <strong><asp:Label ID="Label6"  runat="server" Text="Upload Photo :"></asp:Label></strong>
                    </div>
                <div class="col-lg-5 col-md-5 col-sm-3">
                <asp:FileUpload ID="FileUpload1"  runat="server" CssClass=" btn btn-sm btn-primary" Width="100%" ToolTip="Click Here To Choose The Image To Be Uploaded" />
                    </div>
                <div class="col-lg-1 col-md-1 col-sm-3">
                      <asp:Button ID="btnUpload" CssClass="btn btn-md btn-primary" style="padding-left:10px" runat="server" Text="Upload" onclick="btnUpload_Click" />
                    </div>   
                    </div>
                    <br />
                <div id="faltu">
                      <asp:Image ID="Image1" runat="server" Height = "100px" Width = "100px" />  
                 </div>
                </div>
                 <div class="col-sm-6 col-md-6 col-lg-6">
                  <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">

                      <strong><asp:Label ID="Label7" runat="server" Text="Gender :"></asp:Label></strong>

                    </div>
                     <div class="col-md-5 col-lg-5 col-xs-11 col-xs-offset-1">
                         <div class="row-fluid">
                          <asp:RadioButtonList ID="Rdbtn1" runat="server" RepeatDirection="Horizontal" CellPadding="1" CellSpacing="1">
                     
                              <asp:ListItem>Male</asp:ListItem>
                         
                              
                              <asp:ListItem>Female</asp:ListItem>
                                 
                              </asp:RadioButtonList></div> </div></div>

                      <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
                <strong><asp:Label ID="Label8" runat="server" Text="Blood Group :"></asp:Label></strong>

                    </div>
                    <div class="col-md-2 col-lg-2 col-xs-12">
                    <asp:DropDownList CssClass="form-control" ID="Ddl1" runat="server">
                    <asp:ListItem>-Select-</asp:ListItem>
                    <asp:ListItem>O</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>AB</asp:ListItem>
                </asp:DropDownList>
                        </div>
                    </div>

                </div>
             
        </div> 
             <br />
       
        
       
        <div class="pi row-fluid">
          <h3 id="bi2" class="lites" style="font-family:Calibri">Permanent Address</h3>
        </div>
        
        <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label9"  runat="server" Text="Building No :"></asp:Label></strong>
                      </div>
                  <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox placeholder="building no"  CssClass="form-control input-sm" ID="Txt16" runat="server"></asp:TextBox>
                 </div>
                       </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
              <div class="col-md-4 col-lg-4 col-xs-12" >
                <strong><asp:Label ID="Label10"  runat="server" Text="Gully/Street No :"></asp:Label></strong>
              </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
                  <asp:TextBox type="number"  CssClass="form-control input-sm" placeholder="gully/street no" ID="Txt17" runat="server"></asp:TextBox>
          </div>
                    </div>
                </div> 
        </div><br />
         <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12"  >
              <strong><asp:Label ID="Label11"  runat="server" Text="Moholla/Village :"></asp:Label></strong>
                      </div>
                  <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="text"  CssClass="form-control input-sm" placeholder="mohalla/village" ID="Txt18" runat="server"></asp:TextBox>
                  </div>
                  </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label12"  runat="server" Text="Police Station :"></asp:Label></strong>
                        </div>
                    <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="text"  CssClass="form-control input-sm" placeholder="police station" ID="Txt19" runat="server"></asp:TextBox>
                        </div>
                </div>
                </div> 
        </div><br />
         <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label13" runat="server" Text="State :"></asp:Label></strong>
                      </div>
                  <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
                      <asp:DropDownList ID="Ddl111" CssClass="form-control" runat="server">
                         <asp:ListItem>-Select-</asp:ListItem>
                         <asp:ListItem>Bihar</asp:ListItem>
                         <asp:ListItem>West-Bengal</asp:ListItem>
                         <asp:ListItem>Andra Pradesh</asp:ListItem>
                         <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                         <asp:ListItem>Asssam</asp:ListItem>
                           <asp:ListItem>Chandigarh</asp:ListItem>
                         <asp:ListItem>ChattishGarh</asp:ListItem>
                         <asp:ListItem>Goa</asp:ListItem>
                         <asp:ListItem>Gujrat</asp:ListItem>
                         <asp:ListItem>Haryana</asp:ListItem>
                         <asp:ListItem>Himachal Pradesh</asp:ListItem>
                           <asp:ListItem>Jammu Kashmir</asp:ListItem>
                         <asp:ListItem>Jharkhand</asp:ListItem>
                         <asp:ListItem>Karnatka</asp:ListItem>
                         <asp:ListItem>Kerela</asp:ListItem>
                         <asp:ListItem>Lakshadweep</asp:ListItem>
                         <asp:ListItem>Madhya Pradesh</asp:ListItem>
                           <asp:ListItem>Maharastra</asp:ListItem>
                         <asp:ListItem>Manipur</asp:ListItem>
                         <asp:ListItem>Meghalaya</asp:ListItem>
                         <asp:ListItem>Mizoram</asp:ListItem>
                         <asp:ListItem>Nagaland</asp:ListItem>
                         <asp:ListItem>Odhisa</asp:ListItem>
                           <asp:ListItem>Puducherry</asp:ListItem>
                         <asp:ListItem>Punjab</asp:ListItem>
                         <asp:ListItem>Rajasthan</asp:ListItem>
                         <asp:ListItem>Sikkim</asp:ListItem>
                         <asp:ListItem>Tamil Nadu</asp:ListItem>
                         <asp:ListItem>Telangana</asp:ListItem>
                          <asp:ListItem>Tripura</asp:ListItem>
                          <asp:ListItem>Uttar Pradesh</asp:ListItem>
                         <asp:ListItem>Uttarakhand</asp:ListItem>
                          <asp:ListItem>Delhi</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                  </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label14"  runat="server" Text="District :"></asp:Label></strong>
                        </div>
                    <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="text"  CssClass="form-control input-sm" placeholder="distict" ID="Txt21" runat="server"></asp:TextBox>
                    </div>
                    </div>
          </div> 
        </div><br />
         <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label15"  runat="server" Text="PIN :"></asp:Label></strong>
              </div>
                      <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
                      <asp:TextBox type="number"  CssClass="form-control input-sm" placeholder="pin" ID="Txt22" runat="server"></asp:TextBox>
                       </div>
                      </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label16"  runat="server" Text="Mobile No :"></asp:Label></strong>
                        </div>
                    <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="tel"  placeholder="mobile no" CssClass="form-control input-sm" ID="Txt23" runat="server"></asp:TextBox>
                   </div>
                    </div>
                </div> 
        </div><br />
        <div class="form-inline">
            
             <div>    
           <span> <asp:CheckBox ID="CheckBox1" AutoPostBack="true" runat="server" /><span style="font-family:Calibri">&nbsp<strong>Is Correspondence address Same As Permanent Address.</strong></span></span>
               </div>
            </div>
                 <br />
         <div class="pi row-fluid lites">
          <h3 id="bi3" style="margin-left:10px;font-family:Calibri">Correspondence Address</h3>
        </div>
                  <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label17"  runat="server" Text="Building No :"></asp:Label></strong>
                      </div>
                  <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="number" placeholder="building no"  CssClass="form-control input-sm" ID="Txt111" runat="server"></asp:TextBox>
                 </div>
                       </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
              <div class="col-md-4 col-lg-4 col-xs-12" >
                <strong><asp:Label ID="Label18"  runat="server" Text="Gully/Street No :"></asp:Label></strong>
              </div>
                <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
                  <asp:TextBox type="number"  CssClass="form-control input-sm" placeholder="gully/street no" ID="Txt112" runat="server"></asp:TextBox>
          </div>
                    </div>
                </div> 
        </div><br />
         <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12"  >
              <strong><asp:Label ID="Label19"  runat="server" Text="Moholla/Village :"></asp:Label></strong>
                      </div>
                  <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="text"  CssClass="form-control input-sm" placeholder="mohalla/village" ID="Txt113" runat="server"></asp:TextBox>
                  </div>
                  </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label20"  runat="server" Text="Police Station :"></asp:Label></strong>
                        </div>
                    <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="text"  CssClass="form-control input-sm" placeholder="police station" ID="Txt114" runat="server"></asp:TextBox>
                        </div>
                </div>
                </div> 
        </div><br />
         <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label21" runat="server" Text="State :"></asp:Label></strong>
                      </div>
                  <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
                 <asp:DropDownList ID="Ddl112" CssClass="form-control" runat="server">
                         <asp:ListItem>-Select-</asp:ListItem>
                         <asp:ListItem>Bihar</asp:ListItem>
                         <asp:ListItem>West-Bengal</asp:ListItem>
                         <asp:ListItem>Andra Pradesh</asp:ListItem>
                         <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                         <asp:ListItem>Asssam</asp:ListItem>
                           <asp:ListItem>Chandigarh</asp:ListItem>
                         <asp:ListItem>ChattishGarh</asp:ListItem>
                         <asp:ListItem>Goa</asp:ListItem>
                         <asp:ListItem>Gujrat</asp:ListItem>
                         <asp:ListItem>Haryana</asp:ListItem>
                         <asp:ListItem>Himachal Pradesh</asp:ListItem>
                           <asp:ListItem>Jammu Kashmir</asp:ListItem>
                         <asp:ListItem>Jharkhand</asp:ListItem>
                         <asp:ListItem>Karnatka</asp:ListItem>
                         <asp:ListItem>Kerela</asp:ListItem>
                         <asp:ListItem>Lakshadweep</asp:ListItem>
                         <asp:ListItem>Madhya Pradesh</asp:ListItem>
                           <asp:ListItem>Maharastra</asp:ListItem>
                         <asp:ListItem>Manipur</asp:ListItem>
                         <asp:ListItem>Meghalaya</asp:ListItem>
                         <asp:ListItem>Mizoram</asp:ListItem>
                         <asp:ListItem>Nagaland</asp:ListItem>
                         <asp:ListItem>Odhisa</asp:ListItem>
                           <asp:ListItem>Puducherry</asp:ListItem>
                         <asp:ListItem>Punjab</asp:ListItem>
                         <asp:ListItem>Rajasthan</asp:ListItem>
                         <asp:ListItem>Sikkim</asp:ListItem>
                         <asp:ListItem>Tamil Nadu</asp:ListItem>
                         <asp:ListItem>Telangana</asp:ListItem>
                          <asp:ListItem>Tripura</asp:ListItem>
                          <asp:ListItem>Uttar Pradesh</asp:ListItem>
                         <asp:ListItem>Uttarakhand</asp:ListItem>
                          <asp:ListItem>Delhi</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                  </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label22"  runat="server" Text="District :"></asp:Label></strong>
                        </div>
                    <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="text"  CssClass="form-control input-sm" placeholder="distict" ID="Txt116" runat="server"></asp:TextBox>
                    </div>
                    </div>
          </div> 
        </div><br />
         <div class="form-inline row">
          <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
              <div class="row">
                  <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label23"  runat="server" Text="PIN :"></asp:Label></strong>
              </div>
                      <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
                      <asp:TextBox type="number"  CssClass="form-control input-sm" placeholder="pin" ID="Txt117" runat="server"></asp:TextBox>
                       </div>
                      </div>
          </div>  
            <div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
                <div class="row">
                    <div class="col-md-4 col-lg-4 col-xs-12">
              <strong><asp:Label ID="Label24"  runat="server" Text="Mobile No :"></asp:Label></strong>
                        </div>
                    <div class="col-md-2 col-lg-2 col-xs-12 col-xs-pull-2">
              <asp:TextBox type="tel"  placeholder="mobile no" CssClass="form-control input-sm" ID="Txt118" runat="server"></asp:TextBox>
                   </div>
                    </div>
                </div> 
        </div>
       <br />
        <div class="form-inline">
            
            <strong><asp:Label ID="Label25" runat="server"  Text="Remarks :"></asp:Label></strong>
                
                      
                <textarea style="margin-left:70px" placeholder="Comments.... Please" cols="80" class="form-control" id="TextArea1" rows="3"></textarea>
             
        </div><br />
                 <div style="text-align:center">
        <asp:Button ID="Button1" class="btn btn-sm btn-primary" style="padding-left:30px;padding-right:30px;" runat="server" OnClick="Addnewrow" Text="Save" />
        </div>
                 </div>
        <br />
         
       
          <br />
    </div><%--boundry div--%>
       
    </form>
  <script src="JavaScript.js"></script>
    
</body>
</html>
