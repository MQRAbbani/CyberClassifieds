<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="frmShowEmployee.aspx.cs" Inherits="Admin_frmShowEmployee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <center>
    
    <br />
    <br />
    <span style="font-weight: bold; font-size: x-large"><span style="color: #0099FF">All Employee Details</span><br />
        </span>
        &nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="EmpId" 
            DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" ReadOnly="True"
                    SortExpression="EmpId" />
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                <asp:BoundField DataField="MailId" HeaderText="MailId" SortExpression="MailId" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewsPaperConnectionString2 %>"
            DeleteCommand="DELETE FROM [tblEmployeeDetails] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [tblEmployeeDetails] ([EmpName], [ContactNo], [MailId], [Country], [State], [City], [Address]) VALUES (@EmpName, @ContactNo, @MailId, @Country, @State, @City, @Address)"
            SelectCommand="SELECT * FROM [tblEmployeeDetails]" UpdateCommand="UPDATE [tblEmployeeDetails] SET [EmpName] = @EmpName, [ContactNo] = @ContactNo, [MailId] = @MailId, [Country] = @Country, [State] = @State, [City] = @City, [Address] = @Address WHERE [EmpId] = @EmpId">
            <DeleteParameters>
                <asp:Parameter Name="EmpId" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="MailId" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="EmpId" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpName" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="MailId" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
