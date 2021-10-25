<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Success</title>
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


   <link href="StyleSheet.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
    <div id="li22" style="background-color:lightblue">
         <div class="pi row-fluid">
            <h3 id="bi" class="kites" style="font-family:Calibri">Success</h3>
        </div>
        <br />
        <br />
        <br />
        <div style="text-align:center">
            <asp:Image ID="Image1" src="images/chk.jpg"  runat="server" Height = "120px" Width = "120px"/>
        </div>
        <br />
            <div style="text-align:center;">
            <p id="a" style="font-family:'Comic Sans MS';font-size:large">You Have Succcessfully Submitted The Form</p>
            </div>
        <p id="b">Please Fill All The Mandatory Fields!</p>



    
    </div>
    </form>
</body>
</html>
