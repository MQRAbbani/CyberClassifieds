<%@ Page Language="C#" MasterPageFile="~/Emp/AgentsMasterPage.master" AutoEventWireup="true" CodeFile="frmAdvtDetails.aspx.cs" Inherits="Emp_frmAdvtDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<span><b><span style="font-size: x-large; color: #0066FF">
    <br />
    All Advertisement Costs</span></b> 
        <br />
        </span>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="AdvtCode" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NewsPaperConnectionString2 %>" 
            SelectCommand="SELECT * FROM [tblAdvtDetails]"></asp:SqlDataSource>
<br />

</center>
    
</asp:Content>

