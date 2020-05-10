No package doc string provided for http_server.

## Public Types

* [primitive URLPartUser](http_server-URLPartUser.md)
* [primitive URLPartPassword](http_server-URLPartPassword.md)
* [primitive URLPartHost](http_server-URLPartHost.md)
* [primitive URLPartPath](http_server-URLPartPath.md)
* [primitive URLPartQuery](http_server-URLPartQuery.md)
* [primitive URLPartFragment](http_server-URLPartFragment.md)
* [type URLPart](http_server-URLPart.md)
* [primitive URLEncode](http_server-URLEncode.md)
* [class URL](http_server-URL.md)
* [interface SyncHandler](http_server-SyncHandler.md)
* [class SyncHandlerWrapper](http_server-SyncHandlerWrapper.md)
* [interface Status](http_server-Status.md)
* [primitive StatusContinue](http_server-StatusContinue.md)
* [primitive StatusSwitchingProtocols](http_server-StatusSwitchingProtocols.md)
* [primitive StatusOK](http_server-StatusOK.md)
* [primitive StatusCreated](http_server-StatusCreated.md)
* [primitive StatusAccepted](http_server-StatusAccepted.md)
* [primitive StatusNonAuthoritativeInfo](http_server-StatusNonAuthoritativeInfo.md)
* [primitive StatusNoContent](http_server-StatusNoContent.md)
* [primitive StatusResetContent](http_server-StatusResetContent.md)
* [primitive StatusPartialContent](http_server-StatusPartialContent.md)
* [primitive StatusMultipleChoices](http_server-StatusMultipleChoices.md)
* [primitive StatusMovedPermanently](http_server-StatusMovedPermanently.md)
* [primitive StatusFound](http_server-StatusFound.md)
* [primitive StatusSeeOther](http_server-StatusSeeOther.md)
* [primitive StatusNotModified](http_server-StatusNotModified.md)
* [primitive StatusUseProxy](http_server-StatusUseProxy.md)
* [primitive StatusTemporaryRedirect](http_server-StatusTemporaryRedirect.md)
* [primitive StatusBadRequest](http_server-StatusBadRequest.md)
* [primitive StatusUnauthorized](http_server-StatusUnauthorized.md)
* [primitive StatusPaymentRequired](http_server-StatusPaymentRequired.md)
* [primitive StatusForbidden](http_server-StatusForbidden.md)
* [primitive StatusNotFound](http_server-StatusNotFound.md)
* [primitive StatusMethodNotAllowed](http_server-StatusMethodNotAllowed.md)
* [primitive StatusNotAcceptable](http_server-StatusNotAcceptable.md)
* [primitive StatusProxyAuthRequired](http_server-StatusProxyAuthRequired.md)
* [primitive StatusRequestTimeout](http_server-StatusRequestTimeout.md)
* [primitive StatusConflict](http_server-StatusConflict.md)
* [primitive StatusGone](http_server-StatusGone.md)
* [primitive StatusLengthRequired](http_server-StatusLengthRequired.md)
* [primitive StatusPreconditionFailed](http_server-StatusPreconditionFailed.md)
* [primitive StatusRequestEntityTooLarge](http_server-StatusRequestEntityTooLarge.md)
* [primitive StatusRequestURITooLong](http_server-StatusRequestURITooLong.md)
* [primitive StatusUnsupportedMediaType](http_server-StatusUnsupportedMediaType.md)
* [primitive StatusRequestedRangeNotSatisfiable](http_server-StatusRequestedRangeNotSatisfiable.md)
* [primitive StatusExpectationFailed](http_server-StatusExpectationFailed.md)
* [primitive StatusTeapot](http_server-StatusTeapot.md)
* [primitive StatusPreconditionRequired](http_server-StatusPreconditionRequired.md)
* [primitive StatusTooManyRequests](http_server-StatusTooManyRequests.md)
* [primitive StatusRequestHeaderFieldsTooLarge](http_server-StatusRequestHeaderFieldsTooLarge.md)
* [primitive StatusUnavailableForLegalReasons](http_server-StatusUnavailableForLegalReasons.md)
* [primitive StatusInternalServerError](http_server-StatusInternalServerError.md)
* [primitive StatusNotImplemented](http_server-StatusNotImplemented.md)
* [primitive StatusBadGateway](http_server-StatusBadGateway.md)
* [primitive StatusServiceUnavailable](http_server-StatusServiceUnavailable.md)
* [primitive StatusGatewayTimeout](http_server-StatusGatewayTimeout.md)
* [primitive StatusHTTPVersionNotSupported](http_server-StatusHTTPVersionNotSupported.md)
* [primitive StatusNetworkAuthenticationRequired](http_server-StatusNetworkAuthenticationRequired.md)
* [interface Session](http_server-Session.md)
* [interface ServerNotify](http_server-ServerNotify.md)
* [class ServerConfig](http_server-ServerConfig.md)
* [actor Server](http_server-Server.md)
* [interface Response](http_server-Response.md)
* [primitive Responses](http_server-Responses.md)
* [interface ResponseBuilder](http_server-ResponseBuilder.md)
* [interface ResponseBuilderHeaders](http_server-ResponseBuilderHeaders.md)
* [interface ResponseBuilderBody](http_server-ResponseBuilderBody.md)
* [class BuildableResponse](http_server-BuildableResponse.md)
* [primitive TooLarge](http_server-TooLarge.md)
* [primitive UnknownMethod](http_server-UnknownMethod.md)
* [primitive InvalidURI](http_server-InvalidURI.md)
* [primitive InvalidVersion](http_server-InvalidVersion.md)
* [primitive InvalidContentLength](http_server-InvalidContentLength.md)
* [primitive InvalidTransferCoding](http_server-InvalidTransferCoding.md)
* [primitive InvalidChunk](http_server-InvalidChunk.md)
* [type RequestParseError](http_server-RequestParseError.md)
* [primitive NeedMore](http_server-NeedMore.md)
* [type ParseReturn](http_server-ParseReturn.md)
* [primitive Chunked](http_server-Chunked.md)
* [interface HTTP11RequestHandler](http_server-HTTP11RequestHandler.md)
* [class HTTP11RequestParser](http_server-HTTP11RequestParser.md)
* [primitive CompareCaseInsensitive](http_server-CompareCaseInsensitive.md)
* [type RequestID](http_server-RequestID.md)
* [primitive RequestIDs](http_server-RequestIDs.md)
* [primitive HTTP11](http_server-HTTP11.md)
* [primitive HTTP10](http_server-HTTP10.md)
* [primitive HTTP09](http_server-HTTP09.md)
* [type Version](http_server-Version.md)
* [interface Request](http_server-Request.md)
* [class BuildableRequest](http_server-BuildableRequest.md)
* [primitive MimeTypes](http_server-MimeTypes.md)
* [interface Method](http_server-Method.md)
* [primitive CONNECT](http_server-CONNECT.md)
* [primitive GET](http_server-GET.md)
* [primitive DELETE](http_server-DELETE.md)
* [primitive HEAD](http_server-HEAD.md)
* [primitive OPTIONS](http_server-OPTIONS.md)
* [primitive PATCH](http_server-PATCH.md)
* [primitive POST](http_server-POST.md)
* [primitive PUT](http_server-PUT.md)
* [primitive TRACE](http_server-TRACE.md)
* [primitive Methods](http_server-Methods.md)
* [type Header](http_server-Header.md)
* [class Headers](http_server-Headers.md)
* [interface Handler](http_server-Handler.md)
* [interface HandlerFactory](http_server-HandlerFactory.md)
* [interface HandlerWithoutContext](http_server-HandlerWithoutContext.md)
* [primitive SimpleHandlerFactory](http_server-SimpleHandlerFactory.md)