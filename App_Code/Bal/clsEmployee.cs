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
/// Summary description for clsEmployee
/// </summary>
public class clsEmployee 
{
	public clsEmployee()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    int _EmpId;

    public int EmpId
    {
        get { return _EmpId; }
        set { _EmpId = value; }
    }

    public string ValidateUser(string UserName, string Pwd)
    {
        try
        {
            string Role;
            string str = "select EmpId,Role from tbllogin where Username='" + UserName + "' and password='" + Pwd + "' ";
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.Text, str);
            if (ds.Tables[0].Rows.Count != 0)
            {
                DataRow dRow = ds.Tables[0].Rows[0];
                Role = dRow[1].ToString();
                this.EmpId =Convert.ToInt32 (dRow[0]);
            }
            else
                Role = "No";
            return Role;
        }
        catch (Exception ex)
        {
            return new ArgumentException(ex.Message).ToString();
        }
    }

    public string AddEmployee(string strEmpName,string strContactNo,string strMailId,string strCountry,string strState,string strCity,string strAddress,string strUName,string strPwd)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[10];
            string strOut;
            p[0] = new SqlParameter("@EmpName", SqlDbType.VarChar,50);
            p[0].Value = strEmpName;
            p[1] = new SqlParameter("@ContactNo",SqlDbType.VarChar,50 );
            p[1].Value = strContactNo;
            p[2] = new SqlParameter("@mailId",SqlDbType.VarChar,50 );
            p[2].Value = strMailId;
            p[3] = new SqlParameter("@Country",SqlDbType.VarChar,50 );
            p[3].Value = strCountry;
            p[4] = new SqlParameter("@State",SqlDbType.VarChar,50 );
            p[4].Value = strState;
            p[5] = new SqlParameter("@City",SqlDbType.VarChar,50 );
            p[5].Value = strCity;
            p[6] = new SqlParameter("@Address",SqlDbType.VarChar,250 );
            p[6].Value = strAddress;
            p[7] = new SqlParameter("@UserName",SqlDbType.VarChar,50 );
            p[7].Value = strUName;
            p[8] = new SqlParameter("@Pwd", SqlDbType.VarChar,50);
            p[8].Value = strPwd;
            p[9] = new SqlParameter("@Val", SqlDbType.VarChar,70);
            p[9].Direction=ParameterDirection.Output;

            SqlHelper.ExecuteNonQuery(clsConnections.Con, CommandType.StoredProcedure, "spAddEmployee", p);
            return strOut = p[9].Value.ToString();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
    string strOut;
    public string CheckAvailability(string strUserName)
    {
        try
        {
            string strText = "Select * from tblLogin where UserName='" + strUserName + "'";
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.Text, strText);
            if (ds.Tables[0].Rows.Count != 0)
                strOut= "Login Name Already Exists, Choose another..";
            else if (ds.Tables[0].Rows.Count == 0)
                strOut = "Login Name available, Continue";
            return strOut;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public DataSet GetEmpDetailsById(int intEmpId)
    {
        try
        {
            string strText = "Select * from tblEmployeeDetails where EmpId='" + intEmpId + "'";
            DataSet ds = SqlHelper.ExecuteDataset(clsConnections.Con, CommandType.Text, strText);
            return ds;
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public void UpdateEmpProfile(int intEmpId,string strContactNo,string strMailId,string strState,string strCity,string strAddress)
    {
        try
        {
            string strText = "update tblemployeedetails set contactno='" + strContactNo + "',MailId='" + strMailId + "',State='" + strState + "',City='"+strCity+"',Address='"+strAddress+"' where EmpId="+intEmpId+"";
            SqlHelper.ExecuteNonQuery(clsConnections.Con, CommandType.Text,strText);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public string ChangePwd(int intEmpId,string strLoginName,string strOldPwd,string strNewPwd)
    {
        try
        {
            SqlParameter[] p = new SqlParameter[5];
            string strOut;
            p[0] = new SqlParameter("@EmpId", SqlDbType.Int);
            p[0].Value = intEmpId;
            p[1] = new SqlParameter("@LoginName", SqlDbType.VarChar, 50);
            p[1].Value = strLoginName;
            p[2] = new SqlParameter("@oldPwd", SqlDbType.VarChar, 50);
            p[2].Value = strOldPwd;
            p[3] = new SqlParameter("@NewPwd", SqlDbType.VarChar, 50);
            p[3].Value = strNewPwd;
            p[4] = new SqlParameter("@Val", SqlDbType.VarChar, 70);
            p[4].Direction = ParameterDirection.Output;

            SqlHelper.ExecuteNonQuery(clsConnections.Con, CommandType.StoredProcedure, "spChangePassword", p);
            return strOut = p[4].Value.ToString();
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }

    }
}
