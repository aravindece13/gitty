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
Imports Microsoft.Reporting.WebForms

Partial Class Reports2_Quote_VendorQuoteRequest
    Inherits System.Web.UI.Page


    Protected Sub ReportViewer1_Load(sender As Object, e As System.EventArgs) Handles Me.Load




        If IsPostBack = "False" Then

            Dim DKConnectionString1 As String = WebConfigurationManager.ConnectionStrings("DKConnectionString").ConnectionString
            Dim DKConnection1 As New SqlConnection(DKConnectionString1)
            Dim selectCMD1 As SqlCommand = New SqlCommand("uspQuoteGetDetails", DKConnection1)
            selectCMD1.CommandType = CommandType.StoredProcedure
            selectCMD1.Parameters.Add("@QuoteID", SqlDbType.BigInt).Value = Request.QueryString("QuoteID").ToString()




            DKConnection1.Open()

            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD1.ExecuteReader()
            myReader.Read()

            'Dim xlsxFileName As String = "VendorQuoteRequest_" + myReader("ProjectName") + "_" + myReader("QuoteName") + "_" + FormatDateTime(Now(), Microsoft.VisualBasic.DateFormat.ShortDate).ToString() + ".xlsx"
            Dim xlsxFileName As String = "VendorQuoteRequest_" + myReader("ProjectName") + ".xlsx"

            DKConnection1.Close()


            ReportViewer1.ProcessingMode = ProcessingMode.Remote

            ' Set report server and report path
            ReportViewer1.ServerReport.ReportServerUrl = New Uri("http://srv-sql:80/ReportServer/")
            ReportViewer1.ServerReport.ReportPath = "/Quote/VendorQuoteRequest"

            Dim pinfo As ReportParameterInfoCollection
            Dim paramlist As New Generic.List(Of ReportParameter)

            paramlist.Add(New ReportParameter("QuoteID", Request.QueryString("QuoteID").ToString(), False))
            paramlist.Add(New ReportParameter("TakeOffID", Request.QueryString("TakeOffID").ToString(), False))

            ReportViewer1.ServerReport.SetParameters(paramlist)


            pinfo = ReportViewer1.ServerReport.GetParameters()

            ' Process and render the report

            ReportViewer1.ServerReport.Refresh()

            'output as PDF
            Dim returnValue As Byte()
            Dim format As String = "EXCELOPENXML"
            Dim deviceinfo As String = ""
            Dim mimeType As String = ""
            Dim encoding As String = ""
            Dim extension As String = "xlsx"
            Dim streams As String() = Nothing
            Dim warnings As Microsoft.Reporting.WebForms.Warning() = Nothing


            returnValue = ReportViewer1.ServerReport.Render(format, deviceinfo, mimeType, encoding, extension, streams, warnings)
            Response.Buffer = True
            Response.Clear()

            Response.ContentType = mimeType


            Response.AppendHeader("content-disposition", "attachment; filename=" + xlsxFileName)
            Response.BinaryWrite(returnValue)
            Response.Flush()
            Response.End()
        End If
    End Sub


End Class
