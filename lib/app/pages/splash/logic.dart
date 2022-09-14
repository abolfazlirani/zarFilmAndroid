import 'dart:convert';

import 'package:get/get.dart';
import 'package:zarfilm_android_tv/app/common/RequestInterface.dart';
import 'package:zarfilm_android_tv/app/common/app_api.dart';
import 'package:zarfilm_android_tv/app/common/app_route.dart';

import '../../../gen/json/base/FromJsonSplash.dart';
import '../../../gen/json/base/HomeJsonDataModel.dart';
import 'state.dart';

class SplashLogic extends GetxController implements RequestInterface {
  final SplashState state = SplashState();

  late ApiRequster apiRequster;
  @override
  void onReady() {
    apiRequster  = ApiRequster(this , develperModel: true);
    // TODO: implement onReady
    super.onReady();
    sendHomeRequest();
  }
  void sendHomeRequest(){
    apiRequster.request("home", ApiRequster.MHETOD_GET, 1);
  }
  void sendAppDataRequest(){
    apiRequster.request("appData", ApiRequster.MHETOD_GET, 2);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void onError(String content, int reqCode, String bodyError) {
    // TODO: implement onError
  }

  @override
  void onStartReuqest(int reqCode) {
    // TODO: implement onStartReuqest
  }

  @override
  void onSucces(source, int reqCdoe) {
    // TODO: implement onSucces
    switch(reqCdoe){
      case 1 :
        parseJsonFromHome(source);
        break;
        case 2 :
          parseJsonFromSplash(source);
        break;
    }
  }
  FromJsonSplash fromJsonSplash = FromJsonSplash();
  HomeJsonDataModel homeJsonDataModel = HomeJsonDataModel();

  void parseJsonFromHome(source) {
     homeJsonDataModel = HomeJsonDataModel.fromJson(jsonDecode(source));
    sendAppDataRequest();
  }
  void parseJsonFromSplash(source) {
    fromJsonSplash = FromJsonSplash.fromJson(jsonDecode(source));
    Get.toNamed(Routes.HOME,arguments: [homeJsonDataModel,fromJsonSplash]);
  }
}
