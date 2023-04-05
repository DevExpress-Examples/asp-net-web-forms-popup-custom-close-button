# Popup Control for ASP.NET Web Forms - How to create a custom close button
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3930/)**
<!-- run online end -->

This example demonstrates how to create a header template, add the ASPxImage control to the template, and emulate the **Close** button functionality.

## Overview

Specify the popup's [HeaderTemplate](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPopupControlBase.HeaderTemplate) property and add the `ASPxImage` control to the template. To emulate the **Close** button functionality, handle the image control's client-side `Click` event and hide the popup window in the handler.

```aspx
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
</dx:ASPxPopupControl>
```

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))

## Documentation

* [Popup Control](https://docs.devexpress.com/AspNet/3582/components/docking-and-popups/popup-control)
