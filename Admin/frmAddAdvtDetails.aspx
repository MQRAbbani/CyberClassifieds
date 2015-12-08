<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="frmAddAdvtDetails.aspx.cs" Inherits="Admin_frmAddAdvertisement" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <br />
        <br />
        <table cellspacing="0" cellpadding="0" border="0" style="width: 442px">
            <tr>
                <td style="height: 4px">
                    <img src="../Images/middleleft.gif">
                </td>
                <td style="background-image: url(../Images/middlebg.gif); height: 4px;">
                    &nbsp;<span style="font-size: 14pt; color: #0099ff"><strong>Add The Advertisement Details
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
                                <strong><span style="font-size: 10pt; color: #0099ff;">Page No</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 26px;
                                width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; height: 26px; text-align: left;">
                                <asp:TextBox ID="txtPageNo" runat="server" ValidationGroup="g" Width="175px"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 26px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Style="position: relative"
                                    ControlToValidate="txtPageNo" ValidationGroup="g">*</asp:RequiredFieldValidator>
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
                                <strong><span style="font-size: 10pt; color: #0099ff;">Page Location</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 26px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; height: 26px; text-align: left;">
                                <asp:TextBox ID="txtPageLoc" runat="server" ValidationGroup="g" Width="175px"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 26px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtPageLoc" ValidationGroup="g">*</asp:RequiredFieldValidator>
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
                                <strong><span style="font-size: 10pt; color: #0099ff;">Black & White Cost</span></strong>
                            </td>
                            <td valign="top" style="text-transform: capitalize; color: #3300ff; font-family: Verdana;
                                width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; text-align: left;">
                                <asp:TextBox ID="txtBWCost" runat="server" Style="position: relative; top: -2px;
                                    left: 0px; height: 19px; width: 175px;" ValidationGroup="g"></asp:TextBox>
                            </td>
                            <td style="width: 338px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtBWCost" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                &nbsp;
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                            </td>
                            <td style="width: 159px; height: 13px;">
                            </td>
                            <td style="width: 338px; height: 13px;">
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" style="width: 836px; text-transform: capitalize; color: #000000;
                                font-family: Verdana; height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Color Cost</span></strong>
                            </td>
                            <td valign="top" style="text-transform: capitalize; color: #3300ff; font-family: Verdana;
                                width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; text-align: left;">
                                <asp:TextBox ID="txtColor" runat="server" Style="position: relative; top: -1px; left: 0px;
                                    height: 21px; width: 175px;" ValidationGroup="g"></asp:TextBox>
                            </td>
                            <td style="width: 338px; text-align: left;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtColor" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-transform: capitalize; color: #00CCFF; font-family: Verdana; height: 13px;
                                text-align: left; font-size: small;" colspan="3">
                                <b>Cost per Square centimeters.</b></td>
                            <td style="width: 338px; height: 13px;">
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" style="text-transform: capitalize; color: #3300ff; font-family: Verdana;
                                width: 7px;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Description</span></strong></td>
                            <td>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txtDescription" runat="server" ValidationGroup="g" 
                                    TextMode="MultiLine" Height="89px"></asp:TextBox>
                            </td>
                            <td valign="top" align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtDescription" 
                                    ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                </td>
                            <td>
                                </td>
                            <td>
                                </td>
                            <td>
                                </td>
                            
                        </tr>
                        <tr>
                            <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 8pt; color: #ff0000">( * mandetory)</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                                &nbsp;
                            </td>
                            <td align="right">
                                <asp:Button ID="btnAdd" runat="server" Style="position: relative; top: 1px;
                                    left: 0px; width: 114px;" Text="Add Page Details" ValidationGroup="g" 
                                    OnClick="btnRegister_Click" Font-Bold="True" />
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
                <td alt="msg" style="background-color: #F5F9FC; width: 15px;">
                    &nbsp;</td>
                <td style="width: 405px; background-color: #F5F9FC">
                    &nbsp;</td>
                <td style="background-color: #F5F9FC">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #F5F9FC">
                    &nbsp;<asp:LinkButton ID="lnkShowAdvtdetails" runat="server" 
                        PostBackUrl="~/Admin/frmShowAdvtDetails.aspx">Show Advertisement Details</asp:LinkButton>
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#FF33CC" ></asp:Label>
    </center>
</asp:Content>
