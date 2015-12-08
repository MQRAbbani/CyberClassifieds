<%@ Page Language="C#" MasterPageFile="~/Emp/AgentsMasterPage.master" AutoEventWireup="true" CodeFile="frmAddBookingByEmp.aspx.cs" Inherits="Emp_frmAddBookingByEmp" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <b>Advertisement Booked By Employee</b>(Your Self)
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" SortExpression="EmpId" />
            <asp:BoundField DataField="CustId" HeaderText="CustId" 
                SortExpression="CustId" />
            <asp:BoundField DataField="AdvtCode" HeaderText="AdvtCode" 
                SortExpression="AdvtCode" />
            <asp:BoundField DataField="DOP" HeaderText="DOP" SortExpression="DOP" />
            <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" 
                SortExpression="TotalCost" />
            <asp:BoundField DataField="PageStatus" HeaderText="PageStatus" 
                SortExpression="PageStatus" />
            <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" 
                SortExpression="UnitCost" />
            <asp:BoundField DataField="DOI" HeaderText="DOI" SortExpression="DOI" />
            <asp:BoundField DataField="AdvtSize_SqCm" HeaderText="AdvtSize_SqCm" 
                SortExpression="AdvtSize_SqCm" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:NewsPaperConnectionString2 %>" 
    SelectCommand="SELECT [EmpId], [CustId], [AdvtCode], [DOP], [TotalCost], [PageStatus], [UnitCost], [DOI], [AdvtSize_SqCm] FROM [tblCustAdvtDetails] WHERE ([EmpId] = @EmpId)">
    <SelectParameters>
        <asp:SessionParameter Name="EmpId" SessionField="EmpId" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

