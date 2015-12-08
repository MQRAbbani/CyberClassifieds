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

public partial class Admin_frmAddEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
    }
    clsEmployee objEmp = new clsEmployee();
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string strOut = objEmp.AddEmployee(Convert.ToString(txtEmpName.Text),
                Convert.ToString(txtContactNo.Text), Convert.ToString(txtMailId.Text),
                Convert.ToString(txtCountry.Text), Convert.ToString(ddlState.SelectedItem.Text),
                Convert.ToString(txtCity.Text), Convert.ToString(txtAddress.Text),
                Convert.ToString(txtLoginName.Text), Convert.ToString(txtCpwd.Text));
            lblMsg.Text = strOut.ToString();
            if (strOut == "Employee profile Recorded.")
            {
                Clear();
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
            Clear();
        }
    }
    void Clear()
    {
        txtAddress.Text = "";
        txtCity.Text = "";
        txtContactNo.Text = "";
        txtCountry.Text = "";
        txtCpwd.Text = "";
        txtEmpName.Text = "";
        txtLoginName.Text = "";
        txtMailId.Text = "";
        txtPwd.Text = "";
        ddlState.SelectedIndex = 0;
    }
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (txtLoginName.Text == "")
            Page.RegisterClientScriptBlock("Dhanush", "<script>alert('Enter Desired Login Name')</script>");
        else
            lblMsg.Text = objEmp.CheckAvailability(txtLoginName.Text);
    }
}
