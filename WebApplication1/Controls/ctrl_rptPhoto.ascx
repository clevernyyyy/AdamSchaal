<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ctrl_rptPhoto.ascx.vb" Inherits="WebApplication1.ctrl_rptPhoto" %>


        <div style="margin: auto; width: 740px;">
            <asp:Repeater ID="rptPictures" runat="server">
                <ItemTemplate>
                    <a id="link" runat="server" class="fancybox thumb" rel="gallery">
                        <img id="img" runat="server" alt="" /></a>
                </ItemTemplate>
                <FooterTemplate>
                    <div style="clear: left;"></div>
                </FooterTemplate>
            </asp:Repeater>
        </div>