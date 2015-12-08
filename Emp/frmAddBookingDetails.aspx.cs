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

public partial class Emp_frmAddCustAdvtDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RadioBW.Checked = true;
            GetData();
            ddlAdvtCode.DataBind();
            ddlAdvtCode.Items.Insert(0, "Select Advt Code");
            ddlAdvtCode.Items[0].Selected = true;

            //Session["EmpId"] = 1;
           // Session["CustId"] = 1001;
        }
        lblMsg.Text = "";
    }
    private void GetData()
    {
      DataSet ds=objAdvt.GetAdvtCode();
      ddlAdvtCode.DataSource = ds.Tables[0];
      ddlAdvtCode.DataTextField = "AdvtCode";
      ddlAdvtCode.DataBind();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text  = Calendar1.SelectedDate.ToString("d");
    }
    decimal decUnitCost;
    string strStatus;
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (RadioBW.Checked == true)
            {
                decUnitCost = Convert.ToDecimal(RadioBW.Text);
                strStatus = "Black and white";
            }
            else if (RadioColor.Checked == true)
            {
                decUnitCost = Convert.ToDecimal(RadioColor.Text);
                strStatus = "Color";
            }
            objAdvt.BookAdvertisement(Convert.ToInt32(Session["EmpId"].ToString()),
                Convert.ToInt32(Session["CustId"].ToString()), Convert.ToInt32(ddlAdvtCode.SelectedItem.Text),
                Convert.ToDateTime(TextBox2.Text), decUnitCost, Convert.ToInt32(txtCentimeters.Text), Convert.ToDecimal(txtCost.Text), strStatus);
            lblMsg.Text = "Your Advertisement Booked on the Date of " + TextBox2.Text + ". Thanku...";
            ClearData();
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        
    }

    decimal intTotalCost;
    int intCen;
    decimal intUnitCost;

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (txtCentimeters.Text != "")
        {
            intCen = Convert.ToInt32 (txtCentimeters.Text);
            
            if (RadioBW.Checked == true)
            {
                intUnitCost = Convert.ToDecimal(RadioBW.Text);
            }
            else if (RadioColor.Checked == true)
            {
                intUnitCost = Convert.ToDecimal(RadioColor.Text);
            }
            intTotalCost = (intUnitCost * intCen);
            txtCost.Text = intTotalCost.ToString();
        }
        else
            Page.RegisterClientScriptBlock("ok", "<script>alert('Enter Total Centimeters')</script>");
    }
    clsAdvt objAdvt = new clsAdvt();
    protected void ddlAdvtCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DataSet dsAdvtData = objAdvt.GetAdvtDetailsById(Convert.ToInt32(ddlAdvtCode.SelectedItem.Text));
            if (dsAdvtData.Tables[0].Rows.Count != 0)
            {
                DataRow dRow = dsAdvtData.Tables[0].Rows[0];
                txtPageNo.Text=dRow[1].ToString ();
                txtPageLoc.Text = dRow[2].ToString();
                txtDesc.Text = dRow[5].ToString();
                RadioBW.Text = dRow[3].ToString();
                RadioColor.Text = dRow[4].ToString();
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

    private void ClearData()
    {
        txtPageNo.Text = "";
        txtPageLoc.Text = "";
        txtDesc.Text = "";
        txtCentimeters.Text = "";
        txtCost.Text = "";
        TextBox2.Text = "";
    }
}
