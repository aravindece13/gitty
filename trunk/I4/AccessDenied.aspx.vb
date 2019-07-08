Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.Web.Configuration


Partial Class AccessDenied
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Dim selectSQL As String
        selectSQL = "SELECT * "
        selectSQL &= "FROM Intranet_Personalization "
        selectSQL &= "WHERE UserName = '" & Request.Cookies("UserName").Value & "'"
        lblProfile.Text = selectSQL.ToString()




        'Define the ADO.NET Connection Object
        Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim myIPConnection As New SqlConnection(IntranetPersonalizationConnectionString)
        Dim selectCmd As New SqlCommand(selectSQL, myIPConnection)
        Dim Reader As SqlDataReader



        Try

            myIPConnection.Open()
            Reader = selectCmd.ExecuteReader()
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
            AcctTracking.Checked = Reader("AcctTracking")
            AMR.Checked = Reader("AMR")
            AMRAssetMngr.Checked = Reader("AMRAssetMngr")
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
            Quote.Checked = Reader("Quote")
            Projects.Checked = Reader("Projects")


            Region1.Text = Reader("Region1")
            Region2.Text = Reader("Region2")
            Region3.Text = Reader("Region3")
            Region4.Text = Reader("Region4")
            Region5.Text = Reader("Region5")
            Whse1.Text = Reader("Whse1")
            Whse2.Text = Reader("Whse2")
            Whse3.Text = Reader("Whse3")
            Whse4.Text = Reader("Whse4")
            Whse5.Text = Reader("Whse5")
            SalesName.Text = Reader("SalesName")
            salesID1.Text = Reader("salesID1")
            salesID2.Text = Reader("salesID2")
            salesID3.Text = Reader("salesID3")
            salesID4.Text = Reader("salesID4")
            salesID5.Text = Reader("salesID5")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            myIPConnection.Close()

        End Try


    End Sub
End Class
