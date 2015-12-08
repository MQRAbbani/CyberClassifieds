<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderControl.ascx.cs" Inherits="UserControls_HeaderControl" %>
<style type="text/css">
    .style1
    {
        text-align: center;
        font-size:42px;
        color:White ;
    }
    .style2
    {
        font-weight: bold;
        background-color:White;
    }
</style>
    <table border="0" cellpadding="0" cellspacing="0" 
    style="color: #0066FF; width: 103%;">
    <tr style="background-color:Gray">
    <td  colspan="3">
    <div  style="background-color:#FFFFFF;  width:100%;height:152px; vertical-align:middle" 
            class="style1"  >

     <span class="style2">
        <asp:Image ID="img1" runat="server" 
            ImageUrl="~/Images/CyberClassifieds1.jpg" Height="157px" 
            style="margin-left: 0px; margin-top: 0px" Width="1020px" />
    </span>
   
   
</div>
    </td>
    </tr>
    <tr style="background-color:Gray" >
    <td style="text-align:left; background-color: #006600; color: #996600;">
    
    <b><span style="font-size:small;text-align:right"> <%=System.DateTime.Now.ToLongDateString().ToString()%></span></b>

    </td>
    <td style="text-align:center; background-color: #006600;">
    
    <b><span style="font-size:small;text-align:right"></span><span style="font-size:larger;text-align:right;"> &nbsp;<%="Wel Come "+Session["Name"].ToString().ToUpper()%></span> </b>

    </td>
    <td style="text-align:right; background-color: #006600;">
    
        &nbsp;</td>
    </tr>

</table>
