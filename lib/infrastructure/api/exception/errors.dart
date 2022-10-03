class BadRequest implements Exception {
  final dynamic message;

  BadRequest([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Bad Request: $message";
  }
}

class Unauthorized implements Exception {
  final dynamic message;

  Unauthorized([this.message]);

  @override
  String toString() {
    Object message = this.message;
    return "Unauthorized: $message";
  }
}

class PaymentRequired implements Exception {
  final dynamic message;

  PaymentRequired([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Payment @required: $message";
  }
}

class NotAcceptable implements Exception {
  final dynamic message;

  NotAcceptable([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Not Acceptable: $message";
  }
}

class ProxyAuthenticationRequired implements Exception {
  final dynamic message;

  ProxyAuthenticationRequired([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Proxy Authentication @required: $message";
  }
}

class Conflict implements Exception {
  final dynamic message;

  Conflict([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Conflict: $message";
  }
}

class Gone implements Exception {
  final dynamic message;

  Gone([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Gone: $message";
  }
}

class PayloadTooLarge implements Exception {
  final dynamic message;

  PayloadTooLarge([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Payload Too Large: $message";
  }
}

class TooManyRequests implements Exception {
  final dynamic message;

  TooManyRequests([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Too Many Requests: $message";
  }
}

class NotImplemented implements Exception {
  final dynamic message;

  NotImplemented([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Not Implemented: $message";
  }
}

class BadGateway implements Exception {
  final dynamic message;

  BadGateway([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Bad Gateway: $message";
  }
}

class ServiceUnavailable implements Exception {
  final dynamic message;

  ServiceUnavailable([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Service Unavailable: $message";
  }
}

class GatewayTimeOut implements Exception {
  final dynamic message;

  GatewayTimeOut([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Gateway Timeout: $message";
  }
}

class HttpVersionNotSupported implements Exception {
  final dynamic message;

  HttpVersionNotSupported([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Http Version Not Supported : $message";
  }
}

class VariantsAlsoNegotiates implements Exception {
  final dynamic message;

  VariantsAlsoNegotiates([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Variants Also Negotiates: $message";
  }
}

class InsufficientStorage implements Exception {
  final dynamic message;

  InsufficientStorage([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Insufficient Storage: $message";
  }
}

class LoopDetected implements Exception {
  final dynamic message;

  LoopDetected([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Loop Detected: $message";
  }
}

class NotExtended implements Exception {
  final dynamic message;

  NotExtended([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Not Extended: $message";
  }
}

class NetworkAuthRequired implements Exception {
  final dynamic message;

  NetworkAuthRequired([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Network Authentication @required: $message";
  }
}

class MethodNotAllowed implements Exception {
  final dynamic message;

  MethodNotAllowed([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Method Not Allowed: $message";
  }
}

class Forbidden implements Exception {
  Forbidden();
  @override
  String toString() {
    return "Forbidden: 403";
  }
}

class Http404 implements Exception {
  Http404();
  @override
  String toString() {
    return "Not Found";
  }
}

class PermissionDenied implements Exception {
  final dynamic message;

  PermissionDenied([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Permission Denied: $message";
  }
}

class RequestTimeOut implements Exception {
  RequestTimeOut();
  @override
  String toString() {
    return "Request Timeout.";
  }
}

class NoInternetConnexion implements Exception {
  NoInternetConnexion();
  @override
  String toString() {
    return "No Internet Connexion.";
  }
}

class DefaultError implements Exception {
  final dynamic message;

  DefaultError([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Received invalid status code: $message";
  }
}

class UnexpectedError implements Exception {
  UnexpectedError();
  @override
  String toString() {
    return "Unexpected error occurred";
  }
}

class FormatException implements Exception {
  final dynamic message;

  FormatException([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Unexpected error occurred: $message";
  }
}

class InternalServerError implements Exception {
  final dynamic message;

  InternalServerError([this.message]);
  @override
  String toString() {
    Object message = this.message;
    return "Internal Server Error: $message";
  }
}
