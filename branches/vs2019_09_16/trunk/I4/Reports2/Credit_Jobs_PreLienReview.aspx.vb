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


Partial Class Reports2_Credit_Jobs_PreLienReview
    Inherits System.Web.UI.Page

    Protected Sub ReportViewer1_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        If IsPostBack = "False" Then


            Dim xlsFileName As String = "Credit_JobPreLien_Review_" + FormatDateTime(Now(), Microsoft.VisualBasic.DateFormat.ShortDate).ToString() + ".xlsx"


            ReportViewer1.ProcessingMode = ProcessingMode.Remote

            ' Set report server and report path
            ReportViewer1.ServerReport.ReportServerUrl = New Uri("http://srv-sql3:80/ReportServer/")
            ReportViewer1.ServerReport.ReportPath = "/Credit/Credit_Jobs_PreLienReview"

            Dim pinfo As ReportParameterInfoCollection
            Dim paramlist As New Generic.List(Of ReportParameter)

            paramlist.Add(New ReportParameter("WhseID1", Request.Cookies("Whse1").Value, False))
            paramlist.Add(New ReportParameter("WhseID2", Request.Cookies("Whse2").Value, False))
            paramlist.Add(New ReportParameter("WhseID3", Request.Cookies("Whse3").Value, False))
            paramlist.Add(New ReportParameter("WhseID4", Request.Cookies("Whse4").Value, False))
            paramlist.Add(New ReportParameter("WhseID5", Request.Cookies("Whse5").Value, False))
            paramlist.Add(New ReportParameter("WhseID6", Request.Cookies("Whse6").Value, False))
            paramlist.Add(New ReportParameter("WhseID7", Request.Cookies("Whse7").Value, False))
            paramlist.Add(New ReportParameter("WhseID8", Request.Cookies("Whse8").Value, False))
            paramlist.Add(New ReportParameter("WhseID9", Request.Cookies("Whse9").Value, False))
            paramlist.Add(New ReportParameter("WhseID10", Request.Cookies("Whse10").Value, False))

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

            Response.AppendHeader("content-disposition", "attachment; filename=" + xlsFileName)
            Response.BinaryWrite(returnValue)
            Response.Flush()
            Response.End()
        End If
    End Sub

End Class
