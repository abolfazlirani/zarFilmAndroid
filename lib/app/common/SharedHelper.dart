import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  late SharedPreferences prefs;

  static Future<SharedHelper> getInstance() async {
    SharedHelper s = new SharedHelper();
    await s.init();
    return s;
  }

  Future<SharedPreferences> init() async {
    prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  Future<bool?> getIslogin() async {
    return prefs.getBool("islogin");
  }

  Future<String?> getCartToken() async {
    return prefs.getString("cartToken");
  }

  String getUserFavorite() {
    return prefs.getString("userfavorite") ?? "172732";
  }

  String getLanguageModel() {
    return prefs.getString("languageModel") ?? "";
  }
  String getWebdomin() {
    return prefs.getString("webDomin") ?? "";
  }

  Future<String?> getToken() async {
    return prefs.getString("token");
  }

  String getUserJson()  {
    return prefs.getString("userJson")??"";
  }
  String getCountryModel()  {
    return prefs.getString("countryModel2")??"";
  }
  String getFireToken()  {
    return prefs.getString("fcmtoken")??"";
  }
  String getProfileModel()  {
    return prefs.getString("profileModel")??"";
  }

  Future<String> getLanguage() async {
    return prefs.getString("language") ?? "tr";
  }

  Future<String> getCurrency() async {
    return prefs.getString("currency") ?? "TL";
  }

  Future<String> getCartBadge() async {
    return prefs.getString("cartbadge") ?? "0";
  }

  void setToken(String userToken) {
    prefs.setString("token", userToken);
  }

  void setUserCartToken(String userToken) {
    prefs.setString("cartToken", userToken);
  }

  void setIslogin(bool isLogin) {
    prefs.setBool("isLogin", isLogin);
  }
  void setwebDomin(String isLogin) {
    prefs.setString("webDomin", isLogin);
  }
  void setProfileModel(String profile) {
    prefs.setString("profileModel", profile);
  }

  void setUserJson(String userJson) {
    prefs.setString("userJson", userJson);
  }

  void setCurrency(String currency) {
    prefs.setString("currency", currency);
  }

  void setLanguage(String language) {
    prefs.setString("language", language);
  }
  void setCountryModel(String country) {
    prefs.setString("countryModel2", country);
  }
  void setLanguageModel(String languageJson) {
    prefs.setString("languageModel", languageJson);
  }

  bool getLogin() {
    return prefs.getBool("isLogin") ?? false;
  }

  bool getIsFirst() {
    return prefs.getBool("newIsfirst2") ?? true;
  }

  void setuserFavorite(source) {
    prefs.setString("userfavorite", source);
  }

  void setcartBadge(source) {
    prefs.setString("cartbadge", source);
  }

  void setIsFirsttime(source) {
    prefs.setBool("newIsfirst2", source);
  }

  /// Splash Functions
  void setSplashBanners(source) {
    prefs.setString("splash-banners", source);
  }

  void setSplashPop(source) {
    prefs.setString("splash-pop", source);
  }

  void setSplashRec(source) {
    prefs.setString("splash-rec", source);
  }

  void setSplashinifinity(source) {
    prefs.setString("splash-infinty", source);
  }

  void setSplashMenu(source) {
    prefs.setString("splash-menu", source);
  }
  void setFireToken(source) {
    prefs.setString("fcmtoken", source);
  }
  void setHomeTime(int source) {
    prefs.setInt("time_home", source);
  }

  int getHomeTime()  {
    return prefs.getInt("time_home") ?? 0;
  }
  void setCatTime(int source) {
    prefs.setInt("time_cat", source);
  }

  int getCatTime()  {
    return prefs.getInt("time_cat") ?? 0;
  }

  Future<String> getSplashBanners() async {
    return prefs.getString("splash-banners") ?? "";
  }

  Future<String> getSplashPop() async {
    return prefs.getString("splash-pop") ?? "";
  }

  Future<String> getSplashRec() async {
    return prefs.getString("splash-rec") ?? "";
  }

  Future<String> getSplashInfinity() async {
    return prefs.getString("splash-infinty") ?? "";
  }

  Future<String> getSplashMenu() async {
    return prefs.getString("splash-menu") ?? "";
  }
}
