<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128555188/11.2.10%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E3930)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# ASPxPopupControl - How to create a custom close button
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3930)**
<!-- run online end -->


<p>This example demonstrates how to implement a custom <strong>ASPxPopupControl</strong> close button:</p><p>1) Specify the <strong>ASPxPopupControl's HeaderTemplate</strong>;<br />
2) Define a custom button via the <strong>ASPxImage</strong> control;<br />
3) Handle the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientStaticEdit_Clicktopic"><u>ASPxClientImage.Click</u></a> event and call the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxPopupControlScriptsASPxClientPopupControlBase_Hidetopic"><u>ASPxClientPopupCont</u><u>r</u><u>ol.Hide</u></a> method.</p>

```aspx
<dx:ASPxPopupControl ID="popup" runat="server" ClientInstanceName="popup" ShowOnPageLoad="true" CloseAction="CloseButton"><newline/>  <HeaderTemplate><newline/>      ...<newline/>
      <dx:ASPxImage ... runat="server"><newline/>         <ClientSideEvents Click="function(s, e){<newline/>             popup.Hide();<newline/>         }" /><newline/>      </dx:ASPxImage><newline/>
      ...<newline/>  </HeaderTemplate><newline/>...<newline/></dx:ASPxPopupControl> <newline/>
```

<p> </p>

<br/>


