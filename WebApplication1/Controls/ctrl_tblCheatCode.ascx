<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctrl_tblCheatCode.ascx.vb" Inherits="WebApplication1.ctrl_tblCheatCode" %>

<div id="collapse" runat="server" class="panel-collapse collapse">
    <div class="panel-body">
        <table id="tblDay" class="table table-striped table-bordered table-condensed">
            <thead>
                <tr>
                    <th>Date
                    </th>
                    <th>Event
                    </th>
                    <th>Location
                    </th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptDay" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="lblDate" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblContent" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblLocation" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
</div>
