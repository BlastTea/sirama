part of 'services.dart';

/// Usage:
/// ```
/// try {
///   Response response = await ApiHelper.post(
///     '/api/endpoint',
///     body: {
///       'message': 'Hello World',
///     },
///   );
/// } catch (e) {
///   debugPrint(e.toString());
///   ApiHelper.handleError(e);
/// }
/// ```
class ApiHelper {
  static String url = 'https://dev-sirama.propertiideal.id';

  static const String _keyToken = 'token';
  static const String _keyCurrentUser = 'current_user';

  // static void _initialize() {
  //   if (_dioInstance != null) return;

  //   _dioInstance = Dio(
  //     BaseOptions(
  //       baseUrl: url,
  //       headers: {
  //         'Access-Control-Allow-Origin': '*',
  //       },
  //     ),
  //   );

  //   _dioInstance!.interceptors.add(
  //     InterceptorsWrapper(
  //       onRequest: (options, handler) async {
  //         SharedPreferences sharedPref = await SharedPreferences.getInstance();
  //         String? token = sharedPref.getString(_keyToken);

  //         if (token == null && options.method == 'POST' && !(options.uri.path == '/api/login' || options.uri.path == '/api/register')) {
  //           return handler.reject(
  //             DioException(
  //               requestOptions: options,
  //               message: 'Session is expired',
  //             ),
  //             true,
  //           );
  //         }

  //         if (options.method != 'GET' || options.path.contains('/api/fav') || options.path.contains('/api/detailskrinning') || options.path.contains('/api/skrinning') || options.path.contains('/api/riwayatskrinning') || options.path.contains('/api/detailriwayatskrinning') || options.path.contains('/api/chatme') || options.path.contains('/api/me')) {
  //           options.headers['Authorization'] = 'Bearer $token';
  //         }

  //         dynamic data;

  //         if (options.data is FormData) {
  //           data = '${(options.data as FormData).fields.fold('Fields : {', (previousValue, element) => '$previousValue${element.key}: ${element.value}, ')}}';
  //           data += '${(options.data as FormData).files.fold('Files : [', (previousValue, element) => '$previousValue${element.key}: ${element.value.filename}, ')}}';
  //           options.headers['Content-Type'] = 'multipart/form-data';
  //         } else {
  //           data = options.data;
  //           options.headers['Content-Type'] = 'application/json';
  //         }

  //         debugPrint('http request : ${options.method} ${options.uri} ${options.headers} $data');

  //         return handler.next(options);
  //       },
  //       onResponse: (response, handler) {
  //         debugPrint('http response : ${response.data is List<int> ? 'Intinya isi responsenya bytes 😁' : response.data}');
  //         handler.next(response);
  //       },
  //     ),
  //   );
  // }

  static Future<Map<String, String>> _getHeaders({bool ignoreAuthorization = false, bool isMultpartFormData = false}) async => {
        if (!ignoreAuthorization) 'Authorization': 'Bearer ${await _getToken()}',
        'Access-Control-Allow-Origin': '*',
        'Content-Type': isMultpartFormData ? 'multipar/form-data' : 'application/json',
      };

  static Future<String?> _getToken() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    String? token = sharedPref.getString(_keyToken);

    if (token == null) throw 'Session is expired';

