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

public partial class Emp_frmChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
    }
    clsEmployee objEmp = new clsEmployee();
    protected void btnChangepwd_Click(object sender, EventArgs e)
    {
            try
            {
                if (Session["EmpId"] != null && Session["UserName"] != null)
                {
                    string str = objEmp.ChangePwd(Convert.ToInt32(Session["EmpId"].ToString()),
                                          Convert.ToString(Session["UserName"]),
                                          Convert.ToString(txtoldPwd.Text),
                                          Convert.ToString(txtConPwd.Text));
                    lblMsg.Text = str.ToString();
                }
                else
                    lblMsg.Text = "Yor are not a registered person..";
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
    }
}
