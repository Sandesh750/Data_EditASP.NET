<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
            Text="Khedkar's Vidyalay, Shahada "></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="rollno" DataSourceID="SqlDataSource1" 
            DefaultMode="Insert" GridLines="Horizontal" Height="50px" 
            oniteminserted="DetailsView1_ItemInserted" Width="301px">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <Fields>
                <asp:BoundField DataField="rollno" HeaderText="Roll No." ReadOnly="True" 
                    SortExpression="rollno" />
                <asp:BoundField DataField="sname" HeaderText="Student Name" 
                    SortExpression="sname" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:CommandField NewText="Insert" ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:DetailsView>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="Larger"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="rollno" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" onrowdeleted="GridView1_RowDeleted" 
            onrowupdated="GridView1_RowUpdated">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="rollno" HeaderText="Roll No." ReadOnly="True" 
                    SortExpression="rollno" />
                <asp:BoundField DataField="sname" HeaderText="Student Name" 
                    SortExpression="sname" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Table] WHERE [rollno] = @rollno" 
            InsertCommand="INSERT INTO [Table] ([rollno], [sname], [address]) VALUES (@rollno, @sname, @address)" 
            SelectCommand="SELECT * FROM [Table]" 
            UpdateCommand="UPDATE [Table] SET [sname] = @sname, [address] = @address WHERE [rollno] = @rollno">
            <DeleteParameters>
                <asp:Parameter Name="rollno" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="rollno" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="rollno" Type="Int32" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="address" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
