<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesEntry form.aspx.cs" Inherits="WebApplication3.SalesEntry_form" %>

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
            background-color:blue;
            color:white;
            text-align:center;
        }
        #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#DropDownList1
                 {
                     width:280px;
                 }
        span{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="container">
    
      <h1>Sales Details</h1>

        <br /><br />
    <div>
        
       <label>Bill No</label><span>*</span><asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>

        <label>Item No</label><span>*</span><asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
        

        <label>Item Name</label><span>*</span><asp:TextBox ID="TextBox3"  class="form-control" runat="server"></asp:TextBox>

        <label>Quantity</label><span>*</span><asp:TextBox ID="TextBox4"  class="form-control" runat="server"></asp:TextBox>

        <label>Tax</label><asp:DropDownList ID="DropDownList1" class="form-control"  runat="server">
            <asp:ListItem>0.14</asp:ListItem>
            <asp:ListItem>0.18</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2.5</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>

        <label>Price</label><asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
 <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Billno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="227px" Width="1745px" style="margin-left: 0px; margin-top: 8px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Billno" HeaderText="Billno" ReadOnly="True" SortExpression="Billno" />
                <asp:BoundField DataField="Itemno" HeaderText="Itemno" SortExpression="Itemno" />
                <asp:BoundField DataField="Itemname" HeaderText="Itemname" SortExpression="Itemname" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manoConnectionString2 %>" SelectCommand="SELECT * FROM [Detail]"></asp:SqlDataSource>

        <asp:Button ID="Button1" runat="server"  class="btn btn-primary" Text="Save" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" class="btn btn-warning"  Text="Update" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" class="btn btn-danger"  Text="Delete" OnClick="Button3_Click1" />
        <asp:Button ID="Button5" runat="server" class="btn btn-success"  Text="show" OnClick="Button5_Click" />

        <asp:Button ID="Button6" runat="server"  class="btn btn-danger" Text="Clear" Onclick="Button7_Click"/>
        <asp:Button ID="Button7" runat="server"  class="btn btn-primary"  Text="Next >>" OnClick="Button7_Click1" /></div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        
    </form>
</body>
</html>
