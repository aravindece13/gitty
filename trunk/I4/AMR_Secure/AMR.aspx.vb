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

Partial Class AMR_Secure_AMR
    Inherits System.Web.UI.Page


    Protected Sub RadGridCustSearch_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadGridCustSearch.SelectedIndexChanged
        RadMultiPage2.Visible = "true"
        RadTabStrip2.Visible = "true"
        lblCustname.Visible = "true"
        lblRegion.Visible = "true"
        lblSalesPerson.Visible = "true"
        lblTier.Visible = "true"

        Dim CUSTKEY As String = RadGridCustSearch.SelectedValues("CUSTKEY").ToString

        Dim a As String = "openRadNewWindow(" + CUSTKEY + "); return false;"
        btnAddProject.OnClientClick = a.ToString



        If Page.IsPostBack Then

            Dim selectSQL As String
            selectSQL = "SELECT Custname,Slsrepname,Tier,Region,Custid,FixedBase,Radio,VXU,VGB,Touch,Direct,Mapping, "
            selectSQL &= "Omni,iPerl,wFlexNet,wVGB,wRadio,wOmni,wiPerl,wGas,wElec,Hurdle,CurrentSystem, "
            selectSQL &= "Competition,BillingSys,GasService,ElecService,DecMaker,Contact2,Contact3,Contact4,Contact5,Contact6, "
            selectSQL &= "DecMakPosition,Position2,Position3,Position4,Position5,Position6, "
            selectSQL &= "DecMakAttitude,Attitude2,Attitude3,Attitude4,Attitude5,Attitude6, "
            selectSQL &= "LrgMeterCnt15to2,LrgMeterCnt3to6,LrgMeterCnt8Plus, "
            selectSQL &= "LrgMeterType,LrgMeterMfr,SmlMeterCnt,SmlMeterAge,SmlMeterType,SmlMeterMfr "
            selectSQL &= "FROM aAcct_Customers WHERE CUSTKEY = " & CUSTKEY

            'Define the ADO.NET Connection Object
            Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
            Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
            Dim Reader As SqlDataReader

            Try
                InsiteConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                hdnCUSTKEY.Value = CUSTKEY.ToString()
                lblCustname.Text = "Customer: " + Reader("Custname")


                lblSalesPerson.Text = "Sales Person: " + Reader("Slsrepname")
                lblRegion.Text = "Region: " + Reader("Region")
                lblTier.Text = "Tier: " & Reader("Tier")
                Custname.Text = Reader("Custname")
                Tier.SelectedValue = Reader("Tier")
                Slsrepname.SelectedValue = Reader("Slsrepname")
                Region.SelectedValue = Reader("Region")
                Custid.Text = Reader("Custid")
                FixedBase.Checked = Reader("FixedBase")
                Radio.Checked = Reader("Radio")
                VXU.Checked = Reader("VXU")
                VGB.Checked = Reader("VGB")
                Touch.Checked = Reader("Touch")
                Direct.Checked = Reader("Direct")
                Mapping.Checked = Reader("Mapping")
                Omni.Checked = Reader("Omni")
                ElecService.Checked = Reader("ElecService")
                GasService.Checked = Reader("GasService")
                iPerl.Checked = Reader("iPerl")
                wFlexNet.Checked = Reader("wFlexNet")
                wVGB.Checked = Reader("wVGB")
                wRadio.Checked = Reader("wRadio")
                wOmni.Checked = Reader("wOmni")
                wiPerl.Checked = Reader("wiPerl")
                wElec.Checked = Reader("wElec")
                wGas.Checked = Reader("wGas")

                Hurdle.SelectedValue = Reader("Hurdle")
                CurrentSystem.SelectedValue = Reader("CurrentSystem")
                Competition.SelectedValue = Reader("Competition")
                BillingSys.Text = Reader("BillingSys")

                DecMaker.Text = Reader("DecMaker")
                Contact2.Text = Reader("Contact2")
                Contact3.Text = Reader("Contact3")
                Contact4.Text = Reader("Contact4")
                Contact5.Text = Reader("Contact5")
                Contact6.Text = Reader("Contact6")
                DecMakPosition.SelectedValue = Reader("DecMakPosition")
                Position2.SelectedValue = Reader("Position2")
                Position3.SelectedValue = Reader("Position3")
                Position4.SelectedValue = Reader("Position4")
                Position5.SelectedValue = Reader("Position5")
                Position6.SelectedValue = Reader("Position6")
                DecMakAttitude.SelectedValue = Reader("DecMakAttitude")
                Attitude2.SelectedValue = Reader("Attitude2")
                Attitude3.SelectedValue = Reader("Attitude3")
                Attitude4.SelectedValue = Reader("Attitude4")
                Attitude5.SelectedValue = Reader("Attitude5")
                Attitude6.SelectedValue = Reader("Attitude6")
                LrgMeterCnt15to2.Text = Reader("LrgMeterCnt15to2")
                LrgMeterCnt3to6.Text = Reader("LrgMeterCnt3to6")
                LrgMeterCnt8Plus.Text = Reader("LrgMeterCnt8Plus")
                SmlMeterCnt.Text = Reader("SmlMeterCnt")
                LrgMeterAge.SelectedValue = Reader("LrgMeterAge")
                LrgMeterMfr.SelectedValue = Reader("LrgMeterMfr")
                LrgMeterType.SelectedValue = Reader("LrgMeterType")
                SmlMeterAge.SelectedValue = Reader("SmlMeterAge")
                SmlMeterMfr.SelectedValue = Reader("SmlMeterMfr")
                SmlMeterType.SelectedValue = Reader("SmlMeterType")


                Author.Value = Request.Cookies("FullName").Value
                NoteDate.Value = DateTime.Now()

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                InsiteConnection.Close()

            End Try

        End If

    End Sub



    Protected Sub btnCustUpdate1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCustUpdate1.Click

        'Define ADO>NET objects

        Dim updateSQL As String
        updateSQL = "UPDATE aAcct_Customers SET Custname=@Custname,Tier=@Tier,Slsrepname=@Slsrepname,Region=@Region,Custid=@Custid,FixedBase=@FixedBase,"
        updateSQL &= "Radio=@Radio,VXU=@VXU,VGB=@VGB,Touch=@Touch,Direct=@Direct,Mapping=@Mapping,Omni=@Omni,iPerl=@iPerl,wFlexNet=@wFlexNet,wVGB=@wVGB, "
        updateSQL &= "wRadio=@wRadio,wOmni=@wOmni,wiPerl=@wiPerl,wElec=@wElec,wGas=@wGas,Hurdle=@Hurdle,CurrentSystem=@CurrentSystem, "
        updateSQL &= "Competition=@Competition,BillingSys=@BillingSys,GasService=@GasService,ElecService=@ElecService,DecMaker=@DecMaker, "
        updateSQL &= "Contact2=@Contact2,Contact3=@Contact3,Contact4=@Contact4,Contact5=@Contact5,Contact6=@Contact6,DecMakPosition=@DecMakPosition, "
        updateSQL &= "Position2=@Position2,Position3=@Position3,Position4=@Position4,Position5=@Position5,Position6=@Position6,DecMakAttitude=@DecMakAttitude, "
        updateSQL &= "Attitude2=@Attitude2,Attitude3=@Attitude3,Attitude4=@Attitude4,Attitude5=@Attitude5,Attitude6=@Attitude6, "
        updateSQL &= "LrgMeterCnt15to2=@LrgMeterCnt15to2,LrgMeterCnt3to6=@LrgMeterCnt3to6,LrgMeterCnt8Plus=@LrgMeterCnt8Plus, "
        updateSQL &= "SmlMeterCnt=@SmlMeterCnt,LrgMeterAge=@LrgMeterAge,LrgMeterType=@LrgMeterType,LrgMeterMfr=@LrgMeterMfr, "
        updateSQL &= "SmlMeterAge=@SmlMeterAge,SmlMeterMfr=@SmlMeterMfr,SmlMeterType=@SmlMeterType, "
        updateSQL &= "UpdatedDate=@NoteDate,UpdatedBy=@Author "
        updateSQL &= "WHERE CUSTKEY = @hdnCUSTKEY"



        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, InsiteConnection)
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("@hdnCUSTKEY", hdnCUSTKEY.Value)
        updateCmd.Parameters.AddWithValue("@Custname", Custname.Text)
        updateCmd.Parameters.AddWithValue("@Tier", Tier.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Region", Region.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Slsrepname", Slsrepname.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Custid", Custid.Text)
        updateCmd.Parameters.AddWithValue("@FixedBase", FixedBase.Checked)
        updateCmd.Parameters.AddWithValue("@Radio", Radio.Checked)
        updateCmd.Parameters.AddWithValue("@VXU", VXU.Checked)
        updateCmd.Parameters.AddWithValue("@VGB", VGB.Checked)
        updateCmd.Parameters.AddWithValue("@Touch", Touch.Checked)
        updateCmd.Parameters.AddWithValue("@Direct", Direct.Checked)
        updateCmd.Parameters.AddWithValue("@Mapping", Mapping.Checked)
        updateCmd.Parameters.AddWithValue("@Omni", Omni.Checked)
        updateCmd.Parameters.AddWithValue("@iPerl", iPerl.Checked)
        updateCmd.Parameters.AddWithValue("@GasService", GasService.Checked)
        updateCmd.Parameters.AddWithValue("@ElecService", ElecService.Checked)

        updateCmd.Parameters.AddWithValue("@wFlexNet", wFlexNet.Checked)
        updateCmd.Parameters.AddWithValue("@wVGB", wVGB.Checked)
        updateCmd.Parameters.AddWithValue("@wRadio", wRadio.Checked)
        updateCmd.Parameters.AddWithValue("@wOmni", wOmni.Checked)
        updateCmd.Parameters.AddWithValue("@wiPerl", wiPerl.Checked)
        updateCmd.Parameters.AddWithValue("@wGas", wGas.Checked)
        updateCmd.Parameters.AddWithValue("@wElec", wElec.Checked)

        updateCmd.Parameters.AddWithValue("@Hurdle", Hurdle.SelectedValue)
        updateCmd.Parameters.AddWithValue("@CurrentSystem", CurrentSystem.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Competition", Competition.SelectedValue)
        updateCmd.Parameters.AddWithValue("@BillingSys", BillingSys.Text)
        updateCmd.Parameters.AddWithValue("@DecMaker", DecMaker.Text)
        updateCmd.Parameters.AddWithValue("@Contact2", Contact2.Text)
        updateCmd.Parameters.AddWithValue("@Contact3", Contact3.Text)
        updateCmd.Parameters.AddWithValue("@Contact4", Contact4.Text)
        updateCmd.Parameters.AddWithValue("@Contact5", Contact5.Text)
        updateCmd.Parameters.AddWithValue("@Contact6", Contact6.Text)
        updateCmd.Parameters.AddWithValue("@DecMakPosition", DecMakPosition.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Position2", Position2.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Position3", Position3.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Position4", Position4.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Position5", Position5.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Position6", Position6.SelectedValue)
        updateCmd.Parameters.AddWithValue("@DecMakAttitude", DecMakAttitude.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Attitude2", Attitude2.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Attitude3", Attitude3.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Attitude4", Attitude4.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Attitude5", Attitude5.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Attitude6", Attitude6.SelectedValue)
        updateCmd.Parameters.AddWithValue("@LrgMeterCnt15to2", LrgMeterCnt15to2.Text)
        updateCmd.Parameters.AddWithValue("@LrgMeterCnt3to6", LrgMeterCnt3to6.Text)
        updateCmd.Parameters.AddWithValue("@LrgMeterCnt8Plus", LrgMeterCnt8Plus.Text)


        updateCmd.Parameters.AddWithValue("@SmlMeterCnt", SmlMeterCnt.Text)
        updateCmd.Parameters.AddWithValue("@LrgMeterAge", LrgMeterAge.SelectedValue)
        updateCmd.Parameters.AddWithValue("@LrgMeterType", LrgMeterType.SelectedValue)
        updateCmd.Parameters.AddWithValue("@LrgMeterMfr", LrgMeterMfr.SelectedValue)
        updateCmd.Parameters.AddWithValue("@SmlMeterAge", SmlMeterAge.SelectedValue)
        updateCmd.Parameters.AddWithValue("@SmlMeterType", SmlMeterType.SelectedValue)
        updateCmd.Parameters.AddWithValue("@SmlMeterMfr", SmlMeterMfr.SelectedValue)

        updateCmd.Parameters.AddWithValue("@NoteDate", NoteDate.Value)
        updateCmd.Parameters.AddWithValue("@Author", Author.Value)




        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
        End Try

        Try
            'Try to open the connection and execute the update
            InsiteConnection.Open()
            updated = updateCmd.ExecuteNonQuery()
            RadGridCustSearch.DataSourceID = SqlDS_CustSearch.ID
            RadGridCustSearch.DataBind()






        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try








    End Sub

    Protected Sub btnCustUpdate2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCustUpdate2.Click

        'Define ADO>NET objects

        Dim updateSQL As String
        updateSQL = "UPDATE aAcct_Customers SET DecMaker=@DecMaker, "
        updateSQL &= "Contact2=@Contact2,Contact3=@Contact3,Contact4=@Contact4,Contact5=@Contact5,Contact6=@Contact6,DecMakPosition=@DecMakPosition, "
        updateSQL &= "Position2=@Position2,Position3=@Position3,Position4=@Position4,Position5=@Position5,Position6=@Position6,DecMakAttitude=@DecMakAttitude, "
        updateSQL &= "Attitude2=@Attitude2,Attitude3=@Attitude3,Attitude4=@Attitude4,Attitude5=@Attitude5,Attitude6=@Attitude6, "
        updateSQL &= "UpdatedDate=@NoteDate,UpdatedBy=@Author "
        updateSQL &= "WHERE CUSTKEY = @hdnCUSTKEY"



        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim updateCmd2 As New SqlCommand(updateSQL, InsiteConnection)
        Dim updated2 As Integer = 0

        'Add the parameters
        updateCmd2.Parameters.AddWithValue("@hdnCUSTKEY", hdnCUSTKEY.Value)

        updateCmd2.Parameters.AddWithValue("@DecMaker", DecMaker.Text)
        updateCmd2.Parameters.AddWithValue("@Contact2", Contact2.Text)
        updateCmd2.Parameters.AddWithValue("@Contact3", Contact3.Text)
        updateCmd2.Parameters.AddWithValue("@Contact4", Contact4.Text)
        updateCmd2.Parameters.AddWithValue("@Contact5", Contact5.Text)
        updateCmd2.Parameters.AddWithValue("@Contact6", Contact6.Text)
        updateCmd2.Parameters.AddWithValue("@DecMakPosition", DecMakPosition.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Position2", Position2.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Position3", Position3.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Position4", Position4.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Position5", Position5.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Position6", Position6.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@DecMakAttitude", DecMakAttitude.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Attitude2", Attitude2.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Attitude3", Attitude3.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Attitude4", Attitude4.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Attitude5", Attitude5.SelectedValue)
        updateCmd2.Parameters.AddWithValue("@Attitude6", Attitude6.SelectedValue)

        updateCmd2.Parameters.AddWithValue("@NoteDate", NoteDate.Value)
        updateCmd2.Parameters.AddWithValue("@Author", Author.Value)




        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
        End Try

        Try
            'Try to open the connection and execute the update
            InsiteConnection.Open()
            updated2 = updateCmd2.ExecuteNonQuery()
            RadGridCustSearch.DataSourceID = SqlDS_CustSearch.ID
            RadGridCustSearch.DataBind()






        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try

    End Sub

    Protected Sub btnAddCustNote_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddCustNote.Click
        'Define ADO>NET objects

        Dim insertSQL As String
        insertSQL = "INSERT INTO aAcct_Notes ("
        insertSQL &= "CUSTKEY, AcctNote, Author, NoteDate )"
        insertSQL &= "VALUES ("
        insertSQL &= "@CUSTKEY, @AcctNote, @Author, @NoteDate )"



        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        Dim added As Integer = 0

        'Add the parameters
        insertCmd.Parameters.AddWithValue("@AcctNote", AcctNote.Text)
        insertCmd.Parameters.AddWithValue("@Author", Author.Value)
        insertCmd.Parameters.AddWithValue("@NoteDate", NoteDate.Value)
        insertCmd.Parameters.AddWithValue("@CUSTKEY", hdnCUSTKEY.Value)


        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
        End Try

        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid
            InsiteConnection.Open()
            added = insertCmd.ExecuteNonQuery()
            RadGridCustNotes.DataSourceID = SqlDS_CustNotes.ID
            RadGridCustNotes.DataBind()
            AcctNote.Text = ""


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try



    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        newCreatedBy.Value = Request.Cookies("FullName").Value
        newCreatedDate.Value = DateTime.Now()
        Author.Value = Request.Cookies("FullName").Value
        NoteDate.Value = DateTime.Now()


        If Page.IsPostBack = "true" Then
            RadMultiPage2.Visible = "true"
            RadTabStrip2.Visible = "true"
            lblRegion.Visible = "true"
            lblSalesPerson.Visible = "true"
            lblTier.Visible = "true"
        Else
            RadMultiPage2.Visible = "false"
            RadTabStrip2.Visible = "true"
            lblCustname.Text = "Select a row above to see customer detail below"
            lblRegion.Visible = "false"
            lblSalesPerson.Visible = "false"
            lblTier.Visible = "false"
        End If





    End Sub

    'Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
    '    If RadGridCustSearch.SelectedIndexes.Count = 0 Then
    '        RadGridCustSearch.SelectedIndexes.Add(0)

    '    End If
    'End Sub

    Protected Sub btnAddCustomer_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddCustomer.Click
        'Define ADO>NET objects

        newCreatedBy.Value = Request.Cookies("FullName").Value
        newCreatedDate.Value = DateTime.Now()


        Dim insertCustSQL As String
        insertCustSQL = "INSERT INTO aAcct_Customers ("
        insertCustSQL &= "Custname,Custid,Slsrepname,Region,Tier,CreatedDate,CreatedBy,UpdatedDate,UpdatedBy,"
        insertCustSQL &= "wOmni,wiPerl,wFlexNet,wVGB,wRadio,wGas,wElec,GasService,ElecService,Omni,iPerl,Radio,"
        insertCustSQL &= "VXU,VGB,Touch,Direct,Mapping,FixedBase,Handhelds,Hurdle,CurrentSystem,Competition,BillingSys,DecMaker,Contact2,Contact3,Contact4,Contact5,Contact6,"
        insertCustSQL &= "DecMakPosition,Position2,Position3,Position4,Position5,Position6,DecMakAttitude,Attitude2,Attitude3,Attitude4,Attitude5,Attitude6, "
        insertCustSQL &= "LrgMeterCnt15to2,LrgMeterCnt3to6,LrgMeterCnt8Plus, "
        insertCustSQL &= "LrgMeterType,LrgMeterMfr,SmlMeterCnt,SmlMeterAge,SmlMeterType,SmlMeterMfr )"
        insertCustSQL &= "VALUES ("
        insertCustSQL &= "@newCustname,@newCustid,@newSlsrepname,@newRegion,@newTier,@newCreatedDate,@newCreatedBy,@newCreatedDate,@newCreatedBy,"
        insertCustSQL &= "0,0,0,0,0,0,0,0,0,0,0,0,"
        insertCustSQL &= "0,0,0,0,0,0,0,'-','-','-','-','-','-','-','-','-','-', "
        insertCustSQL &= "'-','-','-','-','-','-','-','-','-','-','-','-', "
        insertCustSQL &= "0,0,0, "
        insertCustSQL &= "'-','-',0,'-','-','-' )"


        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim insertCustCmd As New SqlCommand(insertCustSQL, InsiteConnection)
        Dim added As Integer = 0

        'Add the parameters
        insertCustCmd.Parameters.AddWithValue("@newCustname", newCustName.Text)
        insertCustCmd.Parameters.AddWithValue("@newCustid", newCustID.Text)
        insertCustCmd.Parameters.AddWithValue("@newRegion", newRegion.SelectedValue)
        insertCustCmd.Parameters.AddWithValue("@newSlsrepname", newSlsrepname.SelectedValue)
        insertCustCmd.Parameters.AddWithValue("@newTier", newTier.SelectedValue)

        insertCustCmd.Parameters.AddWithValue("@newCreatedBy", newCreatedBy.Value)
        insertCustCmd.Parameters.AddWithValue("@newCreatedDate", newCreatedDate.Value)


        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
        End Try

        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid
            InsiteConnection.Open()
            added = insertCustCmd.ExecuteNonQuery()
            grdRecentlyAddedCustomers.DataSourceID = SqlDS_NewCustomers.ID
            grdRecentlyAddedCustomers.DataBind()
            newCustName.Text = ""
            newCustID.Text = ""
            newSlsrepname.SelectedValue = "-"
            newRegion.SelectedValue = "-"
            newTier.SelectedValue = "3"


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try



    End Sub

End Class
