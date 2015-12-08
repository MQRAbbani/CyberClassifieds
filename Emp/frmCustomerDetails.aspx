<%@ Page Language="C#" MasterPageFile="~/Emp/AgentsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmCustomerDetails.aspx.cs" Inherits="Emp_frmCustomerDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <center>
        <table cellspacing="0" cellpadding="0" border="0" style="width: 442px">
            <tr>
                <td style="height: 4px">
                    <img  src="../Images/middleleft.gif">
                </td>
                <td  style="background-image: url(../Images/middlebg.gif); height: 4px;">
                    &nbsp;<span style="font-size: 14pt; color: #0099ff"><strong>Add The Customer Profile
                        Here </strong></span>
                </td>
                <td style="height: 4px">
                    <img src="../Images/middleright.gif">
                </td>
            </tr>
            <tr>
                <td alt="msg" style="background-color: #F5F9FC; width: 15px;">
                </td>
                <td style="width: 405px; background-color: #F5F9FC">
                    <br />
                    <table style="background-color: #F5F9FC; width: 370px">
                        <tr>
                            <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Customer Name</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 26px;
                                width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; height: 26px; text-align: left;">
                                <asp:TextBox ID="txtCustName" runat="server" Style="position: relative; top: 0px;
                                    left: 0px; width: 175px;" ValidationGroup="g"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 26px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtCustName" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-transform: capitalize; width: 836px; color: #000000; font-family: Verdana;
                                height: 9px; text-align: left;">
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 9px;">
                                <strong></strong>
                            </td>
                            <td style="width: 159px; height: 9px; color: #000000;">
                            </td>
                            <td style="width: 338px; height: 9px; color: #000000;">
                            </td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Contact no</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 26px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; height: 26px; text-align: left;">
                                <asp:TextBox ID="txtContactNo" runat="server" Style="position: relative; top: 0px;
                                    left: 0px; width: 175px;" ValidationGroup="g"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 26px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtContactNo" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="text-transform: capitalize; width: 836px; color: #000000; font-family: Verdana;
                                height: 10px; text-align: left;">
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 10px;">
                            </td>
                            <td style="width: 159px; height: 10px;">
                            </td>
                            <td style="width: 338px; height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" style="width: 836px; text-transform: capitalize; color: #000000;
                                font-family: Verdana; height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Address</span></strong>
                            </td>
                            <td valign="top" style="text-transform: capitalize; color: #3300ff; font-family: Verdana;
                                width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px">
                                <asp:TextBox ID="txtAddress" runat="server" Style="position: relative; top: 0px;
                                    left: 0px; height: 103px;" TextMode="MultiLine" ValidationGroup="g"></asp:TextBox>
                            </td>
                            <td style="width: 338px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtAddress" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                &nbsp;</td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                            </td>
                            <td style="width: 159px; height: 13px;">
                            </td>
                            <td style="width: 338px; height: 13px;">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 8pt; color: #ff0000">( * mandetory)</span></strong></td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                                &nbsp;</td>
                            <td style="width: 159px; text-align: right;">
                                <asp:Button ID="btnRegister" runat="server" Style="position: relative; top: 0px;
                                    left: 0px; width: 85px;" Text="Register" ValidationGroup="g" 
                                    onclick="btnRegister_Click" />
                            </td>
                            <td style="width: 338px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td style="background-color: #F5F9FC">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #F5F9FC">
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#FF6600" ></asp:Label><br />
        <asp:Button ID="btnContinue" runat="server" Text="Continue" Visible="false" 
            onclick="btnContinue_Click1" />
      
    </center>
</asp:Content>
