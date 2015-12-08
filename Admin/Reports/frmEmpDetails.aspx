<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEmpDetails.aspx.cs" Inherits="Admin_Reports_frmEmpDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<br />
    <b><span style="font-size: x-large; color: #0099FF">All Employee Records Report
    </span></b>
<br />
<br />

<br />
<asp:Button ID="btnPdf" runat="server" Text="Export To PDF" 
        onclick="btnPdf_Click1" />&nbsp;&nbsp;<asp:Button ID="btnXl" runat="server" 
        Text="Export To XL Format" onclick="btnXl_Click1" />
<br />
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="EmpName" HeaderText="EmpName" 
                SortExpression="EmpName" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                SortExpression="ContactNo" />
            <asp:BoundField DataField="MailId" HeaderText="MailId" 
                SortExpression="MailId" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsPaperConnectionString2 %>" 
        SelectCommand="SELECT [EmpName], [ContactNo], [MailId], [Country], [State], [City], [Address] FROM [tblEmployeeDetails]">
    </asp:SqlDataSource>

</center>
</asp:Content>

