<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="frmAdvtBooking.aspx.cs" Inherits="Admin_Reports_frmAdvtRegistration"
    Title="Untitled Page" %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
    <br />
        <table style="background-color: #ffffff; height: 360px;">
            <tr>
                <td colspan="4" style="height: 21px">
                    <strong><span style="text-decoration: underline">
                    <span style="font-size: x-large; color: #3399FF">
                        Report Genaration Based On Registartion Date</span><span style="font-size: 14pt"> </span> </span></strong>
                </td>
            </tr>
            <tr>
                <td style="width: 110px">
                </td>
                <td align="left" style="width: 166px">
                </td>
                <td align="left" style="width: 176px">
                </td>
                <td align="left" style="width: 118px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td style="text-align: center;" colspan="2">
                    <strong>Daily Report :</strong>
                </td>
                <td align="left" style="width: 118px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 110px; height: 33px; text-align: left;">
                    Select Date:
                </td>
                <td align="left" style="width: 166px; height: 33px;">
                    <cc1:GMDatePicker ID="GMDatePicker4" runat="server" InitialValueMode="Null">
                    </cc1:GMDatePicker>
                </td>
                <td align="left" style="width: 176px; text-align: left; height: 33px;">
                    &nbsp;<asp:Button ID="btnDailyReShow" runat="server" OnClick="btnDailyReShow_Click"
                        Text="ShowReport" ValidationGroup="1" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="GMDatePicker4"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td align="left" style="width: 118px; height: 33px;">
                    &nbsp;
                </td>
            </tr>
            <tr style="color: #000000">
                <td style="height: 21px; text-align: center;" colspan="2">
                    <strong>Monthly Report :</strong>
                </td>
                <td align="left" style="width: 176px; height: 21px; text-align: right;">
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                </td>
                <td align="left" style="width: 118px; height: 21px;">
                    &nbsp;
                </td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 110px; height: 8px; text-align: left;">
                    From Date:
                </td>
                <td align="left" style="width: 166px; height: 8px;">
                    <cc1:GMDatePicker ID="GMDatePicker5" runat="server" InitialValueMode="Null">
                    </cc1:GMDatePicker>
                </td>
                <td align="left" style="width: 176px; height: 8px; text-align: right;">
                </td>
                <td style="width: 118px; height: 8px">
                    &nbsp;
                </td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 110px; height: 8px; text-align: left">
                    To Date:
                </td>
                <td align="left" style="width: 166px; height: 8px">
                    <cc1:GMDatePicker ID="GMDatePicker6" runat="server" InitialValueMode="Null">
                    </cc1:GMDatePicker>
                </td>
                <td align="left" style="width: 176px; height: 8px; text-align: left">
                    <asp:Button ID="btnMonReport" runat="server" Text="ShowReport" OnClick="btnMonReport_Click"
                        ValidationGroup="2" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="GMDatePicker5"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="GMDatePicker6"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 118px; height: 8px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td colspan="4" style="height: 16px; text-align: center">
                    <asp:Label ID="Label1" runat="server" BackColor="Silver" ForeColor="#404040" Text="Label"
                        Visible="False" Width="100%"></asp:Label>
                </td>
            </tr>
            <tr>
            <td height="20px" colspan="4" style="font-size: small"><b><asp:Label runat="server" 
                    ID="lblIns" 
                    Text="Click the below buttons to get in different format of reports" 
                    Visible="False" ></asp:Label></b></td>
            </tr>
            <tr>
            <td height="20px" colspan="4"></td>
            </tr>
            <tr>
            <td colspan="2">
                <asp:Button ID="btnPdf" runat="server" Text="Convert To PDF" 
                    CausesValidation="False" onclick="btnPdf_Click1" Visible="False" /></td>
            <td colspan="2">
                <asp:Button ID="btnXl" runat="server" Text="Convert To XL" 
                    CausesValidation="False" onclick="btnXl_Click1" Visible="False" /></td>
            </tr>
            <tr>
            <td height="20px" colspan="4"></td>
            </tr>
            <tr>
                <td colspan="4" style="height: 57px">
                    <br />
                    <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server" Width="227px"
                        Height="86px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField ItemStyle-Width="100px" DataField="PageNo" HeaderText="Page Location" />
                            <asp:BoundField ItemStyle-Width="100px" DataField="PageLocation" HeaderText="Page No" />
                            <asp:BoundField ItemStyle-Width="100px" DataField="NewDoi" HeaderText="Registration Date" />
                            <asp:BoundField ItemStyle-Width="100px" DataField="PageStatus" HeaderText="Add Color" />
                            <asp:BoundField ItemStyle-Width="100px" DataField="UnitCost" HeaderText="Square Centimeter Cost" />
                            <asp:BoundField ItemStyle-Width="100px" DataField="AdvtSize_SqCm" HeaderText="Required Cetimeters" />
                            <asp:BoundField ItemStyle-Width="100px" DataField="TotalCost" HeaderText="Total Cost" />
                        </Columns>
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
