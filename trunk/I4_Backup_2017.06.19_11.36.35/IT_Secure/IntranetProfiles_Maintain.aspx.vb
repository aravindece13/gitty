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



Partial Class IT_Secure_IntranetProfiles_Maintain
    Inherits System.Web.UI.Page

    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            lblProfile.Text = "Select a Profile at left to edit."
            Panel1.Enabled = False


            lblInactiveProfileName.Text = "Select a Profile at left to Update"
            btnUpdateStatusActive.Enabled = "false"

        End If

        Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim IPConnection As New SqlConnection(IntranetPersonalizationConnectionString)

        Dim cleanUpCMD As SqlCommand = New SqlCommand("uspaspnet_UsersUserNameCorrection", IPConnection)

        Try
            'Try to open the connection and execute the insert
            IPConnection.Open()
            cleanUpCMD.ExecuteNonQuery()
        Catch err As Exception
            ' Handle an error by displaying the information
        Finally
            'Either way, make sure the connection is properly closed
            IPConnection.Close()
        End Try

    End Sub

    Protected Sub RadGridProfiles_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadGridProfiles.SelectedIndexChanged

        Panel1.Enabled = "true"

        If Page.IsPostBack Then

            Dim IPConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
            Dim IPConnection As New SqlConnection(IPConnectionString)

            Dim selectCMD As SqlCommand = New SqlCommand("uspIntranetPersonalizationGet", IPConnection)
            selectCMD.CommandType = CommandType.StoredProcedure
            selectCMD.Parameters.AddWithValue("@UserName", RadGridProfiles.SelectedValue.ToString())

            Try

                IPConnection.Open()
                Dim result As Integer = selectCMD.ExecuteNonQuery()
                Dim Reader As SqlDataReader = selectCMD.ExecuteReader()
                Reader.Read()


                hdnIndex.Value = Reader("Index")
                hdnUserName.Value = Reader("UserName")
                hdnUserName2.Value = Reader("UserName2")
                lblProfile.Text = "User Profile: " + Reader("FullName") + " | " + Reader("UserName")
                Status.SelectedValue = Reader("Status")
                Mobile.Text = Reader("Mobile")
                Fax.Text = Reader("Fax")
                eMail.Text = Reader("eMail")
                Company.SelectedValue = Reader("Company")
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


                Region1.SelectedValue = Reader("Region1").ToString()
                Region2.SelectedValue = Reader("Region2").ToString()
                Region3.SelectedValue = Reader("Region3").ToString()
                Region4.SelectedValue = Reader("Region4").ToString()
                Region5.SelectedValue = Reader("Region5").ToString()
                Region6.SelectedValue = Reader("Region6").ToString()
                Region7.SelectedValue = Reader("Region7").ToString()
                Region8.SelectedValue = Reader("Region8").ToString()

                Whse1.SelectedValue = Reader("Whse1").ToString()
                Whse2.SelectedValue = Reader("Whse2").ToString()
                Whse3.SelectedValue = Reader("Whse3").ToString()
                Whse4.SelectedValue = Reader("Whse4").ToString()
                Whse5.SelectedValue = Reader("Whse5").ToString()
                Whse6.SelectedValue = Reader("Whse6").ToString()
                Whse7.SelectedValue = Reader("Whse7").ToString()
                Whse8.SelectedValue = Reader("Whse8").ToString()
                Whse9.SelectedValue = Reader("Whse9").ToString()
                Whse10.SelectedValue = Reader("Whse10").ToString()

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
                IPConnection.Close()

            End Try

        End If


    End Sub

    Protected Sub btnUpdateProfile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateProfile.Click


        Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim IPConnection As New SqlConnection(IntranetPersonalizationConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspIntranetPersonalizationUpdate", IPConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.AddWithValue("@Index", hdnIndex.Value)
        updateCMD.Parameters.AddWithValue("@Status", Status.SelectedValue)
        updateCMD.Parameters.AddWithValue("@UserName", hdnUserName.Value)
        updateCMD.Parameters.AddWithValue("@UserName2", hdnUserName2.Value)
        updateCMD.Parameters.AddWithValue("@FullName", FullName.Text)
        updateCMD.Parameters.AddWithValue("@Company", Company.SelectedValue)
        updateCMD.Parameters.AddWithValue("@eMail", eMail.Text)
        updateCMD.Parameters.AddWithValue("@Fax", Fax.Text)
        updateCMD.Parameters.AddWithValue("@Mobile", Mobile.Text)
        updateCMD.Parameters.AddWithValue("@SalesName", SalesName.Text)
        updateCMD.Parameters.AddWithValue("@salesID1", salesID1.Text)
        updateCMD.Parameters.AddWithValue("@salesID2", salesID2.Text)
        updateCMD.Parameters.AddWithValue("@salesID3", salesID3.Text)
        updateCMD.Parameters.AddWithValue("@salesID4", salesID4.Text)
        updateCMD.Parameters.AddWithValue("@salesID5", salesID5.Text)

        updateCMD.Parameters.AddWithValue("@Whse1", Whse1.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse2", Whse2.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse3", Whse3.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse4", Whse4.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse5", Whse5.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse6", Whse6.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse7", Whse7.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse8", Whse8.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse9", Whse9.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Whse10", Whse10.SelectedValue)

        updateCMD.Parameters.AddWithValue("@Region1", Region1.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Region2", Region2.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Region3", Region3.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Region4", Region4.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Region5", Region5.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Region6", Region6.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Region7", Region7.SelectedValue)
        updateCMD.Parameters.AddWithValue("@Region8", Region8.SelectedValue)
        updateCMD.Parameters.AddWithValue("@AdminCorp", AdminCorp.Checked)
        updateCMD.Parameters.AddWithValue("@Accounting", Accounting.Checked)
        updateCMD.Parameters.AddWithValue("@AcctTracking", 0)
        updateCMD.Parameters.AddWithValue("@AMR", AMR.Checked)
        updateCMD.Parameters.AddWithValue("@AMRAssetMngr", AMRAssetMngr.Checked)
        updateCMD.Parameters.AddWithValue("@BranchAdmin", BranchAdmin.Checked)
        updateCMD.Parameters.AddWithValue("@BranchMngr", BranchMngr.Checked)
        updateCMD.Parameters.AddWithValue("@Credit", Credit.Checked)
        updateCMD.Parameters.AddWithValue("@CreditMngr", CreditMngr.Checked)
        updateCMD.Parameters.AddWithValue("@Executive", Executive.Checked)
        updateCMD.Parameters.AddWithValue("@HR", HR.Checked)
        updateCMD.Parameters.AddWithValue("@InsideSales", InsideSales.Checked)
        updateCMD.Parameters.AddWithValue("@IT", IT.Checked)
        updateCMD.Parameters.AddWithValue("@MeterShop", MeterShop.Checked)
        updateCMD.Parameters.AddWithValue("@Operations", Operations.Checked)
        updateCMD.Parameters.AddWithValue("@Purchasing", Purchasing.Checked)
        updateCMD.Parameters.AddWithValue("@Sales", Sales.Checked)
        updateCMD.Parameters.AddWithValue("@Warehouse", Warehouse.Checked)
        updateCMD.Parameters.AddWithValue("@Quote", Quote.Checked)
        updateCMD.Parameters.AddWithValue("@Projects", Projects.Checked)

        Dim updated As Integer = 0

        Try
            IPConnection.Open()

            updated = updateCMD.ExecuteNonQuery()
            RadGridProfiles.DataSourceID = SqlDS_Profiles.ID
            RadGridProfiles.DataBind()


        Catch ex As SqlException

        Finally
            IPConnection.Close()
            Panel1.Enabled = False

            lblProfile.Text = "Select a Profile On The Left To Edit"
            Status.SelectedValue = ""
            hdnUserName.Value = ""
            FullName.Text = ""
            Company.Text = ""
            eMail.Text = ""
            Fax.Text = ""
            Mobile.Text = ""
            SalesName.Text = ""
            salesID1.Text = ""
            salesID2.Text = ""
            salesID3.Text = ""
            salesID4.Text = ""
            salesID5.Text = ""

            Whse1.SelectedValue = ""
            Whse2.SelectedValue = ""
            Whse3.SelectedValue = ""
            Whse4.SelectedValue = ""
            Whse5.SelectedValue = ""
            Whse6.SelectedValue = ""
            Whse7.SelectedValue = ""
            Whse8.SelectedValue = ""
            Whse9.SelectedValue = ""
            Whse10.SelectedValue = ""

            Region1.SelectedValue = ""
            Region2.SelectedValue = ""
            Region3.SelectedValue = ""
            Region4.SelectedValue = ""
            Region5.SelectedValue = ""
            Region6.SelectedValue = ""
            Region7.SelectedValue = ""
            Region8.SelectedValue = ""
            AdminCorp.Checked = False
            Accounting.Checked = False
            'AcctTracking.Checked = False
            AMR.Checked = False
            AMRAssetMngr.Checked = False
            BranchAdmin.Checked = False
            BranchMngr.Checked = False
            Credit.Checked = False
            CreditMngr.Checked = False
            Executive.Checked = False
            HR.Checked = False
            InsideSales.Checked = False
            IT.Checked = False
            MeterShop.Checked = False
            Operations.Checked = False
            Purchasing.Checked = False
            Sales.Checked = False
            Warehouse.Checked = True
            Quote.Checked = False
            Projects.Checked = False

        End Try

    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim IPConnection As New SqlConnection(IntranetPersonalizationConnectionString)

        Dim insertCMD As SqlCommand = New SqlCommand("uspIntranetPersonalizationInsert", IPConnection)
        insertCmd.CommandType = CommandType.StoredProcedure

        UserName.Value = UserName2.SelectedValue.ToString()

        Dim UserNameTransformed As String = UserName.Value
        UserNameTransformed.Replace("KEPNER\", "")

        Dim added As Integer = 0

        'Add the parameters
        insertCMD.Parameters.AddWithValue("@UserName", UserNameTransformed.ToString)
        insertCMD.Parameters.AddWithValue("@UserName2", UserName2.SelectedValue)
        insertCMD.Parameters.AddWithValue("@FullName", aFullName.Text)
        insertCMD.Parameters.AddWithValue("@Company", aCompany.SelectedValue)
        insertCMD.Parameters.AddWithValue("@eMail", aemail.Text)
        insertCMD.Parameters.AddWithValue("@Fax", aFax.Text)
        insertCMD.Parameters.AddWithValue("@Mobile", aMobile.Text)
        insertCMD.Parameters.AddWithValue("@SalesName", aSalesName.Text)

        insertCMD.Parameters.AddWithValue("@salesID1", aSalesID1.Text)
        insertCMD.Parameters.AddWithValue("@salesID2", aSalesID2.Text)
        insertCMD.Parameters.AddWithValue("@salesID3", aSalesID3.Text)
        insertCMD.Parameters.AddWithValue("@salesID4", aSalesID4.Text)
        insertCMD.Parameters.AddWithValue("@salesID5", aSalesID5.Text)

        insertCMD.Parameters.AddWithValue("@Whse1", aWhse1.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse2", aWhse2.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse3", aWhse3.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse4", aWhse4.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse5", aWhse5.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse6", aWhse6.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse7", aWhse7.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse8", aWhse8.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse9", aWhse9.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Whse10", aWhse10.SelectedValue)


        insertCMD.Parameters.AddWithValue("@Region1", aRegion1.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Region2", aRegion2.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Region3", aRegion3.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Region4", aRegion4.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Region5", aRegion5.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Region6", aRegion6.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Region7", aRegion7.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Region8", aRegion8.SelectedValue)
        insertCMD.Parameters.AddWithValue("@Status", "Active")
        insertCMD.Parameters.AddWithValue("@AdminCorp", aAdminCorp.Checked)
        insertCMD.Parameters.AddWithValue("@Accounting", aAccounting.Checked)
        insertCMD.Parameters.AddWithValue("@AcctTracking", 0)
        insertCMD.Parameters.AddWithValue("@AMR", aAMR.Checked)
        insertCMD.Parameters.AddWithValue("@AMRAssetMngr", aAMRAssetMngr.Checked)
        insertCMD.Parameters.AddWithValue("@BranchAdmin", aBranchAdmin.Checked)
        insertCMD.Parameters.AddWithValue("@BranchMngr", aBranchMngr.Checked)
        insertCMD.Parameters.AddWithValue("@Credit", aCredit.Checked)
        insertCMD.Parameters.AddWithValue("@CreditMngr", aCreditMngr.Checked)
        insertCMD.Parameters.AddWithValue("@Executive", aExec.Checked)
        insertCMD.Parameters.AddWithValue("@HR", aHR.Checked)
        insertCMD.Parameters.AddWithValue("@InsideSales", aInsideSales.Checked)
        insertCMD.Parameters.AddWithValue("@IT", aIT.Checked)
        insertCMD.Parameters.AddWithValue("@MeterShop", aMeterShop.Checked)
        insertCMD.Parameters.AddWithValue("@Operations", aOperations.Checked)
        insertCMD.Parameters.AddWithValue("@Purchasing", aPurchasing.Checked)
        insertCMD.Parameters.AddWithValue("@Sales", aSales.Checked)
        insertCMD.Parameters.AddWithValue("@Warehouse", aWarehouse.Checked)
        insertCMD.Parameters.AddWithValue("@Quote", aQuote.Checked)
        insertCMD.Parameters.AddWithValue("@Projects", aProjects.Checked)


        Try
            'Try to open the connection and execute the insert
            IPConnection.Open()
            added = insertCmd.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information
            lblInfo.Text = "Error creating profile. "
            lblInfo.Text &= err.Message
        Finally
            'Either way, make sure the connection is properly closed
            IPConnection.Close()
        End Try


        UserName2.DataSourceID = SqlDS_UserListNoProfile.ID
        UserName2.DataBind()


        aFullName.Text = ""
        aemail.Text = ""
        aFax.Text = ""
        aMobile.Text = ""
        aSalesName.Text = ""
        aSalesID1.Text = ""
        aSalesID2.Text = ""
        aSalesID3.Text = ""
        aSalesID4.Text = ""
        aSalesID5.Text = ""
        aWhse1.SelectedIndex = 0
        aWhse2.SelectedIndex = 0
        aWhse3.SelectedIndex = 0
        aWhse4.SelectedIndex = 0
        aWhse5.SelectedIndex = 0
        aWhse6.SelectedIndex = 0
        aWhse7.SelectedIndex = 0
        aWhse8.SelectedIndex = 0
        aWhse9.SelectedIndex = 0
        aWhse10.SelectedIndex = 0

        aRegion1.SelectedIndex = 0
        aRegion2.SelectedIndex = 0
        aRegion3.SelectedIndex = 0
        aRegion4.SelectedIndex = 0
        aRegion5.SelectedIndex = 0
        aRegion6.SelectedIndex = 0
        aRegion7.SelectedIndex = 0
        aRegion8.SelectedIndex = 0
        aAdminCorp.Checked = False
        aAccounting.Checked = False
        'aAcctTracking.Checked = False
        aAMR.Checked = False
        aAMRAssetMngr.Checked = False
        aBranchAdmin.Checked = False
        aBranchMngr.Checked = False
        aCredit.Checked = False
        aCreditMngr.Checked = False
        aExec.Checked = False
        aHR.Checked = False
        aInsideSales.Checked = False
        aIT.Checked = False
        aMeterShop.Checked = False
        aOperations.Checked = False
        aPurchasing.Checked = False
        aSales.Checked = False
        aWarehouse.Checked = True
        aQuote.Checked = False
        aProjects.Checked = False


        UserName2.DataSourceID = SqlDS_UserListNoProfile.ID
        UserName2.DataBind()

    End Sub


    Protected Sub UserName2_SelectedIndexChanged(ByVal o As Object, ByVal e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles UserName2.SelectedIndexChanged
        UserName.Value = UserName2.SelectedItem.ToString()
    End Sub


    Protected Sub grdInactive_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles grdInactive.SelectedIndexChanged
        btnUpdateStatusActive.Enabled = "true"
        hdnInactiveUserName.Value = grdInactive.SelectedValues("UserName")

        Dim IntranetAppServices1 As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim IntranetAppServicesConnection1 As New SqlConnection(IntranetAppServices1)

        Dim selectCMD1 As SqlCommand = New SqlCommand("uspIntranetPersonalizationGet", IntranetAppServicesConnection1)
        selectCMD1.CommandType = CommandType.StoredProcedure
        selectCMD1.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = grdInactive.SelectedValues("UserName").ToString()
        selectCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Inactive"


        Try
            IntranetAppServicesConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader1 As SqlDataReader = selectCMD1.ExecuteReader()
            myReader1.Read()

            'hdnAssemblyIDEdit.Value = myReader1("AssemblyID")

            lblInactiveProfileName.Text = "Move " + myReader1("FullName").ToString() + ", " + myReader1("UserName").ToString() + ", to Active Profile status"

            myReader1.Close()

        Catch ex As SqlException

        Finally
            IntranetAppServicesConnection1.Close()
        End Try



    End Sub

    Protected Sub btnUpdateStatusActive_Click(sender As Object, e As System.EventArgs) Handles btnUpdateStatusActive.Click

        Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim IPConnection As New SqlConnection(IntranetPersonalizationConnectionString)

        Dim updateCMD As SqlCommand = New SqlCommand("uspIntranetPersonalizationUpdateStatus", IPConnection)
        updateCMD.CommandType = CommandType.StoredProcedure

        updateCMD.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Active"
        updateCMD.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = grdInactive.SelectedValues("UserName").ToString()
        

        Dim updated As Integer = 0

        Try
            IPConnection.Open()

            updated = updateCMD.ExecuteNonQuery()


        Catch ex As SqlException

        Finally
            IPConnection.Close()
           

        End Try


        grdInactive.DataSourceID = SqlDS_grdInactive.ID
        grdInactive.DataBind()

        RadGridProfiles.DataSourceID = SqlDS_Profiles.ID
        RadGridProfiles.DataBind()

        btnUpdateStatusActive.Enabled = "false"
        lblInactiveProfileName.Text = "Select a Profile at left to Update"

    End Sub


    Protected Sub RadTabStrip1_TabClick(sender As Object, e As Telerik.Web.UI.RadTabStripEventArgs) Handles RadTabStrip1.TabClick

        UserName2.DataSourceID = SqlDS_UserListNoProfile.ID
        UserName2.DataBind()

    End Sub
End Class
