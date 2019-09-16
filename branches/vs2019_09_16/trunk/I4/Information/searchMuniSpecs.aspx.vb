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



Partial Class Information_searchMuniSpecs
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        pnlProfile.Enabled = "false"
        pnlContacts.Enabled = "false"
        pnlMisc.Enabled = "false"
        pnlServices.Enabled = "false"
        pnlSewer.Enabled = "false"
        pnlStormDrain.Enabled = "false"
        pnlWater.Enabled = "false"

        'RadAjaxPanelSpecHeader.Visible = "false"
        'SpecBodyTab.Visible = "false"


        If Page.IsPostBack Then

            'RadAjaxPanelSpecHeader.Visible = "True"
            'SpecBodyTab.Visible = "True"


        End If

        If Not (Page.IsPostBack) Then
            States.SelectedIndex = 0

            SqlDS_SpecList.SelectParameters("state2").DefaultValue = States.SelectedValue()

        End If
    End Sub

    Protected Sub States_SelectedIndexChanged(sender As Object, e As Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs) Handles States.SelectedIndexChanged
        SqlDS_SpecList.SelectParameters("State2").DefaultValue = States.SelectedValue()

    End Sub



    Protected Sub grdCustList_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdCustList.SelectedIndexChanged
       

        pnlProfile.Enabled = "true"
        pnlContacts.Enabled = "true"
        pnlMisc.Enabled = "true"
        pnlServices.Enabled = "true"
        pnlSewer.Enabled = "true"
        pnlStormDrain.Enabled = "true"
        pnlWater.Enabled = "true"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim menuCMD As SqlCommand = New SqlCommand("uspMuniSpecGet", DKConnection)
        menuCMD.CommandType = CommandType.StoredProcedure
        menuCMD.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()



        Try
            DKConnection.Open()

            Dim result As Integer = menuCMD.ExecuteNonQuery()
            Dim myReader As SqlDataReader = menuCMD.ExecuteReader()
            myReader.Read()

            lblCustName.Text = "Specification: " + myReader("Custname") + " | " + myReader("custid")
            lblAcctOwner.Text = "Account Owner: " + myReader("acctowner") + "   "
            lblLastEdit.Text = "Last Edit: " + myReader("lastedit").ToString

            hdnCustName.Value = myReader("CustName")
            acctowner.Text = myReader("acctowner")
            custname.Text = myReader("custname")
            custid.Text = myReader("custid")
            State2.SelectedValue = myReader("state2")
            editlink1.Text = myReader("link1")
            editlink2.Text = myReader("link2")
            link1.Text = myReader("link1label")
            link1.NavigateUrl = myReader("link1")
            link2.Text = myReader("link2label")
            link2.NavigateUrl = myReader("link2")
            editlink1label.Text = myReader("link1label")
            editlink2label.Text = myReader("link2label")
            notes.Text = myReader("notes")
            name1.Text = myReader("name1")
            name2.Text = myReader("name2")
            name3.Text = myReader("name3")
            title1.Text = myReader("title1")
            title2.Text = myReader("title2")
            title3.Text = myReader("title3")
            phone1.Text = myReader("phone1")
            phone2.Text = myReader("phone2")
            phone3.Text = myReader("phone3")
            mobile1.Text = myReader("mobile1")
            mobile2.Text = myReader("mobile2")
            mobile3.Text = myReader("mobile3")
            eMail1.Text = myReader("email1")
            email2.Text = myReader("email2")
            email3.Text = myReader("email3")
            dip.Text = myReader("dip")
            pvcwater.Text = myReader("pvcwater")
            Polywrap.Text = myReader("polywrap")
            TapSleeve.Text = myReader("tapsleeve")
            TracerWarn.Text = myReader("tracerwarn")
            MJFit.Text = myReader("mjfit")
            DIPFitRest.Text = myReader("dipfitrest")
            PVCFitRest.Text = myReader("pvcfitrest")
            ValveGate.Text = myReader("valvegate")
            ValveBox.Text = myReader("valvebox")
            DebrisCap.Text = myReader("debriscap")
            Hydrant.Text = myReader("hydrant")
            TapSadDIP.Text = myReader("tapsaddip")
            TapSadPVC.Text = myReader("tapsadpvc")
            CurbStopBox.Text = myReader("curbstopbox")
            MeterBox.Text = myReader("meterbox")
            MeterPit.Text = myReader("meterpit")
            MeterCover.Text = myReader("metercover")
            CorpStop.Text = myReader("corpstop")
            AngleValve.Text = myReader("anglevalve")
            CopperSetter.Text = myReader("coppersetter")
            CustomSetter.Text = myReader("customsetter")
            Meter.Text = myReader("meter")
            DIPSewer.Text = myReader("dipsewer")
            PVCSewer.Text = myReader("pvcsewer")
            ClaySewer.Text = myReader("claysewer")
            TracerWarnSewer.Text = myReader("tracerwarnsewer")
            Underdrain.Text = myReader("underdrain")
            DIPFitSewer.Text = myReader("dipfitsewer")
            PVCFitSewer.Text = myReader("pvcfitsewer")
            ClayFitSewer.Text = myReader("clayfitsewer")
            HDPEDrainPipe.Text = myReader("hdpedrainpipe")
            HDPEDrainFit.Text = myReader("hdpedrainfit")
            misc1.Text = myReader("misc1")
            misc2.Text = myReader("misc2")
            misc3.Text = myReader("misc3")
            misc4.Text = myReader("misc4")
            misc5.Text = myReader("misc5")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        'End If

    End Sub

    Protected Sub btnUpdateContacts_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateContacts.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As SqlCommand = New SqlCommand("uspMuniSpecContactsUpdate", DKConnection)
        updateCmd.CommandType = CommandType.StoredProcedure
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()
        updateCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        updateCmd.Parameters.AddWithValue("@name1", name1.Text)
        updateCmd.Parameters.AddWithValue("@name2", name2.Text)
        updateCmd.Parameters.AddWithValue("@name3", name3.Text)
        updateCmd.Parameters.AddWithValue("@title1", title1.Text)
        updateCmd.Parameters.AddWithValue("@title2", title2.Text)
        updateCmd.Parameters.AddWithValue("@title3", title3.Text)
        updateCmd.Parameters.AddWithValue("@email1", eMail1.Text)
        updateCmd.Parameters.AddWithValue("@email2", email2.Text)
        updateCmd.Parameters.AddWithValue("@email3", email3.Text)
        updateCmd.Parameters.AddWithValue("@mobile1", mobile1.Text)
        updateCmd.Parameters.AddWithValue("@mobile2", mobile2.Text)
        updateCmd.Parameters.AddWithValue("@mobile3", mobile3.Text)
        updateCmd.Parameters.AddWithValue("@phone1", phone1.Text)
        updateCmd.Parameters.AddWithValue("@phone2", phone2.Text)
        updateCmd.Parameters.AddWithValue("@phone3", phone3.Text)



        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try



    End Sub

    Protected Sub btnUpdateCustProfile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateCustProfile.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As SqlCommand = New SqlCommand("uspMuniSpecCustProfileUpdate", DKConnection)
        updateCmd.CommandType = CommandType.StoredProcedure
        Dim updated As Integer = 0
        updateCmd.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()

        'Add the parameters

        updateCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        updateCmd.Parameters.AddWithValue("@CustName", custname.Text)
        updateCmd.Parameters.AddWithValue("@CustID", custid.Text)
        updateCmd.Parameters.AddWithValue("@AcctOwner", acctowner.Text)
        'updateCmd.Parameters.AddWithValue("@State", State2.SelectedItem)
        updateCmd.Parameters.AddWithValue("@State", State2.SelectedItem.ToString())
        updateCmd.Parameters.AddWithValue("@State2", State2.SelectedValue)
        updateCmd.Parameters.AddWithValue("@link1", editlink1.Text)
        updateCmd.Parameters.AddWithValue("@link2", editlink2.Text)
        updateCmd.Parameters.AddWithValue("@link1label", editlink1label.Text)
        updateCmd.Parameters.AddWithValue("@link2label", editlink2label.Text)
        updateCmd.Parameters.AddWithValue("@Notes", notes.Text)
        
        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

        grdCustList.DataSourceID = SqlDS_SpecList.ID
        grdCustList.DataBind()

        link1.NavigateUrl = editlink1.Text
        link1.Text = editlink1label.Text
        link2.NavigateUrl = editlink2.Text
        link2.Text = editlink2label.Text

    End Sub

    Protected Sub btnUpdateMisc_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateMisc.Click
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As SqlCommand = New SqlCommand("uspMuniSpecMiscUpdate", DKConnection)
        updateCmd.CommandType = CommandType.StoredProcedure
        Dim updated As Integer = 0


        'Add the parameters
        updateCmd.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()
        updateCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        updateCmd.Parameters.AddWithValue("@misc1", misc1.Text)
        updateCmd.Parameters.AddWithValue("@misc2", misc2.Text)
        updateCmd.Parameters.AddWithValue("@misc3", misc3.Text)
        updateCmd.Parameters.AddWithValue("@misc4", misc4.Text)
        updateCmd.Parameters.AddWithValue("@misc5", misc5.Text)

        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub btnUpdateServices_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateServices.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As SqlCommand = New SqlCommand("uspMuniSpecServicesUpdate", DKConnection)
        updateCmd.CommandType = CommandType.StoredProcedure
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()
        updateCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        updateCmd.Parameters.AddWithValue("@TapSadDIP", TapSadDIP.Text)
        updateCmd.Parameters.AddWithValue("@TapSadPVC", TapSadPVC.Text)
        updateCmd.Parameters.AddWithValue("@CurbStopBox", CurbStopBox.Text)
        updateCmd.Parameters.AddWithValue("@MeterBox", MeterBox.Text)
        updateCmd.Parameters.AddWithValue("@MeterPit", MeterPit.Text)
        updateCmd.Parameters.AddWithValue("@MeterCover", MeterCover.Text)
        updateCmd.Parameters.AddWithValue("@CorpStop", CorpStop.Text)
        updateCmd.Parameters.AddWithValue("@AngleValve", AngleValve.Text)
        updateCmd.Parameters.AddWithValue("@CopperSetter", CopperSetter.Text)
        updateCmd.Parameters.AddWithValue("@CustomSetter", CustomSetter.Text)
        updateCmd.Parameters.AddWithValue("@Meter", Meter.Text)

        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub btnUpdateSewer_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateSewer.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As SqlCommand = New SqlCommand("uspMuniSpecSewerUpdate", DKConnection)
        updateCmd.CommandType = CommandType.StoredProcedure
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()
        updateCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        updateCmd.Parameters.AddWithValue("@DIPSewer", DIPSewer.Text)
        updateCmd.Parameters.AddWithValue("@PVCSewer", PVCSewer.Text)
        updateCmd.Parameters.AddWithValue("@ClaySewer", ClaySewer.Text)
        updateCmd.Parameters.AddWithValue("@TracerWarnSewer", TracerWarnSewer.Text)
        updateCmd.Parameters.AddWithValue("@UnderDrain", Underdrain.Text)
        updateCmd.Parameters.AddWithValue("@DIPFitSewer", DIPFitSewer.Text)
        updateCmd.Parameters.AddWithValue("@PVCFitSewer", PVCFitSewer.Text)
        updateCmd.Parameters.AddWithValue("@ClayFitSewer", ClayFitSewer.Text)

        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub btnUpdateStormDrain_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateStormDrain.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As SqlCommand = New SqlCommand("uspMuniSpecStormDrainUpdate", DKConnection)
        updateCmd.CommandType = CommandType.StoredProcedure
        Dim updated As Integer = 0


        'Add the parameters
        updateCmd.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()
        updateCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        updateCmd.Parameters.AddWithValue("@HDPEDrainPipe", HDPEDrainPipe.Text)
        updateCmd.Parameters.AddWithValue("@HDPEDrainFit", HDPEDrainFit.Text)

        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try


    End Sub

    Protected Sub btnUpdateWater_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateWater.Click

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As SqlCommand = New SqlCommand("uspMuniSpecWaterUpdate", DKConnection)
        updateCmd.CommandType = CommandType.StoredProcedure
        Dim updated As Integer = 0


        'Add the parameters
        updateCmd.Parameters.Add("@SpecID", SqlDbType.Int).Value = grdCustList.SelectedValues("SpecID").ToString()
        updateCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        updateCmd.Parameters.AddWithValue("@DIP", dip.Text)
        updateCmd.Parameters.AddWithValue("@PVCWater", pvcwater.Text)
        updateCmd.Parameters.AddWithValue("@PolyWrap", Polywrap.Text)
        updateCmd.Parameters.AddWithValue("@TapSleeve", TapSleeve.Text)
        updateCmd.Parameters.AddWithValue("@TracerWarn", TracerWarn.Text)
        updateCmd.Parameters.AddWithValue("@MJFit", MJFit.Text)
        updateCmd.Parameters.AddWithValue("@DIPFitRest", DIPFitRest.Text)
        updateCmd.Parameters.AddWithValue("@PVCFitRest", PVCFitRest.Text)
        updateCmd.Parameters.AddWithValue("@ValveGate", ValveGate.Text)
        updateCmd.Parameters.AddWithValue("@ValveBox", ValveBox.Text)
        updateCmd.Parameters.AddWithValue("@DebrisCap", DebrisCap.Text)
        updateCmd.Parameters.AddWithValue("@Hydrant", Hydrant.Text)


        Try
            'Try to open the connection and execute the insert and update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    Protected Sub btnAddSpecSheet_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddSpecSheet.Click

        'Dim insertSQL As String
        'insertSQL = "INSERT INTO aMuniSpec ("
        'insertSQL &= "CustID,CustName,State,AcctOwner )"
        'insertSQL &= "VALUES ("
        'insertSQL &= "@CustID,@CustName,@State,@AcctOwner)"

        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertCmd As SqlCommand = New SqlCommand("uspMuniSpecInsert", DKConnection)
        insertCmd.CommandType = CommandType.StoredProcedure
        Dim added As Integer = 0


        ''Define the ADO.NET Connection Object
        'Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        'Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        'Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        'Dim added As Integer = 0

        'Add the parameters
        insertCmd.Parameters.AddWithValue("@LastEdit", System.DateTime.Now().ToString)
        insertCmd.Parameters.AddWithValue("@CustID", addCustID.Text)
        insertCmd.Parameters.AddWithValue("@CustName", addCustName.Text)
        insertCmd.Parameters.AddWithValue("@AcctOwner", addAcctOwner.Text)
        insertCmd.Parameters.AddWithValue("@State", AddState.SelectedItem.ToString())
        insertCmd.Parameters.AddWithValue("@State2", AddState.SelectedValue)




        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid
            DKConnection.Open()
            added = insertCmd.ExecuteNonQuery()
            grdCustList.DataSourceID = SqlDS_SpecList.ID
            grdCustList.DataBind()
            addCustID.Text = ""
            addCustName.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub


End Class
