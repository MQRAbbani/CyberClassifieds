using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_frmAddAdvertisement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    clsAdvt objAdvt = new clsAdvt();
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string strRes = objAdvt.AddAdvtDetails(Convert.ToInt32(txtPageNo.Text), Convert.ToString(txtPageLoc.Text), Convert.ToDecimal(txtBWCost.Text), Convert.ToDecimal(txtColor.Text), Convert.ToString(txtDescription.Text));
            lblMsg.Text = strRes.ToString();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}
