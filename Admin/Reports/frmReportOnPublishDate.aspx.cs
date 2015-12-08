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

public partial class Admin_Reports_frmReportOnPublishDate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnPdf.Visible = false ;
        btnXl.Visible = false;
        lblIns.Visible = false;
    }
    clsAdvt objAdvt = new clsAdvt();
    protected void btnDailyReShow_Click(object sender, EventArgs e)
    {
        if (GMDatePicker4.DateString == "")
            Page.RegisterClientScriptBlock("Dhanush", "<script>alert('Select The Date To generate Report.')</script>");
        else
        {
            try
            {
                DataSet ds = objAdvt.GetDailyReprotByPubDate(Convert.ToDateTime(GMDatePicker4.DateString));
                if (ds.Tables[0].Rows.Count != 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    btnPdf .Visible = true;
                    btnXl .Visible = true;
                    lblIns.Visible = true;
                }
                else
                {
                    GridView1.EmptyDataText = "No Data Found To Generate Reports.";
                    GridView1.EmptyDataRowStyle.ForeColor = System.Drawing.Color.Red;
                    GridView1.EmptyDataRowStyle.Font.Bold = true;
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
    protected void btnMonReport_Click(object sender, EventArgs e)
    {
        if (GMDatePicker5.DateString != "" && GMDatePicker6.DateString != "")
        {
            try
            {
                DataSet ds = objAdvt.GetReprotBetweenPubDates(Convert.ToDateTime(GMDatePicker5.DateString), Convert.ToDateTime(GMDatePicker6.DateString));
                if (ds.Tables[0].Rows.Count != 0)
                {
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    btnPdf .Visible = true;
                    btnXl .Visible = true;
                    lblIns.Visible = true;
                }
                else
                {
                    GridView1.EmptyDataText = "No Data Found To Generate Reports.";
                    GridView1.EmptyDataRowStyle.Font.Bold = true;
                    GridView1.EmptyDataRowStyle.ForeColor = System.Drawing.Color.Red;
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
        else
        {
            Page.RegisterClientScriptBlock("Dhanush", "<script>alert('Select Dates To Generate Report.')</script>");
        }
    }

    protected void btnPdf_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=DocumentReport.pdf");
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/pdf";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        GridView1.RenderControl(htmlWrite);
        Response.Write(stringWrite.ToString());
        Response.End();
    }
    protected void btnXl_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.AddHeader("content-disposition", "attachment;filename=DocumentReport.xls");
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        System.IO.StringWriter stringWrite = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
        GridView1.RenderControl(htmlWrite);
        Response.Write(stringWrite.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
}
