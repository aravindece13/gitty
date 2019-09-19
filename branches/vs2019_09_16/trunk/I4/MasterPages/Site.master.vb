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

        'Retrieve User name, remove the domain name, and set in the cookie object

        Dim UserName = My.User.Name.ToString()
        Dim UserName2 = My.User.Name.ToString()
        UserName = UserName.Replace("KEPNER\", "")
        Response.Cookies("UserName").Value = UserName.ToString()
        Response.Cookies("UserName2").Value = UserName2.ToString()

        'Retrieve application name and set it in the cookie object
        Dim AppName As String = Membership.ApplicationName.ToString()
        Response.Cookies("AppName").Value = AppName.ToString()

        'Get Personalization information from the IntranetAppServices2 Database, Intranet_Personalization Table via
        'the IntranetPersonalization SQL Data Source

        Dim IntranetPersonalizationConnectionString As String = WebConfigurationManager.ConnectionStrings("IntranetAppServices").ConnectionString
        Dim myIPConnection As New SqlConnection(IntranetPersonalizationConnectionString)
        Dim selectCMD1 As SqlCommand = New SqlCommand("uspIntranetPersonalizationGet", myIPConnection) With {
            .CommandType = CommandType.StoredProcedure
        }
        selectCMD1.Parameters.Add("@UserName", SqlDbType.NVarChar).Value = UserName
        selectCMD1.Parameters.Add("@Status", SqlDbType.NVarChar).Value = "Active"

        Try
            myIPConnection.Open()
            Dim result As Integer = selectCMD1.ExecuteNonQuery()
            Dim myReader As SqlDataReader = selectCMD1.ExecuteReader()
            myReader.Read()


            Dim FullName As String = myReader("FullName").ToString()
            Dim PayComID As String = myReader("PayComID").ToString()
            Dim SalesName As String = myReader("SalesName").ToString()
            Dim Company As String = myReader("Company").ToString()
            Dim eMail As String = myReader("eMail").ToString()
            Dim Fax As String = myReader("Fax").ToString()
            Dim Mobile As String = myReader("Mobile").ToString()
            Dim salesID1 As String = myReader("salesID1").ToString()
            Dim salesID2 As String = myReader("salesID2").ToString()
            Dim salesID3 As String = myReader("salesID3").ToString()
            Dim salesID4 As String = myReader("salesID4").ToString()
            Dim salesID5 As String = myReader("salesID5").ToString()

            Dim Whse1 As String = myReader("Whse1").ToString()
            Dim Whse2 As String = myReader("Whse2").ToString()
            Dim Whse3 As String = myReader("Whse3").ToString()
            Dim Whse4 As String = myReader("Whse4").ToString()
            Dim Whse5 As String = myReader("Whse5").ToString()
            Dim Whse6 As String = myReader("Whse6").ToString()
            Dim Whse7 As String = myReader("Whse7").ToString()
            Dim Whse8 As String = myReader("Whse8").ToString()
            Dim Whse9 As String = myReader("Whse9").ToString()
            Dim Whse10 As String = myReader("Whse10").ToString()

            Dim Region1 As String = myReader("Region1").ToString()
            Dim Region2 As String = myReader("Region2").ToString()
            Dim Region3 As String = myReader("Region3").ToString()
            Dim Region4 As String = myReader("Region4").ToString()
            Dim Region5 As String = myReader("Region5").ToString()
            Dim Region6 As String = myReader("Region6").ToString()
            Dim Region7 As String = myReader("Region7").ToString()
            Dim Region8 As String = myReader("Region8").ToString()




            Response.Cookies("FullName").Value = FullName.ToString
            Response.Cookies("PayComID").Value = PayComID.ToString
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
            Response.Cookies("Whse6").Value = Whse6.ToString
            Response.Cookies("Whse7").Value = Whse7.ToString
            Response.Cookies("Whse8").Value = Whse8.ToString
            Response.Cookies("Whse9").Value = Whse9.ToString
            Response.Cookies("Whse10").Value = Whse10.ToString


            Response.Cookies("Region1").Value = Region1.ToString
            Response.Cookies("Region2").Value = Region2.ToString
            Response.Cookies("Region3").Value = Region3.ToString
            Response.Cookies("Region4").Value = Region4.ToString
            Response.Cookies("Region5").Value = Region5.ToString
            Response.Cookies("Region6").Value = Region6.ToString
            Response.Cookies("Region7").Value = Region7.ToString
            Response.Cookies("Region8").Value = Region8.ToString

            'The cookie lives for one year, but does get updated constantly
            Response.Cookies("UserName").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("UserName2").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("AppName").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("PayComID").Expires = DateTime.Now.AddYears(1)
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
            Response.Cookies("Whse6").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse7").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse8").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse9").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Whse10").Expires = DateTime.Now.AddYears(1)

            Response.Cookies("Region1").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region2").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region3").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region4").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region5").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region6").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region7").Expires = DateTime.Now.AddYears(1)
            Response.Cookies("Region8").Expires = DateTime.Now.AddYears(1)


            LabelUserName.Text = Request.Cookies("FullName").Value

        Catch ex As SqlException

        Finally
            myIPConnection.Close()
        End Try

        'End If


        'Dim insertSQL As String
        'insertSQL = "INSERT INTO aIntranetPageRequests ("
        'insertSQL &= "FullName, UserName,PageRequested, DateTime )"
        'insertSQL &= "VALUES ("
        'insertSQL &= "@FullName, @UserName, @PageRequested, @DateTime )"



        ''Define the ADO.NET Connection Object
        'Dim InsiteConnectionString As String = WebConfigurationManager.ConnectionStrings("InsiteConnectionString").ConnectionString
        'Dim InsiteConnection As New SqlConnection(InsiteConnectionString)

        'Dim insertCmd As New SqlCommand(insertSQL, InsiteConnection)
        'Dim added As Integer = 0

        ''Add the parameters
        'insertCmd.Parameters.AddWithValue("@FullName", Request.Cookies("FullName").Value)
        'insertCmd.Parameters.AddWithValue("@UserName", Request.Cookies("UserName").Value)
        'insertCmd.Parameters.AddWithValue("@PageRequested", Request.Url.ToString)
        'insertCmd.Parameters.AddWithValue("@DateTime", System.DateTime.Now().ToString)




        'Try
        '    'Try to open the connection and execute the insert and update the Notes RadGrid
        '    InsiteConnection.Open()

        '    added = insertCmd.ExecuteNonQuery()

        'Catch err As Exception
        '    ' Handle an error by displaying the information

        'Finally
        '    'Either way, make sure the connection is properly closed
        '    InsiteConnection.Close()

        'End Try

        ' End If
    End Sub





End Class

