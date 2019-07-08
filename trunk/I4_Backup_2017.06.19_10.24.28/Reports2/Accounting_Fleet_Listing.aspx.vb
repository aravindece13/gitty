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

Partial Class Reports2_Accounting_Fleet_Listing
    Inherits System.Web.UI.Page

    Protected Sub ReportViewer1_Load(sender As Object, e As System.EventArgs) Handles ReportViewer1.Load
        ReportViewer1.ServerReport.ReportServerUrl = New Uri("http://srv-sql:80/ReportServer/")
        ReportViewer1.ServerReport.ReportPath = "/Accounting/Fleet_Listing"


        ReportViewer1.ProcessingMode = ProcessingMode.Remote

        Dim xlsFileName As String = "Accounting_Fleet_Listing" + "_" + FormatDateTime(Now(), Microsoft.VisualBasic.DateFormat.ShortDate).ToString() + ".xlsx"

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

        Response.AppendHeader("content-disposition", "attachment; filename=" + xlsFileName)
        Response.BinaryWrite(returnValue)
        Response.Flush()
        Response.End()
    End Sub
End Class
