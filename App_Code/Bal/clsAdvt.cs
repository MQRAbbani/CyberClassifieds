using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;

/// <summary>
/// Summary description for clsAdvt
/// </summary>
public class clsAdvt 
{
	public clsAdvt()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string AddAdvtDetails(int intPageNo,string strPageLoc,decimal decBWCost,decimal decColor,string strDes)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[6];
            string strOut;
            p[0] = new SqlParameter("@PageNo", SqlDbType.Int);
            p[0].Value = intPageNo;
            p[1] = new SqlParameter("@PageLoc", SqlDbType.VarChar, 50);
            p[1].Value = strPageLoc;
            p[2] = new SqlParameter("@BWCost", SqlDbType.Money);
            p[2].Value = decBWCost;
            p[3] = new SqlParameter("@ColorCost", SqlDbType.Money);
            p[3].Value = decColor;
            p[4] = new SqlParameter("@Desc", SqlDbType.VarChar, 500);
            p[4].Value = strDes;
            p[5] = new SqlParameter("@Out", SqlDbType.VarChar, 200);
            p[5].Direction = ParameterDirection.Output;

            SqlHelper.ExecuteNonQuery(clsConnections.Con, CommandType.StoredProcedure, "spAddAdvtDetails", p);
            return strOut = p[5].Value.ToString();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet GetAdvtDetailsById(int intAdvtCode)
    {
        try
        {
            string strText = "select * from tblAdvtDetails where AdvtCode=" + intAdvtCode + "";
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.Text, strText);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet GetAdvtCode()
    {
        try
        {
            string strText = "select AdvtCode from tblAdvtDetails";
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.Text, strText);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public void BookAdvertisement(int intEmpId,int intCustId,int intAdvtCode, DateTime dtPublishDate,decimal decUnitCost,
                      int intAdvtSize, decimal decTotalCost,string strStatus)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[8];
            string strOut;
            p[0] = new SqlParameter("@EmpId", SqlDbType.Int);
            p[0].Value = intEmpId;
            p[1] = new SqlParameter("@CustId", SqlDbType.Int);
            p[1].Value = intCustId;
            p[2] = new SqlParameter("@AdvtCode", SqlDbType.Int);
            p[2].Value = intAdvtCode;
            p[3] = new SqlParameter("@DateOfPublish", SqlDbType.DateTime);
            p[3].Value = dtPublishDate;
            p[4] = new SqlParameter("@UnitCost", SqlDbType.Decimal);
            p[4].Value =decUnitCost;
            p[5] = new SqlParameter("@AdvtSize", SqlDbType.Int);
            p[5].Value = intAdvtSize;
            p[6] = new SqlParameter("@TotalCost", SqlDbType.Decimal);
            p[6].Value = decTotalCost;
            p[7] = new SqlParameter("@PageStatus", SqlDbType.VarChar ,50);
            p[7].Value = strStatus;
            
            SqlHelper.ExecuteNonQuery(clsConnections.Con, CommandType.StoredProcedure, "spAddBookingDetails", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet GetDailyReprot(DateTime dtReportDate)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@Date", SqlDbType.DateTime);
            p[0].Value = dtReportDate;
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.StoredProcedure, "spGetDailyReport", p);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    public DataSet GetReprotBetweenDate(DateTime dtStaDate,DateTime dtEndDate)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@staDate", SqlDbType.DateTime);
            p[0].Value = dtStaDate;
            p[1] = new SqlParameter("@EndDate", SqlDbType.DateTime);
            p[1].Value = dtEndDate;
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.StoredProcedure, "spGetReportBetweenDate", p);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet GetReprotBetweenPubDates(DateTime dtStaDate, DateTime dtEndDate)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[2];
            p[0] = new SqlParameter("@staDate", SqlDbType.DateTime);
            p[0].Value = dtStaDate;
            p[1] = new SqlParameter("@EndDate", SqlDbType.DateTime);
            p[1].Value = dtEndDate;
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.StoredProcedure, "spGetReportByPublishBetweenDates", p);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet GetDailyReprotByPubDate(DateTime dtReportDate)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[1];
            p[0] = new SqlParameter("@Date", SqlDbType.DateTime);
            p[0].Value = dtReportDate;
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.StoredProcedure, "spGetDailyReportByPublishDate", p);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
