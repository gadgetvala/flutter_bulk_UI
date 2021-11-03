class ApiLinks {
  static const bool isStaging = false;
  static const String _devBase = "https://furball-pet-app.herokuapp.com";
  static const String _prodBase = "";

  final String baseUrl = "${isStaging ? _prodBase : _devBase}/api/v1";
  String get userBaseUrl => "/user";
  String get constantsURL => "/constant";

  // Auth related
  String get signUpURL => "$userBaseUrl/signup";
  String get loginURL => "$userBaseUrl/login";
  String get resentOtpURL => "$userBaseUrl/resentOTP";
  String get verifyAccountURL => "$userBaseUrl/verifyAccount";
  String get forgotPasswordURL => "$userBaseUrl/forgotPassword";
  String get resetPasswordURL => "$userBaseUrl/resetPassword";

  // User data
  String get updatePasswordURL => "$userBaseUrl/updateMyPassword";

  /// used for update and get user data
  String get profileURL => "$userBaseUrl/me";

  // Category Related
  String get categoryURL => "/category";
  String get categorySearchURL => "$categoryURL/search";

// Category Data
  String get categoryDataURL => "/categoryData";
  String get categoryDataSearchURL => "$categoryDataURL/search";
  // Category Data Table
  String get categoryDataTableURL => "/categoryDataTable";
  String get categoryDataTableSearchURL => "$categoryDataTableURL/search";
}
