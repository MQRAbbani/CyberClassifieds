<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmChangePassword.aspx.cs" Inherits="Admin_frmChangePassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<br />
    <table cellspacing="0" cellpadding="0" border="0" style="width: 442px">
        <tr>
            <td style="height: 4px">
                <img alt="Login Here" src="../Images/middleleft.gif">
            </td>
            <td alt="Login Here" style="background-image: url(../Images/middlebg.gif); height: 4px;">
                &nbsp;<span style="font-size: 14pt; color: #0099ff"><strong>Change Your Own Password Here</strong>
                </span>
            </td>
            <td style="height: 4px">
                <img alt="Login Here" src="../Images/middleright.gif">
            </td>
        </tr>
        <tr>
            <td alt="Login Here" style="background-color: #F5F9FC; width: 15px;">
            </td>
            <td style="width: 405px; background-color: #F5F9FC">
                <br />
                <table style="background-color: #F5F9FC; width: 370px">
                    <tr>
                        <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                            height: 26px; text-align: left;">
                            <strong><span style="font-size: 10pt; color: #0099ff;">&nbsp;Old Password</span></strong>
                        </td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 26px;
                            width: 7px;">
                            <strong>:</strong>
                        </td>
                        <td style="width: 159px; height: 26px; text-align: left;">
                            <asp:TextBox ID="txtoldPwd" runat="server" Style="position: relative; top: 0px;
                                left: 0px; width: 175px;" TextMode="Password" ValidationGroup="g"></asp:TextBox>
                        </td>
                        <td style="width: 338px; height: 26px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                                Style="position: relative" ControlToValidate="txtoldPwd" 
                                ValidationGroup="g">*</asp:RequiredFieldValidator>
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
                            <strong><span style="font-size: 10pt; color: #0099ff;">New Password</span></strong>
                        </td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                            height: 26px;">
                            <strong>:</strong>
                        </td>
                        <td style="width: 159px; height: 26px; text-align: left;">
                            <asp:TextBox ID="txtNewPwd" runat="server" Style="position: relative; top: 0px;
                                left: 0px; width: 175px;" ValidationGroup="g" TextMode="Password"></asp:TextBox>
                        </td>
                        <td style="width: 338px; height: 26px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                                Style="position: relative" ControlToValidate="txtNewPwd"  ValidationGroup="g">*</asp:RequiredFieldValidator>
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
                    <tr style="color: #000000">
                        <td style="text-transform: capitalize; width: 836px; color: #66CCFF; font-family: Verdana;
                            height: 10px; text-align: left; font-size: small;">
                            <b>Confir Password</b></td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                            height: 10px;">
                            <b>:</b></td>
                        <td style="width: 159px; height: 10px;">
                            <asp:TextBox ID="txtConPwd" runat="server" Style="position: relative; top: 0px;
                                left: 0px; width: 175px;" ValidationGroup="g" TextMode="Password"></asp:TextBox>
                        </td>
                        <td style="width: 338px; height: 10px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                                Style="position: relative" ControlToValidate="txtConPwd"  
                                ValidationGroup="g">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-transform: capitalize; color: #000000; font-family: Verdana; height: 28px;
                            text-align: right;" colspan="3">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtNewPwd" ControlToValidate="txtConPwd" 
                                ErrorMessage="Password Mismatch Try Again" Font-Bold="True" Font-Size="X-Small"></asp:CompareValidator>
                        </td>
                        <td style="width: 338px; height: 28px;">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td 
                            style="width: 836px; text-transform: capitalize; font-family: Verdana;
                            height: 10px; text-align: left; font-weight: bold; font-size: x-small; color: #FF0000;" 
                            class="style6">
                            ( * Is Mandatory)</td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                            height: 10px;">
                        </td>
                        <td style="height: 10px; text-align: right;" colspan="2">
                            <asp:Button ID="btnChangepwd" runat="server" Font-Bold="True" 
                                onclick="btnChangepwd_Click" Text="Change Password" ValidationGroup="g" 
                                Width="124px" />
                            <asp:Button ID="btnCancel" runat="server" Font-Bold="True" Text="Cancel" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                            height: 26px; text-align: left;">
                            &nbsp;
                        </td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                            &nbsp;
                        </td>
                        <td style="width: 159px; text-align: left;">
                            &nbsp;
                        </td>
                        <td style="width: 338px">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td style="background-color: #F5F9FC">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="background-color: #F5F9FC">
                &nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="Small" 
            ForeColor="#FF6699" ></asp:Label>
    </center>
</asp:Content>

