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


Partial Class Reports2_Orders_Stage1_Entered_BackOrdered
    Inherits System.Web.UI.Page



    Protected Sub ReportViewer1_Load(sender As Object, e As System.EventArgs) Handles ReportViewer1.Load
        ReportViewer1.ServerReport.ReportServerUrl = New Uri("http://srv-sql3:80/ReportServer/")
        ReportViewer1.ServerReport.ReportPath = "/Orders/Stage1_Entered_BackOrdered"
    End Sub

End Class
