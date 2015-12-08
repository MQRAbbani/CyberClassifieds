<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="frmAddEmployee.aspx.cs" Inherits="Admin_frmAddEmployee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <center>
        <table cellspacing="0" cellpadding="0" border="0" style="width: 442px">
            <tr>
                <td style="height: 4px">
                    <img src="../Images/middleleft.gif">
                </td>
                <td alt="msg" style="background-image: url(../Images/middlebg.gif); height: 4px;">
                    &nbsp;<span style="font-size: 14pt; color: #0099ff"><strong>Add Employee Profile Here
                    </strong></span>
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
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Employee Name</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 26px;
                                width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; height: 26px; text-align: left;">
                                <asp:TextBox ID="txtEmpName" runat="server" Style="position: relative; top: 0px;
                                    left: 0px; width: 175px;" ValidationGroup="g"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 26px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtEmpName" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-transform: capitalize; width: 838px; color: #000000; font-family: Verdana;
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
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
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
                            <td style="text-transform: capitalize; width: 838px; color: #000000; font-family: Verdana;
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
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Mail Id</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 10px;">
                                <b>:</b>
                            </td>
                            <td style="width: 159px; height: 10px;">
                                <asp:TextBox ID="txtMailId" runat="server" Style="position: relative; top: 0px; left: 0px;
                                    width: 175px;" ValidationGroup="g"></asp:TextBox>
                                &nbsp;
                            </td>
                            <td style="width: 338px; height: 10px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtMailId" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="color: #000000">
                            <td style="text-transform: capitalize; width: 838px; color: #000000; font-family: Verdana;
                                height: 10px; text-align: left;">
                                &nbsp;
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 10px;">
                                &nbsp;
                            </td>
                            <td style="width: 159px; height: 10px;">
                                &nbsp;
                            </td>
                            <td style="width: 338px; height: 10px;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Country</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 13px;">
                                <b>:</strong></b>
                            </td>
                            <td style="width: 159px; height: 13px; text-align: left;">
                                <asp:TextBox ID="txtCountry" runat="server" Text="India" ReadOnly="true" ValidationGroup="g"
                                    Width="175px"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 13px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtCountry" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-transform: capitalize; width: 838px; color: #000000; font-family: Verdana;
                                height: 7px; text-align: left;">
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 7px;">
                            </td>
                            <td style="width: 159px; height: 7px;">
                            </td>
                            <td style="width: 338px; height: 7px;">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">StateState</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; text-align: left;">
                                <asp:DropDownList ID="ddlState" runat="server" Height="16px" Width="175px" ValidationGroup="g">
                                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                    <asp:ListItem>Tamilnadu</asp:ListItem>
                                    <asp:ListItem>Karnata</asp:ListItem>
                                    <asp:ListItem>Maharashtra</asp:ListItem>
                                    <asp:ListItem>Kerala</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 338px">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="ddlState" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
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
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">City</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                                <b>:</b></b>
                            </td>
                            <td style="width: 159px; text-align: left;">
                                <asp:TextBox ID="txtCity" runat="server" ValidationGroup="g" Width="175px"></asp:TextBox>
                            </td>
                            <td style="width: 338px">
                                <asp:RequiredFieldValidator ID="rfvcity" runat="server" ControlToValidate="txtCity"
                                    ErrorMessage="*" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-transform: capitalize; width: 838px; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 13px;">
                            </td>
                            <td style="width: 159px; height: 13px;">
                            </td>
                            <td style="width: 338px; height: 13px;">
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" style="width: 838px; text-transform: capitalize; color: #000000;
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
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
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
                            <td style="width: 838px; text-transform: capitalize; color: #33CCFF; font-family: Verdana;
                                height: 13px; text-align: left; font-size: small;">
                                <b><span style="font-size: 10pt; color: #0099ff;">Login Name</span> </b>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                                <b>:</b>&nbsp;
                            </td>
                            <td style="width: 159px; height: 13px;">
                                <asp:TextBox ID="txtLoginName" runat="server" Width="174px"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 13px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtLoginName" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                &nbsp;
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                                &nbsp;
                            </td>
                            <td style="width: 159px; height: 13px; text-align: right;">
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Check 
                                Availability</asp:LinkButton>
                            </td>
                            <td style="width: 338px; height: 13px;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #66CCFF; font-family: Verdana;
                                height: 13px; text-align: left; font-size: small;">
                                <b><span style="font-size: 10pt; color: #0099ff;">password</span></b>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                                
                                <b>:</b></td>
                            <td style="width: 159px; height: 13px;">
                                <asp:TextBox ID="txtPwd" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 13px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtPwd" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                &nbsp;
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                                &nbsp;
                            </td>
                            <td style="width: 159px; height: 13px;">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                                    ControlToValidate="txtCpwd" ErrorMessage="Password Mismatch"></asp:CompareValidator>
                            </td>
                            <td style="width: 338px; height: 13px;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left; font-size: small;">
                                <b><span style="font-size: 10pt; color: #0099ff" >Confirm Password</span> </b>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                                <b>:</b>
                            </td>
                            <td style="width: 159px; height: 13px;">
                                <asp:TextBox ID="txtCpwd" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 13px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"
                                    Style="position: relative" ControlToValidate="txtCpwd" ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                &nbsp;
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; height: 13px;
                                width: 7px;">
                                &nbsp;
                            </td>
                            <td style="width: 159px; height: 13px;">
                                &nbsp;
                            </td>
                            <td style="width: 338px; height: 13px;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 28px; text-align: left;">
                                <strong><span style="font-size: 8pt; color: #ff0000">( * mandetory)</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 28px;">
                                &nbsp;
                            </td>
                            <td style="width: 159px; height: 28px; text-align: right;">
                                <asp:Button ID="btnRegister" runat="server" Style="position: relative; top: 0px;
                                    left: 0px; width: 85px;" Text="Register" ValidationGroup="g" OnClick="btnRegister_Click" />
                            </td>
                            <td style="width: 338px; height: 28px;">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-transform: capitalize; color: #000000; font-family: Verdana; text-align: left;"
                                colspan="4">
                            </td>
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
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </center>
</asp:Content>
