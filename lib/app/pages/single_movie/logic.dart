import 'package:get/get.dart';
import 'package:zarfilm_android_tv/app/common/RequestInterface.dart';

import '../../common/app_api.dart';
import 'state.dart';

class SingleMovieLogic extends GetxController implements RequestInterface {
  final SingleMovieState state = SingleMovieState();

  late ApiRequster apiRequster;

  String postID;

  SingleMovieLogic(this.postID);

  @override
  void onReady() {
    apiRequster  = ApiRequster(this , develperModel: true);
    // TODO: implement onReady
    super.onReady();
    sendHomeRequest();
  }
  void sendHomeRequest(){
    apiRequster.request("single?post_id=${postID}", ApiRequster.MHETOD_GET, 1);
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
        //parseJsonFromHome(source);
        break;
      case 2 :
        //parseJsonFromSplash(source);
        break;
    }
  }


}
