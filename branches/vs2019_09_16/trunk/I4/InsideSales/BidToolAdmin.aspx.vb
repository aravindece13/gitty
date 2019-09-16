﻿Imports System
'Imports System.Collections.Generic
Imports System.Linq
'Imports System.Data
Imports System.Data.SqlClient
'Imports System.Web
Imports System.Web.Configuration
'Imports System.Web.UI
'Imports System.Web.UI.WebControls
'Imports System.Web.Security
'Imports Telerik.Web.UI

Partial Class InsideSales_BidToolAdmin
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        Dim UserName As String = Request.Cookies("UserName").Value

        'Get Personalization information from the IntranetAppServices Database, Intranet_Personalization Table via
        'the IntranetPersonalization SQL Data Source

        Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim myIPConnection As New SqlConnection(IntranetPersonalizationConnectionString)

        'Creation of the SQL Select Command used to retrieve personalization information
        Dim selectSQLIP As String
        selectSQLIP = "SELECT BranchAdmin FROM Intranet_Personalization "
        selectSQLIP &= "WHERE UserName='" & UserName.ToString & "'"

        Dim cmd As New SqlCommand(selectSQLIP, myIPConnection)
        Dim reader As SqlDataReader

        myIPConnection.Open()
        reader = cmd.ExecuteReader()
        reader.Read()

        If reader("BranchAdmin") = 0 Then
            'Dim previousPage As String = Page.Request.UrlReferrer.ToString
            wndwBidToolAdminAccessBlock.Modal = "True"
            wndwBidToolAdminAccessBlock.VisibleOnPageLoad = "True"
            wndwBidToolAdminAccessBlock.NavigateUrl = "~/BidTool/BidToolAdminAccessBlock.aspx"
            'Server.Transfer("~/AccessDenied.aspx")
        End If

    End Sub

End Class
