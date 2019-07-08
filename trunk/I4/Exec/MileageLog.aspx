<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="MileageLog.aspx.vb" Inherits="Exec_MileageLog" %>

<%@ Register Src="~/Controls/form_MileageLogBasic.ascx" TagName="formMileageLogBasic" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">


<h1>Executive | Mileage Log</h1>


   
  <uc1:formMileageLogBasic ID="FormMileageLogBasic" runat="server" />


<telerik:RadWindowManager ID="Singleton" VisibleStatusbar="false" Behaviors="Close,Move, Resize" runat="server" >
        

    </telerik:RadWindowManager>

</asp:Content>

