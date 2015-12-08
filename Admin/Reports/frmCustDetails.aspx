<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmCustDetails.aspx.cs" Inherits="Admin_Reports_frmCustDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<br />
    <b><span style="font-size: x-large; color: #3399FF">All Customer Details Report
    </span></b>
<br />
<br />
<asp:Button ID="btnPdf" runat="server" Text="Export To PDF" 
        onclick="btnPdf_Click" />&nbsp;&nbsp;<asp:Button ID="btnXl" runat="server" 
        Text="Export To XL Format" onclick="btnXl_Click" />
<br />
<br />
<asp:GridView ID="grdCustDetails" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" >
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EFF3FB" />
    <Columns>
        <asp:BoundField DataField="CustName" HeaderText="CustName" 
            SortExpression="CustName" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
            SortExpression="ContactNo" />
        <asp:BoundField DataField="DOR" HeaderText="DOR" SortExpression="DOR" />
    </Columns>
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <AlternatingRowStyle BackColor="White" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsPaperConnectionString2 %>" 
        SelectCommand="SELECT [CustName], [Address], [ContactNo], [DOR] FROM [tblCustomerDetails]">
    </asp:SqlDataSource>

</center>
</asp:Content>

