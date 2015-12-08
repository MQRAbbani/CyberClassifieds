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

public partial class Emp_frmCustomerDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnContinue.Visible = false;
            btnRegister.Enabled = true;
        }
    }

    clsCustomers objCust = new clsCustomers();

   
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            int intOut = objCust.AddCustomerProfile(Convert.ToString(txtCustName.Text),
                              Convert.ToString(txtAddress.Text),
                                    Convert.ToString(txtContactNo.Text));

            if (intOut != 0)
            {
                Session["CustId"] = intOut;
                lblMsg.Text = "Customer profile Added. Tocontinue Click the Next Button.";
                btnRegister.Enabled = false;
                btnContinue.Visible = true;
                ClearData();
            }
            else if (intOut == 0)
                lblMsg.Text = "Error while inserting data into backend.";
            else
                lblMsg.Text = "Error..";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void btnContinue_Click1(object sender, EventArgs e)
    {
        Server.Transfer("~/Emp/frmAddBookingDetails.aspx");
    }

    private void ClearData()
    {
        txtAddress.Text = "";
        txtContactNo.Text = "";
        txtCustName.Text = "";
    }
}