    return token;
  }

  static http.StreamedResponse _onRequestTimeout() => http.StreamedResponse(
      Stream.fromIterable(
        [
          json.encode({'message': 'Request Timeout'}).codeUnits,
        ],
      ),
      408);

  static Future<dynamic> _request({
    required String method,
    required Uri uri,
    Map<String, dynamic>? body,
    bool ignoreAuthorization = false,
    bool decode = true,
    Duration? timeout,
  }) async {
    http.Request request = http.Request(method, uri);
    debugPrint('(http request) : $method ${request.url} $body');
    request.headers.addAll(await _getHeaders(ignoreAuthorization: ignoreAuthorization));
    if (body != null) request.body = json.encode(body);

    http.StreamedResponse response;
    if (timeout == null) {
      response = await request.send();
    } else {
      response = await request.send().timeout(timeout, onTimeout: _onRequestTimeout);
    }

    dynamic responseString = !decode && (response.statusCode > 199 && response.statusCode < 300) ? await response.stream.toBytes() : await response.stream.bytesToString();

    debugPrint('(http response) : $method ${request.url} ${response.statusCode} $body => $responseString');

    if ((response.statusCode < 200 && response.statusCode > 299) && (responseString.contains('<!doctype html>') || responseString.contains('<!DOCTYPE html>'))) throw responseString;

    if ((response.statusCode < 200 && response.statusCode > 299)) throw json.decode(responseString);

    if (!decode) return responseString;

    return json.decode(responseString);
  }

  static Future<dynamic> _requestMultipart({
    required String method,
    required Uri uri,
    Map<String, String>? fields,
    List<http.MultipartFile>? files,
    Duration? timeout,
  }) async {
    var request = http.MultipartRequest(method, uri);
    request.headers.addAll(await _getHeaders(isMultpartFormData: true));
    if (files != null) request.files.addAll(files);
    if (fields != null) request.fields.addAll(fields);

    debugPrint('(http request) : ${request.method} ${request.headers} ${request.fields}');

    http.StreamedResponse response;
    if (timeout == null) {
      response = await request.send();
    } else {
      response = await request.send().timeout(timeout, onTimeout: _onRequestTimeout);
    }

    dynamic responseString = await response.stream.bytesToString();

    debugPrint('(http response) : $method ${request.url} ${response.statusCode} $fields => $responseString');

    if ((response.statusCode < 200 && response.statusCode > 299)) throw json.decode(responseString);

    return json.decode(responseString);
  }

  static Future<void> signIn({
    required String username,
    required String password,
  }) async {
    dynamic response = await post(
      '/api/login',
      body: {
        'username': username,
        'password': password,
      },
      ignoreAuthorization: true,
    );

    String token = response['token'];

    currentUser = User.fromJson(response['user']);

    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    await sharedPref.setString(_keyToken, token);
    await sharedPref.setString(_keyCurrentUser, jsonEncode(currentUser!.toJson()));

    await getMe();
  }

  static Future<void> signOut() async {
    try {
      await post('/api/logout');
    } catch (e) {
      // Ignored, really
    }

    MyApp.chatmeBloc.add(SetChatMeToInitial());

    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.remove(_keyToken);
    sharedPref.remove(_keyCurrentUser);

    currentUser = null;

    while (NavigationHelper.canGoBack()) {
      NavigationHelper.back();
    }
    NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const WelcomePage()));
  }

  static Future<bool> signInWithToken() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    if (sharedPref.getString(_keyToken) == null) return false;

    currentUser = User.fromJson(jsonDecode(sharedPref.getString(_keyCurrentUser)!));

    try {
      await getMe();
    } catch (e) {
      if (e == 'Session is expired') {
        await signOut();
        await handleError(e);
        return false;
      }
    }

    return true;
  }

  static Future<void> getMe() async {
    dynamic response = await get('/api/me', ignoreAuthorization: false);

    if (response is String && (response.contains('<!doctype html>') || response.contains('<!DOCTYPE html>'))) throw 'Session is expired';

    currentUser?.userDetail = UserDetail.fromJson(response['data'][0]);

    if (currentUser?.userDetail?.fotoProfile != null) {
      try {
        currentUser?.userDetail?.fotoProfileData = await getBytesUri(Uri.parse('$url/storage/profile/${currentUser?.userDetail?.fotoProfile}')).then((value) => value.data);
      } catch (e) {
        // Ignored, really
      }
    }
  }

  static Future<dynamic> get(String path, {bool ignoreAuthorization = true}) => _request(method: 'GET', uri: Uri.parse('$url$path'), ignoreAuthorization: ignoreAuthorization);

  static Future<dynamic> getBytesUri(Uri uri, {Duration? timeout}) => _request(method: 'GET', uri: uri, decode: false, ignoreAuthorization: true, timeout: timeout);

  static Future<dynamic> post(String path, {Map<String, dynamic>? body, bool ignoreAuthorization = false}) => _request(method: 'POST', uri: Uri.parse('$url$path'), body: body, ignoreAuthorization: ignoreAuthorization);

  static Future<dynamic> postMultipart(
    String path, {
    Map<String, String>? fields,
    List<http.MultipartFile>? files,
    Duration? timeout,
  }) =>
      _requestMultipart(
        method: 'POST',
        uri: Uri.parse('$url$path'),
        fields: fields,
        files: files,
        timeout: timeout,
      );

  static Future<dynamic> put(String path, {Map<String, dynamic>? body}) => _request(method: 'PUT', uri: Uri.parse('$url$path'), body: body);

  static Future<dynamic> putMultipart(
    String path, {
    Map<String, String>? fields,
    List<http.MultipartFile>? files,
    Duration? timeout,
  }) =>
      _requestMultipart(
        method: 'PUT',
        uri: Uri.parse('$url$path'),
        fields: fields,
        files: files,
        timeout: timeout,
      );

  static Future<dynamic> delete(String path, {Map<String, dynamic>? body}) => _request(method: 'DELETE', uri: Uri.parse('$url$path'), body: body);

  static Future<void> handleError(Object e) async {
    if (e is String && e == 'Session is expired') {
      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const WelcomePage()));
      return await showInformationDialog('Sesi Anda telah berakhir');
    }

    if (e is Map && e['message'] != null) return showErrorDialog(e['message'].toString());

    if (e is FormatException) return showErrorDialog(e.source);

    return showErrorDialog(e.toString());
  }
}
