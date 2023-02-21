<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales Master.aspx.cs" Inherits="WebApplication3.Sales_Master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Content\bootstrap.css" />
    <style>
        div {
            width:500px;
            margin:auto;
        }

        h1{
            background-color:darkgreen;
            color:white;
            text-align:center;
        }
        #TextBox1,#TextBox2,#TextBox3,#TextBox4,#datepicker
                 {
                     width:280px;
                 }
        span{
            color:red;
        }
    </style>

</head>
<body>
    <form id="form2" runat="server">

        <h1>Sale Master</h1>
        
         <br /><br />
    <div>
    
         <label>Bill No</label><span>*</span><asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>

        <label>Customer Name</label><span>*</span><asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>

        <label>Date</label><span>*</span><input type="date" id="datepicker" class="form-control" runat="server" />
        <script>
            var d = new Date();
            v = document.getElementById("datepicker").valueAsDate = d;
        </script>

        <label>Tax</label><span>*</span><asp:TextBox ID="TextBox3" class="form-control"  runat="server"></asp:TextBox>
        
        <label>Total</label><span>*</span><asp:TextBox ID="TextBox4" class="form-control"  runat="server"></asp:TextBox>


        <br /><br />

        <asp:Button ID="Button1" runat="server"  class="btn btn-primary" Text="Save" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" class="btn btn-warning"  Text="Report" OnClick="Button2_Click"  />

    </div>
    
    
    </form>
 </body>
</html>
