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
using Microsoft.ApplicationBlocks.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for clsCustomers
/// </summary>
public class clsCustomers 
{
	public clsCustomers()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int AddCustomerProfile(string strCustName,string strAddress,string strContactNo)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[4];
            int intCustId;
            p[0] = new SqlParameter("@custName", SqlDbType.VarChar, 50);
            p[0].Value = strCustName ;
            p[1] = new SqlParameter("@address", SqlDbType.VarChar, 50);
            p[1].Value = strAddress ;
            p[2] = new SqlParameter("@ContactNo", SqlDbType.VarChar, 50);
            p[2].Value = strContactNo;
            p[3] = new SqlParameter("@CustId", SqlDbType.Int);
            p[3].Direction = ParameterDirection.Output;
           
            SqlHelper.ExecuteNonQuery(clsConnections.Con, CommandType.StoredProcedure, "spAddCustProfile", p);
            return intCustId =Convert.ToInt32( p[3].Value);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
