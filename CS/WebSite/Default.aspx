<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxButton ID="btn" runat="server" AutoPostBack="false" Text="ShowPopup">
        <ClientSideEvents Click="function(s, e) {
	        popup.Show();
        }" />
    </dx:ASPxButton>
    <br />
    <dx:ASPxPopupControl ID="popup" runat="server" ClientInstanceName="popup" CloseAction="CloseButton">
        <HeaderTemplate>
            <div style="float: right">
                <dx:ASPxImage ID="img" runat="server" ImageUrl="~/close.png"  Cursor="pointer">
                    <ClientSideEvents Click="function(s, e){
                        popup.Hide();
                    }" />
                </dx:ASPxImage>
            </div>
        </HeaderTemplate>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    </form>
</body>
</html>
