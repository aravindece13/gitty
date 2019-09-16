<%@ Page Title=""  Language="VB" MasterPageFile="~/MasterPages/Exec.master" AutoEventWireup="false" CodeFile="Weather.aspx.vb" Inherits="Exec_Weather" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" Runat="Server">

<br />
<div id="CommodityGadget" style="float:left;">
<script type="text/javascript" src="http://www.gmodules.com/ig/ifr?url=http://www.stocksfortune.com/script/widget1.xml&amp;synd=open&amp;w=220&amp;h=420&amp;border=%23ffffff%7C0px%2C1px+solid+%23004488%7C0px%2C1px+solid+%23005599%7C0px%2C1px+solid+%230077BB%7C0px%2C1px+solid+%230088CC&amp;output=js"></script>
</div>

<div id="DenverWeather" style="float:left">
    <script type="text/javascript">

        /* Locations can be edited manually by updating 'wx_locID' below.  Please also update */
        /* the location name and link in the above div (wx_module) to reflect any changes made. */
        var wx_locID = 'USCO0105';

        /* If you are editing locations manually and are adding multiple modules to one page, each */
        /* module must have a unique div id.  Please append a unique # to the div above, as well */
        /* as the one referenced just below.  If you use the builder to create individual modules  */
        /* you will not need to edit these parameters. */
        var wx_targetDiv = 'wx_module_2369';

        /* Please do not change the configuration value [wx_config] manually - your module */
        /* will no longer function if you do.  If at any time you wish to modify this */
        /* configuration please use the graphical configuration tool found at */
        /* https://registration.weather.com/ursa/wow/step2 */
        var wx_config = 'SZ=300x250*WX=FWC*LNK=SSNL*UNT=F*BGI=winter*MAP=CSC|null*DN=danakepner.com*TIER=0*PID=1157415683*MD5=aa9fd165b63b0054b5ff0cd7290cba7f';

        document.write('<scr' + 'ipt src="' + document.location.protocol + '//wow.weather.com/weather/wow/module/' + wx_locID + '?config=' + wx_config + '&proto=' + document.location.protocol + '&target=' + wx_targetDiv + '"></scr' + 'ipt>');  
    </script>
    <div id="wx_module_2369" >
       <a href="http://www.weather.com/weather/local/USCO0105">Denver Weather Forecast, CO</a>
    </div>

    
</div>

<div id="PhoenixWeather" style="float:right">
    <script type="text/javascript">
        var wx_locID = 'USAZ0166';
        var wx_targetDiv = 'wx_module_2407';
        var wx_config = 'SZ=300x250*WX=FWC*LNK=RCTN*UNT=F*BGI=golf*MAP=CSC|null*DN=danakepner.com*TIER=0*PID=1157415683*MD5=942fa45d7c940127dce995f040a7e8a6';
        document.write('<scr' + 'ipt src="' + document.location.protocol + '//wow.weather.com/weather/wow/module/' + wx_locID + '?config=' + wx_config + '&proto=' + document.location.protocol + '&target=' + wx_targetDiv + '"></scr' + 'ipt>');  
    </script>
    <div id="wx_module_2407">
       <a href="http://www.weather.com/weather/local/USAZ0166">Phoenix Weather Forecast, AZ</a>
    </div>
    
</div>


</asp:Content>

