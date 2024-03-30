class ApiEndpoint {
  static const String baseUrl = 'https://jariyahmu.vercel.app/';
  static const String postSignup = '${baseUrl}auth/signup';
  static const String postLogin = '${baseUrl}auth/login';
  static const String getUserProfile = '${baseUrl}user/profile';
  static const String patchUserProfile = '${baseUrl}user/profile';
  static const String getFeed = '${baseUrl}feed';
}
