<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmLogOut.aspx.cs" Inherits="frmLogOut" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            font-size: x-large;
            font-weight: bold;
            color: #CC0099;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script language="javascript" type="text/javascript" >
function RefreshPage()
{
  window.opener.location=self;
}
</script>
    <p class="style8">
        &nbsp;</p>
<p class="style8">
        &nbsp;</p>
<p class="style8">
        Thank you..</p>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#FF33CC" Text="Label"></asp:Label>
    </p>
    <p>
       <asp:LinkButton ID="lnkLoginAgain" Font-Bold="true" PostBackUrl="~/Login.aspx" runat="server" Text="Click Here To Login Again"></asp:LinkButton> </p>
</asp:Content>

