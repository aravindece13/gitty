<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/IT_Secure.master" AutoEventWireup="false" CodeFile="MileageLog.aspx.vb" Inherits="IT_Secure_MileageLog" %>

<%@ Register Src="~/Controls/form_MileageLogEditor.ascx" TagName="formMileageLogEditor" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


    <h1>IT | Mileage Log Editor</h1>


   
  <uc1:formMileageLogEditor ID="FormMileageLogEditor" runat="server" />


    <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        

    </telerik:RadWindowManager>


</asp:Content>

