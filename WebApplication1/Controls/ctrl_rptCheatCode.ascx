<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctrl_rptCheatCode.ascx.vb" Inherits="WebApplication1.ctrl_rptCheatCode" %>

<%@ Register Src="/Controls/ctrl_tblCheatCode.ascx" TagPrefix="uctrl" TagName="tblCheatCode" %>

<div class="panel panel-default">
    <div id="panel" class="panel-heading" runat="server" data-toggle="collapse" data-parent="#accordion" href="#collapse">
        <h4 class="panel-title">
            <a id="accordion" class="accordion-toggle" >
                
            </a>
        </h4>
    </div>
    <uctrl:tblCheatCode ID="uctrlTable" runat="server" />
</div>
