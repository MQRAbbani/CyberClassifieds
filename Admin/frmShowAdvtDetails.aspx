<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmShowAdvtDetails.aspx.cs" Inherits="Admin_frmShowAdvtDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<br />
    <b><span style="font-size: x-large; color: #0099FF">All Advertisement Details
    </span></b>
<br />
<asp:GridView ID="grdShowDetails" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AdvtCode" 
        DataSourceID="SqlDataSource1" Width="820px" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
        EmptyDataText="Data Is Not Available" >
    
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EFF3FB" />
    
    <Columns>
   
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="AdvtCode" HeaderText="AdvtCode" 
            InsertVisible="False" ReadOnly="True" SortExpression="AdvtCode" />
        <asp:BoundField DataField="PageNo" HeaderText="PageNo" 
            SortExpression="PageNo" />
        <asp:BoundField DataField="PageLocation" HeaderText="PageLocation" 
            SortExpression="PageLocation" />
        <asp:BoundField DataField="Cost_Per_SqCm_for_BW" 
            HeaderText="Cost_Per_SqCm_for_BW" SortExpression="Cost_Per_SqCm_for_BW" />
        <asp:BoundField DataField="Cost_Per_SqCm_for_Color" 
            HeaderText="Cost_Per_SqCm_for_Color" SortExpression="Cost_Per_SqCm_for_Color" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
    </Columns>
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <AlternatingRowStyle BackColor="White" />
    </asp:GridView>

<br />

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NewsPaperConnectionString2 %>" 
        DeleteCommand="DELETE FROM [tblAdvtDetails] WHERE [AdvtCode] = @AdvtCode" 
        InsertCommand="INSERT INTO [tblAdvtDetails] ([PageNo], [PageLocation], [Cost_Per_SqCm_for_BW], [Cost_Per_SqCm_for_Color], [Description]) VALUES (@PageNo, @PageLocation, @Cost_Per_SqCm_for_BW, @Cost_Per_SqCm_for_Color, @Description)" 
        SelectCommand="SELECT * FROM [tblAdvtDetails]" 
        UpdateCommand="UPDATE [tblAdvtDetails] SET [PageNo] = @PageNo, [PageLocation] = @PageLocation, [Cost_Per_SqCm_for_BW] = @Cost_Per_SqCm_for_BW, [Cost_Per_SqCm_for_Color] = @Cost_Per_SqCm_for_Color, [Description] = @Description WHERE [AdvtCode] = @AdvtCode">
        <DeleteParameters>
            <asp:Parameter Name="AdvtCode" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="PageNo" Type="Int32" />
            <asp:Parameter Name="PageLocation" Type="String" />
            <asp:Parameter Name="Cost_Per_SqCm_for_BW" Type="Decimal" />
            <asp:Parameter Name="Cost_Per_SqCm_for_Color" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="AdvtCode" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="PageNo" Type="Int32" />
            <asp:Parameter Name="PageLocation" Type="String" />
            <asp:Parameter Name="Cost_Per_SqCm_for_BW" Type="Decimal" />
            <asp:Parameter Name="Cost_Per_SqCm_for_Color" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />

</center>
</asp:Content>

