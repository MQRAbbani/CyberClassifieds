<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmCustomerDetails.aspx.cs" Inherits="Admin_frmCustomerDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<asp:GridView id="grdCust" runat="server" AllowPaging="True" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="CustID" 
        DataSourceID="SqlDataSource1" EmptyDataText="No Records Found" 
        Font-Bold="True" CellPadding="4" ForeColor="#333333" GridLines="None" >
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EFF3FB" />
    <EmptyDataRowStyle Font-Bold="True" Font-Size="Large" ForeColor="#FF3399" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="CustID" HeaderText="CustID" ReadOnly="True" 
            SortExpression="CustID" />
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
        DeleteCommand="DELETE FROM [tblCustomerDetails] WHERE [CustID] = @CustID" 
        InsertCommand="INSERT INTO [tblCustomerDetails] ([CustID], [CustName], [Address], [ContactNo], [DOR]) VALUES (@CustID, @CustName, @Address, @ContactNo, @DOR)" 
        SelectCommand="SELECT * FROM [tblCustomerDetails]" 
        
        UpdateCommand="UPDATE [tblCustomerDetails] SET [CustName] = @CustName, [Address] = @Address, [ContactNo] = @ContactNo, [DOR] = @DOR WHERE [CustID] = @CustID">
        <DeleteParameters>
            <asp:Parameter Name="CustID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="DOR" Type="DateTime" />
            <asp:Parameter Name="CustID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="CustID" Type="Int32" />
            <asp:Parameter Name="CustName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="DOR" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
</center>
</asp:Content>

