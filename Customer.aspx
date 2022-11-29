<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertCustomer.aspx.cs" Inherits="InsertCustomer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void button1_Click(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="background-color: #AFE4FC">
    <form id="form1" runat="server">
     <h1 align="center" style="color:Black">&nbsp;Customer Management System </h1>
    <div>
        <asp:Table ID="Table1" runat="server" align="Center">
        <asp:TableRow>
       <asp:TableCell>
        CustomerID: &nbsp  <asp:TextBox  ID="TextBox1" runat="server"></asp:TextBox>
      </asp:TableCell>
       </asp:TableRow>
      <asp:TableRow>
      <asp:TableCell>
      CustomerName: &nbsp <asp:TextBox ID="TexBox2" runat="server"></asp:TextBox>
      </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow>
      <asp:TableCell>
      City: &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp<asp:TextBox ID="Textbox3" runat="server"></asp:TextBox>
      </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow>
      <asp:TableCell>
      Age: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
      </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow>
      <asp:TableCell>
      Phone: &nbsp&nbsp&nbsp&nbsp&nbsp <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
      </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow>
      <asp:TableCell>
      Pincode: &nbsp&nbsp&nbsp<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
      </asp:TableCell>
      </asp:TableRow>
        </asp:Table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="button1" Text="InsertCustomer" runat="server" 
            onclick="button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="button2" Text="ModifyCustomer" runat="server" 
            onclick="buttonmodify_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="button3" Text="RemoveCustomer" runat="server" OnClick="Removebutton_Click" />
   <asp:GridView ID="GridViewCustomer" runat="server" DataKeyNames="ID"   
            OnSelectedIndexChanged="GridViewCutomer_SelectedIndexChanged"  
OnRowDeleting="GridViewCustomer_RowDeleting" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4">  
            <Columns>  
                <asp:CommandField HeaderText="Update" ShowSelectButton="True" />  
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />  
            </Columns>  
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>  
    </div>
    </form>
</body>
</html>
