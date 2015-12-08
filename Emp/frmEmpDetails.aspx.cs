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

public partial class Emp_frmEmpDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Getdata();
        }
        lblMsg.Text = "";
    }
    clsEmployee objEmp = new clsEmployee();
    private void Getdata()
    {
        try
        {
            if (Session["EmpId"] != null)
            {
                DataSet ds = objEmp.GetEmpDetailsById(Convert.ToInt32(Session["EmpId"].ToString()));
                if (ds.Tables[0].Rows.Count != 0)
                {
                    DataRow dRow = ds.Tables[0].Rows[0];
                    txtEmpName.Text = dRow[1].ToString();
                    txtContactNo.Text = dRow[2].ToString();
                    txtMailId.Text = dRow[3].ToString();
                    txtCountry.Text = dRow[4].ToString();
                    txtState.Text = dRow[5].ToString();
                    txtCity.Text = dRow[6].ToString();
                    txtAddress.Text = dRow[7].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MakeReadOlyFase();
        btnUpdate.Visible = true;
        btnCancel.Visible = true;
        Button1.Visible = false;

    }
    void MakeReadOlyTrue()
    {
        txtContactNo.ReadOnly = true;
        txtMailId.ReadOnly = true;
       
        txtState.ReadOnly = true;
        txtCity.ReadOnly = true;
        txtAddress.ReadOnly = true;
    }
    void MakeReadOlyFase()
    {
        txtContactNo.ReadOnly = false;
        txtMailId.ReadOnly = false;
       
        txtState.ReadOnly = false;
        txtCity.ReadOnly = false;
        txtAddress.ReadOnly = false;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            objEmp.UpdateEmpProfile(Convert.ToInt32 (Session["EmpId"].ToString ()),Convert.ToString(txtContactNo.Text),
                Convert.ToString(txtMailId.Text),Convert.ToString(txtState.Text), 
                Convert.ToString(txtCity.Text),Convert.ToString(txtAddress.Text));
            MakeReadOlyTrue();
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            Button1.Visible = true;
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        finally
        {
            Getdata();
        }
       
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        try
        {
            MakeReadOlyTrue();
            btnUpdate.Visible = false;
            btnCancel.Visible = false;
            Button1.Visible = true;
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        finally
        {
            Getdata();
        }
    }
}
