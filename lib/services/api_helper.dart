part of 'services.dart';

/// Usage:
/// ```
/// try {
///   Response response = await ApiHelper.post(
///     '/endpoint',
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
  // static String url = 'http://192.168.121.58:8000';
  static String url = 'https://dev-sirama.propertiideal.id';

  static const String _keyToken = 'token';
  static const String _keyCurrentUser = 'current_user';

  static Dio? _dioInstance;

  static _initialize() {
    if (_dioInstance != null) return;

    _dioInstance = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': '*',
        },
      ),
    );

    _dioInstance!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          SharedPreferences sharedPref = await SharedPreferences.getInstance();
          String? token = sharedPref.getString(_keyToken);

          if (token == null && options.method == 'POST' && !(options.uri.path == '/api/login' || options.uri.path == '/api/register')) {
            return handler.reject(
              DioException(
                requestOptions: options,
                message: 'Session is expired',
              ),
              true,
            );
          }

          if (options.method != 'GET' || options.path.contains('/api/fav') || options.path.contains('/api/detailskrinning') || options.path.contains('/api/skrinning') || options.path.contains('/api/riwayatskrinning') || options.path.contains('/api/detailriwayatskrinning') || options.path.contains('/api/chatme') || options.path.contains('/api/me')) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          dynamic data;

          if (options.data is FormData) {
            data = (options.data as FormData).fields;
          } else {
            data = options.data;
          }

          debugPrint('http request : ${options.method} ${options.uri} ${options.headers} $data');

          return handler.next(options);
        },
        onResponse: (response, handler) {
          debugPrint('http response : ${response.data}');
          handler.next(response);
        },
      ),
    );
  }

  static Future<void> signIn({
    required String username,
    required String password,
  }) async {
    Response response = await post(
      '/api/login',
      body: {
        'username': username,
        'password': password,
      },
    );

    String token = response.data['token'];

    currentUser = User.fromJson(response.data['user']);

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
    Response response = await get('/api/me');

    if (response.data is String && (response.data.contains('<!doctype html>') || response.data.contains('<!DOCTYPE html>'))) throw 'Session is expired';

    currentUser?.userDetail = UserDetail.fromJson(response.data['data'][0]);

    if (currentUser?.userDetail?.fotoProfile != null) {
      try {
        currentUser?.userDetail?.fotoProfileData = await getBytesUri(Uri.parse('$url/storage/profile/${currentUser?.userDetail?.fotoProfile}')).then((value) => value.data);
      } catch (e) {
        // Ignored, really
      }
    }
  }

  static Future<Response<Uint8List>> getBytesUri(Uri uri) {
    _initialize();
    return _dioInstance!.getUri(
      uri,
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: false,
        receiveTimeout: const Duration(seconds: 60),
      ),
    );
  }

  static Future<Response> get(String path) {
    _initialize();
    return _dioInstance!.get(path);
  }

  static Future<Response> post(String path, {Map<String, dynamic>? body}) {
    _initialize();
    return _dioInstance!.post(
      path,
      data: body,
    );
  }

  static Future<Response> put(String path, {Map<String, dynamic>? body}) {
    _initialize();
    return _dioInstance!.put(
      path,
      data: body,
    );
  }

  static Future<Response> delete(String path, {Map<String, dynamic>? body}) {
    _initialize();
    return _dioInstance!.delete(
      path,
      data: body,
    );
  }

  static Future<bool> handleError(Object e) async {
    if (e is DioException) {
      if (e.requestOptions.uri.host == 'i.ytimg.com') return false;

      String? message;
      try {
        dynamic data = e.response?.data;
        if (data is Map && data['message'] is String) {
          message = data['message'];
          if (message == 'Invalid user role') return false;
        } else {
          message = data;
        }
      } catch (ex) {
        message = e.message;
      }

      if (message == 'Session is expired') {
        while (NavigationHelper.canGoBack()) {
          NavigationHelper.back();
        }
        NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const WelcomePage()));
        message = 'Sesi Anda telah berakhir';
        await showInformationDialog(message);
        return true;
      }

      if (message != null) {
        await showErrorDialog(message);
        return true;
      }
    } else if (e is String && e == 'Session is expired') {
      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const WelcomePage()));
      await showInformationDialog('Sesi Anda telah berakhir');
      return true;
    }

    await showErrorDialog(e.toString());
    return true;
  }
}
