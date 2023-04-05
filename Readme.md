<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128555188/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3930)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
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
