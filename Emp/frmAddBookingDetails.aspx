<%@ Page Language="C#" MasterPageFile="~/Emp/AgentsMasterPage.master" AutoEventWireup="true"
    CodeFile="frmAddBookingDetails.aspx.cs" Inherits="Emp_frmAddCustAdvtDetails"
    Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <script language="javascript" type="text/javascript">
   function GetTotalCost()
   {
     var g=0;
     var centimeters=document.getElementById("ctl00_ContentPlaceHolder1_txtCentimeters").value;
     var i=document.getElementById("ctl00_ContentPlaceHolder1_RadioBW").checked;
     var j=document.getElementById("ctl00_ContentPlaceHolder1_RadioColor").checked;
     if(i==true)
         g=document.getElementById ("ctl00_ContentPlaceHolder1_hidenBW").value;
     else if(j==true)
         g=document.getElementById ("ctl00_ContentPlaceHolder1_hidenColor").value;
     else
         alert('Select Any option');
     var res= (centimeters * g );
     document.getElementById ("ctl00_ContentPlaceHolder1_txtCost").value=res;
     
   }
   </script>
    <center>
        <br />
        <br />
        <table cellspacing="0" cellpadding="0" border="0" style="width: 71%">
            <tr>
                <td style="height: 4px">
                    <img src="../Images/middleleft.gif">
                </td>
                <td style="background-image: url('../Images/middlebg.gif'); height: 4px; width: 712px;">
                    &nbsp;<span style="font-size: 14pt; color: #0099ff"><strong> Book Your Advertisement&nbsp;
                        Here </strong></span>
                </td>
                <td style="height: 4px">
                    <img src="../Images/middleright.gif">
                </td>
            </tr>
            <tr>
                <td style="background-color: #F5F9FC;">
                </td>
                <td style="background-color: #F5F9FC; width: 712px;">
                    <br />
                </td>
                <td style="background-color: #F5F9FC">
                </td>
            </tr>
            <tr>
                <td style="background-color: #F5F9FC; width: 15px;">
                </td>
                <td style="background-color: #F5F9FC; width: 712px;">
                    <table style="width: 582px">
                        <tr>
                            <td colspan="3">
                                <b>Select Desired Page Code
                            </b>
                            </td>
                            <td colspan="3">
                                <asp:DropDownList ID="ddlAdvtCode" runat="server" AutoPostBack="True" 
                                      Height="16px" 
                                    onselectedindexchanged="ddlAdvtCode_SelectedIndexChanged" Width="129px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="20px">
                            </td>
                            <td colspan="3" height="20px">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Page No
                            </b>
                            </td>
                            <td>
                                <b>:
                            </b>
                            </td>
                            <td style="width: 105px">
                                <b>
                                <asp:TextBox ID="txtPageNo" runat="server" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator id="rfvdate0" runat ="server" Text ="*" 
                                    ControlToValidate ="txtPageNo" ValidationGroup="g"></asp:RequiredFieldValidator>
                                </b>
                            </td>
                            <td>
                                Page Location
                            </td>
                            <td>
                                :
                            </td>
                            <td>
                                <asp:TextBox ID="txtPageLoc" runat="server" ReadOnly="True"></asp:TextBox>
                                <asp:RequiredFieldValidator id="rfvdate1" runat ="server" Text ="*" 
                                    ControlToValidate ="txtPageLoc" ValidationGroup="g"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="20px">
                            </td>
                            <td colspan="3" height="20px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" valign="top" style="height: 70px">
                                <b>Advertisement Description
                            </b>
                            </td>
                            <td colspan="4" style="text-align: left; height: 70px;">
                                <b>
                                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Height="71px" 
                                    Width="355px" ReadOnly="True"></asp:TextBox>
                                </b>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" height="20px" style="text-align: left">
                                <b>Slect The Publishing Date Below    Slect The Publishing Date Below</b></td>
                        </tr>
                        
                        <tr>
                            <td colspan="3" height="20px" style="text-align: right">
                                <b>Date Of Publish</b></td>
                            <td colspan="3" height="20px" style="text-align: left">
                               <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" ReadOnly="True" 
                                    Width="130px" ValidationGroup="g"></asp:TextBox>
                           <img src="../Images/calendar.gif" onclick="displaydatepick()" 
                                    alt ="Select Starting date" id="IMG1" style="height: 16px" />
                        <div id="datePicker">
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"
                                Height="180px" Width="200px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            </asp:Calendar>
                        </div><asp:RequiredFieldValidator id="rfvdate" runat ="server" Text ="*" 
                                    ControlToValidate ="TextBox2" ValidationGroup="g"></asp:RequiredFieldValidator>
                       </td>
                        </tr>
                        
                        <tr>
                            <td colspan="3" height="20px">
                                  </td>
                            <td colspan="3" height="20px">
                                   
                               </td>
                        </tr>
                        
                        <tr>
                            <td colspan="3" style="text-align: left">
                                <asp:RadioButton ID="RadioBW" runat="server" GroupName="s" Font-Bold="True" 
                                    Font-Size="Medium" />
                                <span style="font-size: x-small; font-family: Verdana; font-weight: bold">(1-Square Centimeter Cost for Black & White
                                )</span></td>
                            <td colspan="3">
                                <asp:RadioButton ID="RadioColor"  runat="server" GroupName="s" Font-Bold="True" 
                                    Font-Size="Medium" />
                                <span style="font-family: Verdana; font-size: x-small; font-weight: bold">(1-Square Centimeter Cost for Color
                                )</span></td>
                        </tr>
                        <tr>
                            <td colspan="3" height="20px">
                            </td>
                            <td colspan="3" height="20px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: right">
                                
                                <b>Enter Total Square Centimeters</b></td>
                            <td colspan="3" style="text-align: left">
                                
                                <asp:TextBox ID="txtCentimeters" runat="server" Font-Bold="True" 
                                    ValidationGroup="g"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtCentimeters" ErrorMessage="RequiredFieldValidator" 
                                    ValidationGroup="g">*</asp:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: right">
                                
                                <b></b></td>
                            <td colspan="3" style="text-align: left">
                                
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    onclick="LinkButton1_Click" style="font-weight: 700">Click Here To Get Total Cost</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: right">
                                
                                <b>Total Advertisement Cost in Rupees</b></td>
                            <td colspan="3" style="text-align: left">
                                
                                <asp:TextBox ID="txtCost" runat="server" Font-Bold="True" ReadOnly="True" 
                                    ValidationGroup="g"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtCost" ErrorMessage="RequiredFieldValidator" 
                                    ValidationGroup="g">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="20px">
                                &nbsp;</td>
                            <td colspan="3" height="20px">
                                &nbsp;</td>
                        </tr>
                        
                         <tr>
                            <td colspan="3" height="20px" style="text-align: right">
                                &nbsp;</td>
                            <td colspan="3" height="20px" style="text-align: right">
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Book Advertisement" 
                                    onclick="Button1_Click" ValidationGroup="g" Width="140px" />
                        </td> 
                        </tr>
                        
                         <tr>
                            <td colspan="3" height="20px">
                                &nbsp;</td>
                            <td colspan="3" height="20px" style="text-align: left">
                                &nbsp;</td>
                        </tr>
                        
                         <tr>
                            <td colspan="3" height="20px" style="text-align: right">
                                &nbsp;</td>
                            <td colspan="3" height="20px" style="text-align: left">
                                &nbsp;</td>
                        </tr>
                        
                    </table>
                </td>
                <td style="background-color: #F5F9FC">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #F5F9FC">
                    <asp:LinkButton ID="lnkShowAdvtdetails" runat="server" 
                        PostBackUrl="~/Emp/frmAdvtDetails.aspx" style="font-weight: 700">Show 
                    Advertisement Details</asp:LinkButton>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    </center>
</asp:Content>
