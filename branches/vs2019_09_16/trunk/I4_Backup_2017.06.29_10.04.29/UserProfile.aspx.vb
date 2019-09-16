Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Collections
Imports System.Resources
Imports System.ComponentModel
Imports System.Drawing
Imports System.Web.SessionState
Imports System.Web.UI.WebControls
Imports System.Web.UI.HtmlControls
Imports Telerik.Web.UI
Imports Telerik.Web
Imports System.IO
Imports System.Configuration
Imports System.Web.Security
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.Configuration
Imports System.Net.Mail

Partial Class UserProfile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim UserName = My.User.Name.ToString()
        UserName = UserName.Replace("KEPNER\", "")

        Dim IPConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim IPConnection As New SqlConnection(IPConnectionString)

        Dim selectCMD As SqlCommand = New SqlCommand("uspIntranetPersonalizationGet", IPConnection)
        selectCMD.CommandType = CommandType.StoredProcedure
        selectCMD.Parameters.AddWithValue("@UserName", UserName.ToString())


        Try

            IPConnection.Open()
            Dim result As Integer = selectCMD.ExecuteNonQuery()
            Dim Reader As SqlDataReader = selectCMD.ExecuteReader()
            Reader.Read()

            lblProfile.Text = "User Profile: " + Reader("FullName") + " | " + Reader("UserName")
            Status.Text = Reader("Status")
            Mobile.Text = Reader("Mobile")
            Fax.Text = Reader("Fax")
            eMail.Text = Reader("eMail")
            Company.Text = Reader("Company")
            FullName.Text = Reader("FullName")

            AdminCorp.Checked = Reader("AdminCorp")
            Accounting.Checked = Reader("Accounting")
            'AcctTracking.Checked = Reader("AcctTracking")
            AMR.Checked = Reader("AMR")
            AMRAssetMngr.Checked = Reader("AMRAssetMngr")
            BranchAdmin.Checked = Reader("BranchAdmin")
            BranchMngr.Checked = Reader("BranchMngr")
            Credit.Checked = Reader("Credit")
            CreditMngr.Checked = Reader("CreditMngr")
            Executive.Checked = Reader("Executive")
            HR.Checked = Reader("HR")
            InsideSales.Checked = Reader("InsideSales")
            IT.Checked = Reader("IT")
            MeterShop.Checked = Reader("MeterShop")
            Operations.Checked = Reader("Operations")
            Purchasing.Checked = Reader("Purchasing")
            Sales.Checked = Reader("Sales")
            Warehouse.Checked = Reader("Warehouse")
            Quote.Checked = Reader("Quote")
            Projects.Checked = Reader("Projects")


            Region1.Text = Reader("Region1")
            Region2.Text = Reader("Region2")
            Region3.Text = Reader("Region3")
            Region4.Text = Reader("Region4")
            Region5.Text = Reader("Region5")
            Region6.Text = Reader("Region6")
            Region7.Text = Reader("Region7")
            Region8.Text = Reader("Region8")

            Whse1.Text = Reader("Whse1")
            Whse2.Text = Reader("Whse2")
            Whse3.Text = Reader("Whse3")
            Whse4.Text = Reader("Whse4")
            Whse5.Text = Reader("Whse5")
            Whse6.Text = Reader("Whse6")
            Whse7.Text = Reader("Whse7")
            Whse8.Text = Reader("Whse8")
            Whse9.Text = Reader("Whse9")
            Whse10.Text = Reader("Whse10")


            SalesName.Text = Reader("SalesName")
            salesID1.Text = Reader("salesID1")
            SalesID2.Text = Reader("salesID2")
            SalesID3.Text = Reader("salesID3")
            SalesID4.Text = Reader("salesID4")
            SalesID5.Text = Reader("salesID5")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            IPConnection.Close()

        End Try



    End Sub
End Class
