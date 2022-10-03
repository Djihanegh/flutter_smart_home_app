import 'dart:async';

import 'package:chopper/chopper.dart';

class Interceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    Request modified = Request(
      request.method,
      request.url,
      request.baseUrl,
      body: request.body,
      headers: request.headers,
      multipart: request.multipart,
      parameters: request.parameters,
      parts: request.parts,
    );
    return modified;
  }
}
