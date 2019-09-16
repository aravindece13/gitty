Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web
Imports System.Web.Configuration
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.Security
Imports Telerik.Web.UI



Partial Class MasterPages_Site
    Inherits System.Web.UI.MasterPage


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not IsPostBack) Then


            'Retrieve User name, remove the domain name, and set in the cookie object

            Dim UserName = My.User.Name.ToString()
            Dim UserName2 = My.User.Name.ToString()
            UserName = UserName.Replace("KEPNER\", "")
            Response.Cookies("UserName").Value = UserName.ToString()
            Response.Cookies("UserName2").Value = UserName2.ToString()

            'Retrieve application name and set it in the cookie object
            Dim AppName As String = Membership.ApplicationName.ToString()
            Response.Cookies("AppName").Value = AppName.ToString()

            'Get Personalization information from the IntranetAppServices Database, Intranet_Personalization Table via
            'the IntranetPersonalization SQL Data Source

            Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
            Dim myIPConnection As New SqlConnection(IntranetPersonalizationConnectionString)

            'Creation of the SQL Select Command used to retrieve personalization information
            Dim selectSQLIP As String
            selectSQLIP = "SELECT UserName,UserName2,FullName,SalesName,Company,eMail,Fax,Mobile,salesID1,salesID2,salesID3,salesID4,salesID5,Whse1,Whse2,Whse3,Whse4,Whse5,Region1,Region2,Region3,Region4,Region5 FROM Intranet_Personalization "
            selectSQLIP &= "WHERE UserName='" & UserName.ToString & "'"

            Dim cmd As New SqlCommand(selectSQLIP, myIPConnection)
            Dim reader As SqlDataReader

            myIPConnection.Open()
            reader = cmd.ExecuteReader()
            reader.Read()


            Dim FullName As String = reader("FullName").ToString()
            Dim SalesName As String = reader("SalesName").ToString()
            Dim Company As String = reader("Company").ToString()
            Dim eMail As String = reader("eMail").ToString()
            Dim Fax As String = reader("Fax").ToString()
            Dim Mobile As String = reader("Mobile").ToString()
            Dim salesID1 As String = reader("salesID1").ToString()
            Dim salesID2 As String = reader("salesID2").ToString()
            Dim salesID3 As String = reader("salesID3").ToString()
            Dim salesID4 As String = reader("salesID4").ToString()
            Dim salesID5 As String = reader("salesID5").ToString()
            Dim Whse1 As String = reader("Whse1").ToString()
            Dim Whse2 As String = reader("Whse2").ToString()
            Dim Whse3 As String = reader("Whse3").ToString()
            Dim Whse4 As String = reader("Whse4").ToString()
            Dim Whse5 As String = reader("Whse5").ToString()
            Dim Region1 As String = reader("Region1").ToString()
            Dim Region2 As String = reader("Region2").ToString()
            Dim Region3 As String = reader("Region3").ToString()
            Dim Region4 As String = reader("Region4").ToString()
            Dim Region5 As String = reader("Region5").ToString()

            reader.Close()

            Response.Cookies("FullName").Value = FullName.ToString
            Response.Cookies("SalesName").Value = SalesName.ToString
            Response.Cookies("Company").Value = Company.ToString
            Response.Cookies("eMail").Value = eMail.ToString
            Response.Cookies("Fax").Value = Fax.ToString
            Response.Cookies("Mobile").Value = Mobile.ToString
            Response.Cookies("salesID1").Value = salesID1.ToString
            Response.Cookies("salesID2").Value = salesID2.ToString
            Response.Cookies("salesID3").Value = salesID3.ToString
            Response.Cookies("salesID4").Value = salesID4.ToString
            Response.Cookies("salesID5").Value = salesID5.ToString
            Response.Cookies("Whse1").Value = Whse1.ToString
            Response.Cookies("Whse2").Value = Whse2.ToString
            Response.Cookies("Whse3").Value = Whse3.ToString
            Response.Cookies("Whse4").Value = Whse4.ToString
            Response.Cookies("Whse5").Value = Whse5.ToString
            Response.Cookies("Region1").Value = Region1.ToString
            Response.Cookies("Region2").Value = Region2.ToString
            Response.Cookies("Region3").Value = Region3.ToString
            Response.Cookies("Region4").Value = Region4.ToString
            Response.Cookies("Region5").Value = Region5.ToString


            'The cookie lives for one year
            Response.Cookies("UserName").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("UserName2").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("AppName").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("FullName").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("SalesName").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Company").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("eMail").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Fax").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Mobile").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("salesID1").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("salesID2").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("salesID3").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("salesID4").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("salesID5").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse1").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse2").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse3").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse4").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse5").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region1").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region2").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region3").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region4").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region5").Expires = DateTime.Now.AddYears(1)

        Else
            'Take the active cookies, and assign variables

            Dim UserName As String = Request.Cookies("UserName").Value
            Dim UserName2 As String = Request.Cookies("UserName2").Value
            Dim FullName As String = Request.Cookies("FullName").Value
            Dim SalesName As String = Request.Cookies("SalesName").Value
            Dim AppName As String = Request.Cookies("AppName").Value
            Dim Company As String = Request.Cookies("Company").Value
            Dim eMail As String = Request.Cookies("eMail").Value
            Dim Fax As String = Request.Cookies("Fax").Value
            Dim Mobile As String = Request.Cookies("Mobile").Value
            Dim salesID1 As String = Request.Cookies("salesID1").Value
            Dim salesID2 As String = Request.Cookies("salesID2").Value
            Dim salesID3 As String = Request.Cookies("salesID3").Value
            Dim salesID4 As String = Request.Cookies("salesID4").Value
            Dim salesID5 As String = Request.Cookies("salesID5").Value
            Dim Whse1 As String = Request.Cookies("Whse1").Value
            Dim Whse2 As String = Request.Cookies("Whse2").Value
            Dim Whse3 As String = Request.Cookies("Whse3").Value
            Dim Whse4 As String = Request.Cookies("Whse4").Value
            Dim Whse5 As String = Request.Cookies("Whse5").Value
            Dim Region1 As String = Request.Cookies("Region1").Value
            Dim Region2 As String = Request.Cookies("Region2").Value
            Dim Region3 As String = Request.Cookies("Region3").Value
            Dim Region4 As String = Request.Cookies("Region4").Value
            Dim Region5 As String = Request.Cookies("Region5").Value

        End If

        LabelUserName.Text = Request.Cookies("FullName").Value

        'Log user page request to the aIntranetPageRequests table in the Insite database

        Dim insertSQL As String
        insertSQL = "INSERT INTO aIntranetPageRequests ("
        insertSQL &= "FullName, UserName,PageRequested, DateTime )"
        insertSQL &= "VALUES ("
        insertSQL &= "@FullName, @UserName, @PageRequested, @DateTime )"



        'Define the ADO.NET Connection Object
        Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        Dim added As Integer = 0

        'Add the parameters
        insertCmd.Parameters.AddWithValue("@FullName", Request.Cookies("FullName").Value)
        insertCmd.Parameters.AddWithValue("@UserName", Request.Cookies("UserName").Value)
        insertCmd.Parameters.AddWithValue("@PageRequested", Request.Url.ToString)
        insertCmd.Parameters.AddWithValue("@DateTime", System.DateTime.Now().ToString)

        'system.datetime.now
        'request.url
        'Request.cookies("UserName").Value
        'Request.cookies("FullName").Value


        Try
            'Try to open the connection and execute the insert and update the Notes RadGrid
            InsiteConnection.Open()

            added = insertCmd.ExecuteNonQuery()

        Catch err As Exception
            ' Handle an error by displaying the information

        Finally
            'Either way, make sure the connection is properly closed
            InsiteConnection.Close()

        End Try


    End Sub





End Class

