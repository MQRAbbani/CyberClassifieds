<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center style="height: 433px; background-color: #FFFFFF" >
    <table cellspacing="0" cellpadding="0" border="0" 
            style="width: 442px; background-color: #00CCFF;" bgcolor="#003300">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td alt="Login Here" style="background-image: url('Images/middlebg.gif'); " 
                class="style14">
                &nbsp;<span style="font-size: 14pt; color: #0099ff"><strong>Login Here </strong>
                </span>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td alt="Login Here" style="background-color: #F5F9FC; " class="style18">
            </td>
            <td style="background-color: #F5F9FC" class="style19">
                <br />
                <table style="background-color: #F5F9FC; width: 370px; height: 192px;">
                    <tr>
                        <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                            height: 26px; text-align: left;">
                            <strong><span style="font-size: 10pt; color: #0099ff;">&nbsp;User Name</span></strong>
                        </td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 26px;
                            width: 7px;">
                            <strong>:</strong>
                        </td>
                        <td style="width: 159px; height: 26px; text-align: left;">
                            <asp:TextBox ID="txUserName" runat="server" Style="position: relative; top: 0px;
                                left: 0px; width: 175px;" ValidationGroup="g"></asp:TextBox>
                        </td>
                        <td style="width: 338px; height: 26px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                                Style="position: relative" ControlToValidate="txUserName" 
                                ValidationGroup="g">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-transform: capitalize; width: 836px; color: #000000; font-family: Verdana;
                            height: 9px; text-align: left;">
                        </td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                            height: 9px;">
                            &nbsp;</td>
                        <td style="width: 159px; height: 9px; color: #000000;">
                        </td>
                        <td style="width: 338px; height: 9px; color: #000000;">
                        </td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="width: 836px; text-transform: capitalize; color: #000000; font-family: Verdana;
                            height: 26px; text-align: left;">
                            <strong><span style="font-size: 10pt; color: #0099ff;">&nbsp;Password</span></strong>
                        </td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                            height: 26px;">
                            <strong>:</strong>
                        </td>
                        <td style="width: 159px; height: 26px; text-align: left;">
                            <asp:TextBox ID="txtPwd" runat="server" Style="position: relative; top: 0px;
                                left: 0px; width: 175px;" ValidationGroup="g" TextMode="Password"></asp:TextBox>
                        </td>
                        <td style="width: 338px; height: 26px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                                Style="position: relative" ControlToValidate="txtPwd" ValidationGroup="g">*</asp:RequiredFieldValidator>
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
                        <td style="text-transform: capitalize; color: #000000; font-family: Verdana; height: 28px;
                            text-align: left;" colspan="3">
                            <asp:CheckBox ID="chkRemember" runat="server" Font-Bold="True" Font-Size="X-Small"
                                ForeColor="#0099ff" Text="Remember Me" />
                        </td>
                        <td style="width: 338px; height: 28px;">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 836px; text-transform: capitalize; font-family: Verdana;
                            height: 10px; text-align: left;" class="style6">
                            ( * Is Mandatory)</td>
                        <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                            height: 10px;">
                        </td>
                        <td style="width: 159px; height: 10px; text-align: right;">
                            <asp:Button ID="btnLogin" runat="server" Style="position: relative; top: 0px; left: 0px;
                                width: 85px;" Text="Login" ValidationGroup="g" BackColor="#F5F9FC" Font-Bold="True"
                                ForeColor="#33CCFF" BorderColor="Blue" onclick="btnLogin_Click" />
                        </td>
                        <td style="width: 338px; height: 10px;">
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
            <td style="background-color: #F5F9FC" class="style16">
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
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style6
        {
            font-size: xx-small;
            font-weight: bold;
            color: #FF3300;
        }
        .style14
        {
            height: 4px;
            width: 390px;
        }
        .style15
        {
            height: 4px;
            width: 54px;
        }
        .style16
        {
            width: 54px;
        }
        .style17
        {
            height: 4px;
            width: 50px;
        }
        .style18
        {
            width: 50px;
        }
        .style19
        {
            width: 390px;
        }
    </style>

</asp:Content>

