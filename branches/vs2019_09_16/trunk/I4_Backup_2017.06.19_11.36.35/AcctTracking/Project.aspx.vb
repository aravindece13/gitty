Imports System
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.OleDb
Imports System.EventArgs
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

Partial Class AcctTracking_Project
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim ProjectIndex As String = Request.QueryString("ProjectIndex").ToString

        lblFeedbackHistory.Text = "Comments"


        If Page.IsPostBack = "false" Then

            'Dim ProjectIndex As String = Request.QueryString("ProjectIndex").ToString

            hdnProjectIndex.Value = Request.QueryString("ProjectIndex").ToString

            ModifiedBy.Value = Request.Cookies("FullName").Value
            ModifiedDate.Value = DateTime.Now()
            CreatedBy.Value = Request.Cookies("FullName").Value
            CreatedDate.Value = DateTime.Now()


            Dim selectSQL As String
            selectSQL = "SELECT P.ProjectIndex, C.Custname,P.CUSTKEY,P.Status,P.Product,P.Desc1,P.SaleEst,P.Month,P.Year "
            selectSQL &= "FROM aAcct_Customers_Projects P JOIN aAcct_Customers C ON P.CUSTKEY=C.CUSTKEY "
            selectSQL &= "WHERE ProjectIndex=" + ProjectIndex

            'Define the ADO.NET Connection Object
            Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
            Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
            Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
            Dim Reader As SqlDataReader

            Try
                InsiteConnection.Open()
                Reader = selectCmd.ExecuteReader()
                Reader.Read()


                lblCustomer.Text = Reader("Product") + " for " + Reader("Custname")
                hdnCUSTKEY.Value = Reader("CUSTKEY")
                hdnProduct.Value = Reader("Product")
                hdnProjectIndex.Value = Reader("ProjectIndex")
                Status.SelectedValue = Reader("Status")
                Desc1.Text = Reader("Desc1")
                SaleEst.Text = Reader("SaleEst")
                Month.SelectedValue = Reader("Month")
                Year.SelectedValue = Reader("Year")

            Catch err As Exception
                ' Handle an error by displaying the information

            Finally
                'Either way, make sure the connection is properly closed
                InsiteConnection.Close()

            End Try
        End If



    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click


        Dim ProjectIndex As String = Request.QueryString("ProjectIndex").ToString

        'Define ADO>NET objects

        Dim updateSQL As String
        updateSQL = "UPDATE aAcct_Customers_Projects SET "
        updateSQL &= "Status=@Status,ModifiedDate=@ModifiedDate,ModifiedBy=@ModifiedBy,Desc1=@Desc1,SaleEst=@SaleEst,Month=@Month,Year=@Year "
        updateSQL &= "WHERE ProjectIndex=" + ProjectIndex

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim updateCmd As New SqlCommand(updateSQL, InsiteConnection)
        Dim updated As Integer = 0



        'Add the parameters
        updateCmd.Parameters.AddWithValue("@Status", Status.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Desc1", Desc1.Text)
        updateCmd.Parameters.AddWithValue("@SaleEst", SaleEst.Text)
        updateCmd.Parameters.AddWithValue("@Month", Month.SelectedValue)
        updateCmd.Parameters.AddWithValue("@Year", Year.SelectedValue)

        updateCmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate.Value)
        updateCmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy.Value)

        


        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()
            updated = updateCmd.ExecuteNonQuery()



        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
            'ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try




    End Sub


    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Try
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CancelEdit();", True)
        Catch
            ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try

    End Sub

    
    Protected Sub btnAddTask_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddTask.Click

        Dim Description As String = ""
        For I = 0 To TaskList.Items.Count - 1
            If TaskList.Items(I).Selected Then
                Description = Description & TaskList.Items(I).Text & ","
            End If
        Next
        Description = Description & TaskOther.Text



        'Define ADO>NET objects

        Dim insertSQL As String
        insertSQL = "INSERT INTO aAcct_ProjectTasks ("
        insertSQL &= "CUSTKEY,ProjectIndex,Status,Description,DueDate, "
        insertSQL &= "CreatedDate,CreatedBy,ModifiedDate,ModifiedBy) "
        insertSQL &= "VALUES ("
        insertSQL &= "@hdnCUSTKEY,@ProjectIndex,@TaskStatus,@Description,@DueDate,"
        insertSQL &= "@CreatedDate,@CreatedBy,@ModifiedDate,@ModifiedBy)"

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        Dim inserted As Integer = 0

        'Add the parameters
        insertCmd.Parameters.AddWithValue("@hdnCUSTKEY", hdnCUSTKEY.Value)
        insertCmd.Parameters.AddWithValue("@ProjectIndex", hdnProjectIndex.Value)
        insertCmd.Parameters.AddWithValue("@TaskStatus", hdnTaskStatus.Value)

        insertCmd.Parameters.AddWithValue("@Description", Description.ToString())
        insertCmd.Parameters.AddWithValue("@DueDate", DueDate.SelectedDate)
        
        insertCmd.Parameters.AddWithValue("@CreatedDate", CreatedDate.Value)
        insertCmd.Parameters.AddWithValue("@CreatedBy", CreatedBy.Value)
        insertCmd.Parameters.AddWithValue("@ModifiedDate", ModifiedDate.Value)
        insertCmd.Parameters.AddWithValue("@ModifiedBy", ModifiedBy.Value)






        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()
            inserted = insertCmd.ExecuteNonQuery()


            

            grdTasks.DataSourceID = SqlDS_Tasks.ID
            grdTasks.DataBind()


        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
            'ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try

    End Sub

   

    Protected Sub grdTasks_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grdTasks.SelectedIndexChanged
        hdnTaskIndex.Value = grdTasks.SelectedValues("TaskIndex").ToString()
        TaskComment.Visible = "true"
        btnAddTaskFeedback.Visible = "true"
        lblTaskFeedbackTitle.Visible = "true"
        lblFeedbackHistory.Visible = "true"
        lvNoteHistory.Visible = "true"
        lblCommentsSelectRow.Visible = "false"

        Dim TaskIndex As String = grdTasks.SelectedValues("TaskIndex").ToString()

        Dim selectSQL As String
        selectSQL = "SELECT TaskIndex,CUSTKEY,ProjectIndex,Description,DueDate "
        selectSQL &= "FROM aAcct_ProjectTasks "
        selectSQL &= "WHERE TaskIndex=" + TaskIndex

        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)
        Dim selectCmd As New SqlCommand(selectSQL, InsiteConnection)
        Dim Reader As SqlDataReader

        Try
            InsiteConnection.Open()
            Reader = selectCmd.ExecuteReader()
            Reader.Read()


            lblTaskFeedbackTitle.Text = "Provide Comments for Task " + "<i>" + Reader("Description") + "</i>" + " due " + Reader("DueDate")
            lblFeedbackHistory.Text = "Comments for " + Reader("Description") + " Task due " + Reader("DueDate")

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try





    End Sub

    Protected Sub btnAddTaskFeedback_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddTaskFeedback.Click
        'Define ADO>NET objects

        Dim insertFBSQL As String
        insertFBSQL = "INSERT INTO aAcct_ProjectTaskNotes ("
        insertFBSQL &= "CUSTKEY,TaskIndex,ProjectIndex,Comment,CommentDate,Author) "
        insertFBSQL &= "VALUES ("
        insertFBSQL &= "@hdnCUSTKEY,@hdnTaskIndex,@ProjectIndex,@Comment,@CommentDate,@Author)"


        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim insertFBCmd As New SqlCommand(insertFBSQL, InsiteConnection)
        Dim inserted As Integer = 0

        'Add the parameters
        insertFBCmd.Parameters.AddWithValue("@hdnCUSTKEY", hdnCUSTKEY.Value)
        insertFBCmd.Parameters.AddWithValue("@hdnTaskIndex", hdnTaskIndex.Value)
        insertFBCmd.Parameters.AddWithValue("@ProjectIndex", hdnProjectIndex.Value)
        insertFBCmd.Parameters.AddWithValue("@Comment", TaskComment.Content)

        insertFBCmd.Parameters.AddWithValue("@CommentDate", ModifiedDate.Value)
        insertFBCmd.Parameters.AddWithValue("@Author", ModifiedBy.Value)






        Try
            'Try to open the connection and execute the insert and update
            InsiteConnection.Open()
            inserted = insertFBCmd.ExecuteNonQuery()




            lvNoteHistory.DataSourceID = SqlDS_TaskNotes.ID
            lvNoteHistory.DataBind()


            ModifiedDate.Value = DateTime.Now()
            TaskComment.Content = ""

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()
            'ClientScript.RegisterStartupScript(Page.GetType(), "mykey", "CloseAndRebind();", True)
        End Try

    End Sub
End Class
