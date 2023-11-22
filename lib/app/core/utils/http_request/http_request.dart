import 'package:http/http.dart' as http;

class AppHttpRequest {
  static Future<http.Response> get({
    required String url,
    required String path,
    Map<String, dynamic>? header,
  }) async {
    try {
      return await http.get(Uri.https(
        url,
        path,
        header,
      ));
    } catch (e) {
      return http.Response.bytes([], 500);
    }
  }

  static Future<http.Response> post({
    required String url,
    required String path,
    required Object? body,
    Map<String, String>? header,
  }) async {
    try {
      return await http.post(
        Uri.https(url, path),
        body: body,
        headers: header,
      );
    } catch (e) {
      return http.Response.bytes([], 500);
    }
  }
}
