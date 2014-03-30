<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ctrl_rptPhoto.aspx.vb" Inherits="WebApplication1.ctrl_rptPhoto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
