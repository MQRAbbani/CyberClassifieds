<%@ Page Language="C#" MasterPageFile="~/Emp/AgentsMasterPage.master" AutoEventWireup="true" CodeFile="frmEmpDetails.aspx.cs" Inherits="Emp_frmEmpDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<br />
        <table cellspacing="0" cellpadding="0" border="0" style="width: 442px">
            <tr>
                <td style="height: 4px">
                    <img src="../Images/middleleft.gif">
                </td>
                <td alt="msg" style="background-image: url(../Images/middlebg.gif); height: 4px;">
                    <span style="font-size: 14pt; color: #0099ff"><strong>&nbsp; My Profile&nbsp;
                    </strong></span>
                </td>
                <td style="height: 4px">
                    <img src="../Images/middleright.gif">
                </td>
            </tr>
            <tr>
                <td style="background-color: #F5F9FC; width: 15px;">
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
                                    left: 0px; width: 175px;" ValidationGroup="g" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 26px;">
                                &nbsp;</td>
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
                                    left: 0px; width: 175px;" ValidationGroup="g" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 26px;">
                                &nbsp;</td>
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
                                    width: 175px;" ValidationGroup="g" ReadOnly="True"></asp:TextBox>
                                &nbsp;
                            </td>
                            <td style="width: 338px; height: 10px;">
                                &nbsp;</td>
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
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">Country</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;
                                height: 13px;">
                                <b>:</b>
                            </td>
                            <td style="width: 159px; height: 13px; text-align: left;">
                                <asp:TextBox ID="txtCountry" runat="server" Text="India" ReadOnly="true" ValidationGroup="g"
                                    Width="175px"></asp:TextBox>
                            </td>
                            <td style="width: 338px; height: 13px;">
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
                                <strong><span style="font-size: 10pt; color: #0099ff;">State</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                                <strong>:</strong>
                            </td>
                            <td style="width: 159px; text-align: left;">
                                <asp:TextBox ID="txtState" runat="server" Style="position: relative; top: 0px; left: 0px;
                                    width: 175px;" ValidationGroup="g" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 338px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                                
                            </td>
                            <td style="width: 159px; text-align: left;">
                                
                            </td>
                            <td style="width: 338px">
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 26px; text-align: left;">
                                <strong><span style="font-size: 10pt; color: #0099ff;">City</span></strong>
                            </td>
                            <td style="text-transform: capitalize; color: #3300ff; font-family: Verdana; width: 7px;">
                                <b>:</b>
                            </td>
                            <td style="width: 159px; text-align: left;">
                                <asp:TextBox ID="txtCity" runat="server" ValidationGroup="g" Width="175px" 
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 338px">
                               </td>
                        </tr>
                        <tr>
                            <td >
                            </td>
                            <td >
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
                                    left: 0px; height: 103px;" TextMode="MultiLine" ValidationGroup="g" 
                                    ReadOnly="True"></asp:TextBox>
                            </td>
                            <td style="width: 338px">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 838px; text-transform: capitalize; color: #000000; font-family: Verdana;
                                height: 13px; text-align: left;">
                                
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
                            <td style="text-transform: capitalize; color: #000000; font-family: Verdana; text-align: right;"
                                colspan="4">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" 
                                    onclick="Button1_Click" Text="Edit" Width="65px" />
                                <asp:Button ID="btnUpdate" runat="server" Font-Bold="True" 
                                    onclick="btnUpdate_Click" Text="Update" Visible="False" />
                                <asp:Button ID="btnCancel" runat="server" Font-Bold="True" 
                                    onclick="btnCancel_Click" Text="Cancel" Visible="False" />
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

