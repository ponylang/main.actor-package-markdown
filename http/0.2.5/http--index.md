This package includes all the support functions necessary to build client
and server applications for the HTTP protocol.

The important interfaces an application needs to deal with are:

* [HTTPSession](http-HTTPSession), the API to an HTTP connection.

* [HTTPHandler](http-HTTPHandler), the interface to a handler you
need to write that will receive notifications from the `HTTPSession`.

* [HandlerFactory](http-HandlerFactory), the interface to a class you
need to write that creates instances of your `HTTPHandler`.

* [Payload](http-Payload), the class that represents a single HTTP
message, with its headers.

If you are writing a client, you will need to deal with the
[HTTPClient](http-HTTPClient) class.

If you are writing a server, you will need to deal with the
[HTTPServer](http-HTTPServer) class.



## Public Types

* [primitive URLPartUser](http-URLPartUser.md)
* [primitive URLPartPassword](http-URLPartPassword.md)
* [primitive URLPartHost](http-URLPartHost.md)
* [primitive URLPartPath](http-URLPartPath.md)
* [primitive URLPartQuery](http-URLPartQuery.md)
* [primitive URLPartFragment](http-URLPartFragment.md)
* [type URLPart](http-URLPart.md)
* [primitive URLEncode](http-URLEncode.md)
* [class URL](http-URL.md)
* [trait Status](http-Status.md)
* [primitive StatusContinue](http-StatusContinue.md)
* [primitive StatusSwitchingProtocols](http-StatusSwitchingProtocols.md)
* [primitive StatusOK](http-StatusOK.md)
* [primitive StatusCreated](http-StatusCreated.md)
* [primitive StatusAccepted](http-StatusAccepted.md)
* [primitive StatusNonAuthoritativeInfo](http-StatusNonAuthoritativeInfo.md)
* [primitive StatusNoContent](http-StatusNoContent.md)
* [primitive StatusResetContent](http-StatusResetContent.md)
* [primitive StatusPartialContent](http-StatusPartialContent.md)
* [primitive StatusMultipleChoices](http-StatusMultipleChoices.md)
* [primitive StatusMovedPermanently](http-StatusMovedPermanently.md)
* [primitive StatusFound](http-StatusFound.md)
* [primitive StatusSeeOther](http-StatusSeeOther.md)
* [primitive StatusNotModified](http-StatusNotModified.md)
* [primitive StatusUseProxy](http-StatusUseProxy.md)
* [primitive StatusTemporaryRedirect](http-StatusTemporaryRedirect.md)
* [primitive StatusBadRequest](http-StatusBadRequest.md)
* [primitive StatusUnauthorized](http-StatusUnauthorized.md)
* [primitive StatusPaymentRequired](http-StatusPaymentRequired.md)
* [primitive StatusForbidden](http-StatusForbidden.md)
* [primitive StatusNotFound](http-StatusNotFound.md)
* [primitive StatusMethodNotAllowed](http-StatusMethodNotAllowed.md)
* [primitive StatusNotAcceptable](http-StatusNotAcceptable.md)
* [primitive StatusProxyAuthRequired](http-StatusProxyAuthRequired.md)
* [primitive StatusRequestTimeout](http-StatusRequestTimeout.md)
* [primitive StatusConflict](http-StatusConflict.md)
* [primitive StatusGone](http-StatusGone.md)
* [primitive StatusLengthRequired](http-StatusLengthRequired.md)
* [primitive StatusPreconditionFailed](http-StatusPreconditionFailed.md)
* [primitive StatusRequestEntityTooLarge](http-StatusRequestEntityTooLarge.md)
* [primitive StatusRequestURITooLong](http-StatusRequestURITooLong.md)
* [primitive StatusUnsupportedMediaType](http-StatusUnsupportedMediaType.md)
* [primitive StatusRequestedRangeNotSatisfiable](http-StatusRequestedRangeNotSatisfiable.md)
* [primitive StatusExpectationFailed](http-StatusExpectationFailed.md)
* [primitive StatusTeapot](http-StatusTeapot.md)
* [primitive StatusPreconditionRequired](http-StatusPreconditionRequired.md)
* [primitive StatusTooManyRequests](http-StatusTooManyRequests.md)
* [primitive StatusRequestHeaderFieldsTooLarge](http-StatusRequestHeaderFieldsTooLarge.md)
* [primitive StatusUnavailableForLegalReasons](http-StatusUnavailableForLegalReasons.md)
* [primitive StatusInternalServerError](http-StatusInternalServerError.md)
* [primitive StatusNotImplemented](http-StatusNotImplemented.md)
* [primitive StatusBadGateway](http-StatusBadGateway.md)
* [primitive StatusServiceUnavailable](http-StatusServiceUnavailable.md)
* [primitive StatusGatewayTimeout](http-StatusGatewayTimeout.md)
* [primitive StatusHTTPVersionNotSupported](http-StatusHTTPVersionNotSupported.md)
* [primitive StatusNetworkAuthenticationRequired](http-StatusNetworkAuthenticationRequired.md)
* [interface Logger](http-Logger.md)
* [interface ServerNotify](http-ServerNotify.md)
* [actor HTTPServer](http-HTTPServer.md)
* [primitive ChunkedTransfer](http-ChunkedTransfer.md)
* [primitive StreamTransfer](http-StreamTransfer.md)
* [primitive OneshotTransfer](http-OneshotTransfer.md)
* [type TransferMode](http-TransferMode.md)
* [class Payload](http-Payload.md)
* [primitive MimeTypes](http-MimeTypes.md)
* [interface HTTPSession](http-HTTPSession.md)
* [primitive ParseError](http-ParseError.md)
* [class HTTPParser](http-HTTPParser.md)
* [primitive AuthFailed](http-AuthFailed.md)
* [primitive ConnectionClosed](http-ConnectionClosed.md)
* [primitive ConnectFailed](http-ConnectFailed.md)
* [type HTTPFailureReason](http-HTTPFailureReason.md)
* [interface HTTPHandler](http-HTTPHandler.md)
* [interface HandlerFactory](http-HandlerFactory.md)
* [primitive DiscardLog](http-DiscardLog.md)
* [class ContentsLog](http-ContentsLog.md)
* [class CommonLog](http-CommonLog.md)
* [class HTTPClient](http-HTTPClient.md)
