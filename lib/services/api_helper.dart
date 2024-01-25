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

          if (options.method != 'GET') {
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
        onError: (error, handler) {
          String? message;
          try {
            dynamic data = error.response?.data;
            if (data is Map && data['message'] is String) {
              message = data['message'];
            } else {
              message = data;
            }
          } catch (e) {
            message = error.message;
          }

          if (message == 'Session is expired') {
            while (NavigationHelper.canGoBack()) {
              NavigationHelper.back();
            }
            NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const WelcomePage()));
            message = 'Sesi Anda telah berakhir';
            showInformationDialog(message);
            return handler.next(error);
          }

          if (message != null) {
            showErrorDialog(message);
          }

          return handler.next(error);
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
  }

  static Future<void> signOut() async {
    await post('/api/logout');

    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.remove(_keyToken);
    sharedPref.remove(_keyCurrentUser);

    currentUser = null;

    while (NavigationHelper.canGoBack()) {
      NavigationHelper.back();
    }
    NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const WelcomePage()));
  }

  static Future<void> signInWithToken() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    if (sharedPref.getString(_keyToken) == null) return;

    currentUser = User.fromJson(jsonDecode(sharedPref.getString(_keyCurrentUser)!));
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
}