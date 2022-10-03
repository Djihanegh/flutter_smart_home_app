import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:flutter/services.dart';

import 'errors.dart';

mixin HttpHandlerMixin {
  String catchExceptions(Response? response, error) {
    String? msg;
    if (error is Exception) {
      try {
        if (error is HttpException) {
          switch (response?.statusCode) {
            case 400:
              msg = BadRequest().toString();
              break;
            case 401:
              msg = Unauthorized().toString();
              break;
            case 402:
              msg = PaymentRequired().toString();
              break;
            case 403:
              msg = Forbidden().toString();
              break;
            case 404:
              msg = Http404().toString();
              break;
            case 405:
              msg = MethodNotAllowed(response?.error).toString();
              break;
            case 406:
              msg = NotAcceptable(response?.error).toString();
              break;
            case 407:
              msg = ProxyAuthenticationRequired(response?.error).toString();
              break;
            case 408:
              msg = RequestTimeOut().toString();
              break;
            case 409:
              msg = Conflict(response?.error).toString();
              break;
            case 410:
              msg = Gone(response?.error).toString();
              break;
            case 413:
              msg = PayloadTooLarge(response?.error).toString();
              break;
            case 429:
              msg = TooManyRequests(response?.error).toString();
              break;
            case 500:
              msg = InternalServerError(response?.error).toString();
              break;
            case 501:
              msg = NotImplemented(response?.error).toString();
              break;
            case 502:
              msg = BadGateway(response?.error).toString();
              break;
            case 503:
              msg = ServiceUnavailable(response?.error).toString();
              break;
            case 504:
              msg = GatewayTimeOut(response?.error).toString();
              break;
            case 505:
              msg = HttpVersionNotSupported(response?.error).toString();
              break;
            case 506:
              msg = VariantsAlsoNegotiates(response?.error).toString();
              break;
            case 507:
              msg = InsufficientStorage(response?.error).toString();
              break;
            case 508:
              msg = LoopDetected(response?.error).toString();
              break;

            case 510:
              msg = NotExtended(response?.error).toString();
              break;
            case 511:
              msg = NetworkAuthRequired(response?.error).toString();
              break;
          }
        } else if (error is SocketException) {
          msg = NoInternetConnexion().toString();
        } else {
          msg = UnexpectedError().toString();
        }
      } on FormatException catch (_) {
        return FormatException(response?.error).toString();
      } on PlatformException catch (_) {
        return UnexpectedError().toString();
      } catch (_) {
        msg = UnexpectedError().toString();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        msg = UnexpectedError().toString();
      } else {
        msg = UnexpectedError().toString();
      }
    }

    return msg ?? "";
  }
}
