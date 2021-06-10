<%@ Page Title="" Language="C#" MasterPageFile="~/homeadmin.master" %>
<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="X-Large" Text="Accounts List !!"></asp:Label>
<br />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource3" ForeColor="#000066" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
        <asp:BoundField DataField="FNameA" HeaderText="FNameA" SortExpression="FNameA" />
        <asp:BoundField DataField="MNameA" HeaderText="MNameA" SortExpression="MNameA" />
        <asp:BoundField DataField="MMNameA" HeaderText="MMNameA" SortExpression="MMNameA" />
        <asp:BoundField DataField="LNameA" HeaderText="LNameA" SortExpression="LNameA" />
        <asp:BoundField DataField="BirthD" HeaderText="BirthD" SortExpression="BirthD" />
        <asp:BoundField DataField="FNameE" HeaderText="FNameE" SortExpression="FNameE" />
        <asp:BoundField DataField="MNameE" HeaderText="MNameE" SortExpression="MNameE" />
        <asp:BoundField DataField="MMNameE" HeaderText="MMNameE" SortExpression="MMNameE" />
        <asp:BoundField DataField="LNameE" HeaderText="LNameE" SortExpression="LNameE" />
        <asp:BoundField DataField="NaID" HeaderText="NaID" SortExpression="NaID" />
        <asp:BoundField DataField="Certificate" HeaderText="Certificate" SortExpression="Certificate" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
        <asp:BoundField DataField="Mobile1" HeaderText="Mobile1" SortExpression="Mobile1" />
        <asp:BoundField DataField="Mobile2" HeaderText="Mobile2" SortExpression="Mobile2" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="Faculty" HeaderText="Faculty" SortExpression="Faculty" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
<br />
</asp:Content>