Imports System
'Imports System.Data
'Imports System.Data.Sql
Imports System.Data.SqlClient
'Imports System.Data.OleDb
'Imports System.Collections
'Imports System.Resources
'Imports System.ComponentModel
'Imports System.Drawing
'Imports System.Web.SessionState
'Imports System.Web.UI.WebControls
'Imports System.Web.UI.HtmlControls
'Imports Telerik.Web.UI
'Imports Telerik.Web
'Imports System.IO
'Imports System.Configuration
'Imports System.Web.Security
'Imports System.Web.UI.WebControls.WebParts
Imports System.Web.Configuration
'Imports System.Net.Mail

Partial Class Controls_form_EmployeeData
    Inherits System.Web.UI.UserControl

    Protected Sub States_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles States.TabClick

        SqlDS_Employees.SelectParameters("branchno").DefaultValue = e.Tab.Value
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Panel1.Enabled = "False"
        Panel2.Enabled = "False"

        Nstartdt.SelectedDate = DateTime.Now()

        If IsPostBack = "false" Then
            lblEmployeeName.Text = "Select an employee at left to edit"
            lblExEmployee.Text = "Select an ex-employee at left to edit"
        End If


    End Sub

    Protected Sub GrdCurrentEmployees_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GrdCurrentEmployees.SelectedIndexChanged

        Panel1.Enabled = "True"


        If Page.IsPostBack Then

            Dim selectSQL As String
            selectSQL = "SELECT * "
            selectSQL &= "FROM HR_Employees "
            selectSQL &= "WHERE employeeid = " & GrdCurrentEmployees.SelectedValue


            'Define the ADO.NET Connection Object
            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, DKConnection)
            Dim Reader As SqlDataReader

            Try
                DKConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                hdnemployeeid.Value = Reader("employeeid")
                hdnlastedit.Value = DateTime.Now()
                hdnslsrepid.Value = ""

                lblEmployeeName.Text = "Employee Update: " + Reader("name_first") + " " + Reader("name_last")
                name_first.Text = Reader("name_first")
                name_last.Text = Reader("name_last")
                Branchno.SelectedValue = Reader("branchno")
                email.Text = Reader("email")
                mobile.Text = Reader("mobile")
                jobtitle.Text = Reader("title")
                extension.Text = Reader("extension")
                fax.Text = Reader("fax")
                street.Text = Reader("street")
                city.Text = Reader("city")
                zip.Text = Reader("zip")
                hometele.Text = Reader("hometele")
                notes.Text = Reader("notes")

                Status.SelectedValue = Reader("status")
                dept.SelectedValue = Reader("dept")
                State.SelectedValue = Reader("State")
                Bmonth.SelectedValue = Reader("Bmonth")
                Bday.SelectedValue = Reader("Bday")
                ShowBday.Checked = Reader("ShowBday")
                ShowAnniv.Checked = Reader("ShowAnniv")

                startdt.SelectedDate = Reader("startdt")
                termdt.SelectedDate = Reader("termdt")
                If termdt.SelectedDate = "1/1/1950" Then
                    termdt.Clear()
                End If

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If

    End Sub

    Protected Sub btnUpdateEmployee_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateEmployee.Click


        If termdt.SelectedDate Is Nothing Then
            termdt.SelectedDate = "1/1/1950"
        End If

        'Define ADO>NET objects

        Dim updateSQL As String
        updateSQL = "UPDATE HR_Employees SET name_first=@name_first,name_last=@name_last,startdt=@startdt,termdt=@termdt,dept=@dept,slsrepid=@slsrepid,"
        updateSQL &= "status=@status,email=@email,mobile=@mobile,extension=@extension,fax=@fax,street=@street,city=@city,state=@state,zip=@zip,"
        updateSQL &= "hometele=@hometele,bday=@bday,bmonth=@bmonth,notes=@notes,lastedit=@lastedit,title=@title,branchno=@branchno, showbday=@showbday, showanniv=@showanniv "
        updateSQL &= "WHERE employeeid = @hdnemployeeid"



        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, DKConnection)
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("@hdnemployeeid", hdnemployeeid.Value)
        updateCmd.Parameters.AddWithValue("@lastedit", hdnlastedit.Value)
        updateCmd.Parameters.AddWithValue("@slsrepid", hdnslsrepid.Value)

        updateCmd.Parameters.AddWithValue("@name_first", name_first.Text)
        updateCmd.Parameters.AddWithValue("@name_last", name_last.Text)
        updateCmd.Parameters.AddWithValue("@startdt", startdt.SelectedDate)
        updateCmd.Parameters.AddWithValue("@termdt", termdt.SelectedDate)
        updateCmd.Parameters.AddWithValue("@dept", dept.SelectedValue)
        updateCmd.Parameters.AddWithValue("@status", Status.SelectedValue)

        updateCmd.Parameters.AddWithValue("@email", email.Text)
        updateCmd.Parameters.AddWithValue("@mobile", mobile.Text)
        updateCmd.Parameters.AddWithValue("@extension", extension.Text)
        updateCmd.Parameters.AddWithValue("@fax", fax.Text)
        updateCmd.Parameters.AddWithValue("@street", street.Text)
        updateCmd.Parameters.AddWithValue("@city", city.Text)

        updateCmd.Parameters.AddWithValue("@state", State.SelectedValue)
        updateCmd.Parameters.AddWithValue("@zip", zip.Text)
        updateCmd.Parameters.AddWithValue("@hometele", hometele.Text)
        updateCmd.Parameters.AddWithValue("@bday", Bday.SelectedValue)
        updateCmd.Parameters.AddWithValue("@bmonth", Bmonth.SelectedValue)
        updateCmd.Parameters.AddWithValue("@notes", notes.Text)

        updateCmd.Parameters.AddWithValue("@title", jobtitle.Text)
        updateCmd.Parameters.AddWithValue("@branchno", Branchno.SelectedValue)

        updateCmd.Parameters.AddWithValue("@ShowBday", ShowBday.Checked)
        updateCmd.Parameters.AddWithValue("@ShowAnniv", ShowAnniv.Checked)


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()
            GrdCurrentEmployees.DataSourceID = SqlDS_Employees.ID
            GrdCurrentEmployees.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

    Protected Sub btnUpdatePastEmployee_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdatePastEmployee.Click


        If termdt.SelectedDate Is Nothing Then
            termdt.SelectedDate = "1/1/1950"
        End If

        'Define ADO>NET objects

        Dim updateSQL As String
        updateSQL = "UPDATE HR_Employees SET name_first=@name_first,name_last=@name_last,startdt=@startdt,termdt=@termdt,dept=@dept,"
        updateSQL &= "status=@status,email=@email,mobile=@mobile,extension=@extension,fax=@fax,street=@street,city=@city,state=@state,zip=@zip,"
        updateSQL &= "hometele=@hometele,bday=@bday,bmonth=@bmonth,notes=@notes,title=@title,branchno=@branchno "
        updateSQL &= "WHERE employeeid = @hdnemployeeid"



        'Define the ADO.NET Connection Object
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, DKConnection)
        Dim updated As Integer = 0

        'Add the parameters
        updateCmd.Parameters.AddWithValue("@hdnemployeeid", Pemployeeid.Value)


        updateCmd.Parameters.AddWithValue("@name_first", Pname_first.Text)
        updateCmd.Parameters.AddWithValue("@name_last", Pname_last.Text)
        updateCmd.Parameters.AddWithValue("@startdt", Pstartdt.SelectedDate)
        updateCmd.Parameters.AddWithValue("@termdt", Ptermdt.SelectedDate)
        updateCmd.Parameters.AddWithValue("@dept", Pdept.SelectedValue)
        updateCmd.Parameters.AddWithValue("@status", Pstatus.SelectedValue)

        updateCmd.Parameters.AddWithValue("@email", Pemail.Text)
        updateCmd.Parameters.AddWithValue("@mobile", PMobile.Text)
        updateCmd.Parameters.AddWithValue("@extension", Pextension.Text)
        updateCmd.Parameters.AddWithValue("@fax", PFax.Text)
        updateCmd.Parameters.AddWithValue("@street", PStreet.Text)
        updateCmd.Parameters.AddWithValue("@city", PCity.Text)

        updateCmd.Parameters.AddWithValue("@state", PState.SelectedValue)
        updateCmd.Parameters.AddWithValue("@zip", PZip.Text)
        updateCmd.Parameters.AddWithValue("@hometele", PHometele.Text)
        updateCmd.Parameters.AddWithValue("@bday", PBDay.SelectedValue)
        updateCmd.Parameters.AddWithValue("@bmonth", PBMonth.SelectedValue)
        updateCmd.Parameters.AddWithValue("@notes", PNotes.Text)

        updateCmd.Parameters.AddWithValue("@title", Pjobtitle.Text)
        updateCmd.Parameters.AddWithValue("@branchno", PBranchno.SelectedValue)


        Try
            'Try to open the connection and execute the update
            DKConnection.Open()
            updated = updateCmd.ExecuteNonQuery()
            GrdPastEmployees.DataSourceID = SqlDS_PastEmployees.ID
            GrdPastEmployees.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try



    End Sub

    Protected Sub GrdPastEmployees_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GrdPastEmployees.SelectedIndexChanged

        Panel2.Enabled = "True"


        If Page.IsPostBack Then

            Dim selectSQL As String
            selectSQL = "SELECT * "
            selectSQL &= "FROM HR_Employees "
            selectSQL &= "WHERE employeeid = " & GrdPastEmployees.SelectedValue


            'Define the ADO.NET Connection Object
            Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection As New SqlConnection(DKConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, DKConnection)
            Dim Reader As SqlDataReader

            Try
                DKConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()

                Pemployeeid.Value = Reader("employeeid")


                lblExEmployee.Text = "Ex-Employee Update: " + Reader("name_first") + " " + Reader("name_last")
                Pname_first.Text = Reader("name_first")
                Pname_last.Text = Reader("name_last")
                PBranchno.SelectedValue = Reader("branchno")
                Pemail.Text = Reader("email")
                PMobile.Text = Reader("mobile")
                Pjobtitle.Text = Reader("title")
                Pextension.Text = Reader("extension")
                PFax.Text = Reader("fax")
                PStreet.Text = Reader("street")
                PCity.Text = Reader("city")
                PZip.Text = Reader("zip")
                PHometele.Text = Reader("hometele")
                PNotes.Text = Reader("notes")

                Pstatus.SelectedValue = Reader("status")
                Pdept.SelectedValue = Reader("dept")
                PState.SelectedValue = Reader("State")
                PBMonth.SelectedValue = Reader("Bmonth")
                PBDay.SelectedValue = Reader("Bday")

                Pstartdt.SelectedDate = Reader("startdt")
                Ptermdt.SelectedDate = Reader("termdt")
                If Ptermdt.SelectedDate = "1/1/1950" Then
                    Ptermdt.Clear()
                End If

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                DKConnection.Close()

            End Try

        End If

    End Sub


    Protected Sub PStateTabStrip_TabClick(ByVal sender As Object, ByVal e As Telerik.Web.UI.RadTabStripEventArgs) Handles PStateTabStrip.TabClick
        SqlDS_PastEmployees.SelectParameters("branchno").DefaultValue = e.Tab.Value
    End Sub

    Protected Sub btnAddEmployee_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddEmployee.Click

        'Set values for hidden fields
        Nhdnlastedit.Value = DateTime.Now()

        'Insert new vehicle data


        Dim insertEmployeeSQL As String
        insertEmployeeSQL = "INSERT INTO HR_Employees (name_first,name_last,branchno,startdt,termdt,"
        insertEmployeeSQL &= "dept,slsrepid,status,email,mobile,extension,fax,street,city,state,zip,"
        insertEmployeeSQL &= "hometele,bday,bmonth,notes,lastedit,title"
        insertEmployeeSQL &= " ) "
        insertEmployeeSQL &= "VALUES ("
        insertEmployeeSQL &= "@name_first, @name_last, @branchno, @startdt,@termdt, "
        insertEmployeeSQL &= "@dept,@slsrepid,@status,@email,@mobile,@extension,@fax,@street,@city,@state,@zip,"
        insertEmployeeSQL &= "@hometele,@bday,@bmonth,@notes,@lastedit,@title )"



        'Reset field data
        Dim DKConnectionString As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
        Dim DKConnection As New SqlConnection(DKConnectionString)

        Dim insertEmployeeCmd As New SqlCommand(insertEmployeeSQL, DKConnection)
        Dim added As Integer = 0

        'Add the parameters
        insertEmployeeCmd.Parameters.AddWithValue("@name_first", nname_first.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@name_last", nname_last.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@branchno", nBranchno.SelectedValue)
        insertEmployeeCmd.Parameters.AddWithValue("@startdt", nstartdt.SelectedDate)
        insertEmployeeCmd.Parameters.AddWithValue("@termdt", Nhdntermdt.Value)

        insertEmployeeCmd.Parameters.AddWithValue("@dept", ndept.SelectedValue)
        insertEmployeeCmd.Parameters.AddWithValue("@slsrepid", NhdnSlsrepid.Value)
        insertEmployeeCmd.Parameters.AddWithValue("@status", NhdnStatus.Value)
        insertEmployeeCmd.Parameters.AddWithValue("@email", nemail.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@mobile", nmobile.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@extension", nextension.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@fax", nfax.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@street", nstreet.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@city", ncity.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@state", nState.SelectedValue)
        insertEmployeeCmd.Parameters.AddWithValue("@zip", nzip.Text)

        insertEmployeeCmd.Parameters.AddWithValue("@hometele", nhometele.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@bday", nBday.SelectedValue)
        insertEmployeeCmd.Parameters.AddWithValue("@bmonth", nBmonth.SelectedValue)
        insertEmployeeCmd.Parameters.AddWithValue("@notes", nnotes.Text)
        insertEmployeeCmd.Parameters.AddWithValue("@lastedit", Nhdnlastedit.Value)
        insertEmployeeCmd.Parameters.AddWithValue("@title", njobtitle.Text)




        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid

            DKConnection.Open()
            added = insertEmployeeCmd.ExecuteNonQuery()
            GrdCurrentEmployees.DataSourceID = SqlDS_Employees.ID
            GrdCurrentEmployees.DataBind()


            nname_first.Text = ""
            nname_last.Text = ""
            nstartdt.SelectedDate = DateTime.Now()
            nemail.Text = ""
            nmobile.Text = ""
            nextension.Text = ""
            nfax.Text = ""
            nstreet.Text = ""
            ncity.Text = ""
            nzip.Text = ""
            nhometele.Text = ""
            nBday.ClearSelection()
            nBmonth.ClearSelection()
            nnotes.Text = ""
            njobtitle.Text = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            DKConnection.Close()

        End Try

    End Sub

End Class
