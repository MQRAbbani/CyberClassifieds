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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
    }

    clsEmployee objEmp = new clsEmployee();

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string str = objEmp.ValidateUser(Convert.ToString(txUserName.Text), Convert.ToString(txtPwd.Text));
           
            if (str != "No")
            {
                if (str == "Admin")
                {
                    Session["Role"] = str;
                    Session["EmpId"] = objEmp.EmpId;
                }
                else if (str == "Emp")
                {
                    Session["Role"] = str;
                    Session["EmpId"] = objEmp.EmpId;
                }
                Session["UserName"] = txUserName.Text.ToString();
                FormsAuthentication.RedirectFromLoginPage(str, chkRemember.Checked);
            }
            else
            {
                lblMsg.Text = "UserName and passowrd mismatch.Try again...";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
}
