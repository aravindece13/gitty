<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Accounting_Secure.master" AutoEventWireup="false" CodeFile="MileageLogEditor.aspx.vb" Inherits="Accounting_Secure_MileageLogEditor" %>

<%@ Register Src="~/Controls/form_MileageLogEditor.ascx" TagName="formMileageLogEditor" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

    <h1>Accounting | Mileage Log Editor</h1>


   
  <uc1:formMileageLogEditor ID="FormMileageLogEditor" runat="server" />


        <telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        

    </telerik:RadWindowManager>
    
</asp:Content>

