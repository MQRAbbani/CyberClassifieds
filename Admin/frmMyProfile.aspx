<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmMyProfile.aspx.cs" Inherits="Admin_frmMyProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="font-size: large">
       <b><span style="color: #0066FF">Here Is Your OWn Profile</span> </b>
   <br />
   <br />
       <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
           CellPadding="4" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" 
           ForeColor="#333333" GridLines="None" Height="50px" Width="249px">
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
           <RowStyle BackColor="#EFF3FB" />
           <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <Fields>
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
               <asp:BoundField DataField="EmpId" HeaderText="EmpId" InsertVisible="False" 
                   ReadOnly="True" SortExpression="EmpId" />
               <asp:CommandField ShowEditButton="True" />
           </Fields>
           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <EditRowStyle BackColor="#2461BF" />
           <AlternatingRowStyle BackColor="White" />
       </asp:DetailsView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConflictDetection="CompareAllValues" 
           ConnectionString="<%$ ConnectionStrings:NewsPaperConnectionString2 %>" 
           DeleteCommand="DELETE FROM [tblEmployeeDetails] WHERE [EmpId] = @original_EmpId AND [EmpName] = @original_EmpName AND [ContactNo] = @original_ContactNo AND [MailId] = @original_MailId AND [Country] = @original_Country AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address" 
           InsertCommand="INSERT INTO [tblEmployeeDetails] ([EmpName], [ContactNo], [MailId], [Country], [State], [City], [Address]) VALUES (@EmpName, @ContactNo, @MailId, @Country, @State, @City, @Address)" 
           OldValuesParameterFormatString="original_{0}" 
           SelectCommand="SELECT [EmpName], [ContactNo], [MailId], [Country], [State], [City], [Address], [EmpId] FROM [tblEmployeeDetails] WHERE ([EmpId] = @EmpId)" 
           UpdateCommand="UPDATE [tblEmployeeDetails] SET [EmpName] = @EmpName, [ContactNo] = @ContactNo, [MailId] = @MailId, [Country] = @Country, [State] = @State, [City] = @City, [Address] = @Address WHERE [EmpId] = @original_EmpId AND [EmpName] = @original_EmpName AND [ContactNo] = @original_ContactNo AND [MailId] = @original_MailId AND [Country] = @original_Country AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address">
           <SelectParameters>
               <asp:SessionParameter Name="EmpId" SessionField="EmpId" Type="Int32" />
           </SelectParameters>
           <DeleteParameters>
               <asp:Parameter Name="original_EmpId" Type="Int32" />
               <asp:Parameter Name="original_EmpName" Type="String" />
               <asp:Parameter Name="original_ContactNo" Type="String" />
               <asp:Parameter Name="original_MailId" Type="String" />
               <asp:Parameter Name="original_Country" Type="String" />
               <asp:Parameter Name="original_State" Type="String" />
               <asp:Parameter Name="original_City" Type="String" />
               <asp:Parameter Name="original_Address" Type="String" />
           </DeleteParameters>
           <UpdateParameters>
               <asp:Parameter Name="EmpName" Type="String" />
               <asp:Parameter Name="ContactNo" Type="String" />
               <asp:Parameter Name="MailId" Type="String" />
               <asp:Parameter Name="Country" Type="String" />
               <asp:Parameter Name="State" Type="String" />
               <asp:Parameter Name="City" Type="String" />
               <asp:Parameter Name="Address" Type="String" />
               <asp:Parameter Name="original_EmpId" Type="Int32" />
               <asp:Parameter Name="original_EmpName" Type="String" />
               <asp:Parameter Name="original_ContactNo" Type="String" />
               <asp:Parameter Name="original_MailId" Type="String" />
               <asp:Parameter Name="original_Country" Type="String" />
               <asp:Parameter Name="original_State" Type="String" />
               <asp:Parameter Name="original_City" Type="String" />
               <asp:Parameter Name="original_Address" Type="String" />
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

