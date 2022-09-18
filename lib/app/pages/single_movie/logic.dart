import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:zarfilm_android_tv/app/common/RequestInterface.dart';
import 'package:zarfilm_android_tv/app/common/app_config.dart';

import '../../../gen/json/base/FromJsonComment.dart';
import '../../../gen/json/base/FromJsonSinglePost.dart';
import '../../common/SharedHelper.dart';
import '../../common/app_api.dart';
import 'state.dart';

class SingleMovieLogic extends GetxController implements RequestInterface {
  final SingleMovieState state = SingleMovieState();

  late ApiRequster apiRequster;

  String action = "";
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
    state.isloading(true);
    update();
    //apiRequster.request("single?post_id=${258069}", ApiRequster.MHETOD_GET, 1);
  }
  void sendCommentRequest(){
    apiRequster.request("comments?post_id=${postID}", ApiRequster.MHETOD_GET, 2);
    //apiRequster.request("single?post_id=${258069}", ApiRequster.MHETOD_GET, 1);
  }  void sendPostCommentRequest()async{
    state.commentLoading(true);
    String ip =await Constant.getIP();
    SharedHelper sharedHelper =await SharedHelper.getInstance();
    String userid = sharedHelper.getUserFavorite();
    var bodu = {
      "user_id":userid,
      "post_id":postID,
      "user_ip":ip,
      "spoil":state.spoilStatus.value?"1":"0",
      "comment_content":state.commentController.text,
    };
    if(state.isReplySomone.value){
      bodu['responseID'] = state.replyid.value;
    }
    print('SingleMovieLogic.sendPostCommentRequest = $bodu');
    apiRequster.request("sendComment", ApiRequster.MHETOD_POST, 3,body: bodu);
    //apiRequster.request("single?post_id=${258069}", ApiRequster.MHETOD_GET, 1);
  }
  void sendCommentAction(String s) async{
    state.likeLoading(true);
    SharedHelper sharedHelper =await SharedHelper.getInstance();
    String userid = sharedHelper.getUserFavorite();
    action=s;
    var bodu = {
      "userID":userid,
      "postID":postID,
      "type":s,
    };
    apiRequster.request("likeDisLikePost", ApiRequster.MHETOD_POST, 6,body: bodu);

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
        parseJsonFromSingle(source);
        break;
      case 2 :
        parseJsonFromComment(source);
        break;
      case 3 :
        parseJsonFromSendComment(source);
        break;
          case 4 :
        parseJsonFromSendNotif(source);
        break;
           case 5 :
        parseJsonFromSendBookmark(source);
        break;
               case 6 :
        parseJsonFromlikedislike(source);
        break;
    }
  }

  void parseJsonFromSingle(source) {
    state.fromJsonSinglePost = FromJsonSinglePost.fromJson(jsonDecode(source));
    state.percent_like.value = state.fromJsonSinglePost.percentLike.toString();
    state.count_total.value = state.fromJsonSinglePost.likeDisCount.toString();
    state.isloading(false);
    update();
    sendCommentRequest();
  }

  void parseJsonFromComment(source) {
    state.commentList.addAll(FromJsonCommentes.fromJson(jsonDecode(source)).listFrom);
    update();
  }

  void parseJsonFromSendComment(source) {
    Constant.hideKeyboard(Get.context!);

    state.commentLoading(false);
    if (jsonDecode(source)['flag']) {
      Constant.showMessege("نظر شما با موفقیت ثبت شد");
    }else{
      Constant.showMessege("نظر شما ثبت نشد");

    }

  }

  void sendNotifRequest()async {
    state.notifLoading.value =true;

    SharedHelper sharedHelper =await SharedHelper.getInstance();
    String userid = sharedHelper.getUserFavorite();
    var bodu = {
      "userID":userid,
      "postID":postID,
    };

    apiRequster.request("addToNotif", ApiRequster.MHETOD_POST, 4,body: bodu);
  }
  void sendBookRequest()async {
    state.bookmarkLoading.value =true;

    SharedHelper sharedHelper =await SharedHelper.getInstance();
    String userid = sharedHelper.getUserFavorite();
    var bodu = {
      "userID":userid,
      "postID":postID,
    };

    apiRequster.request("addToWishList", ApiRequster.MHETOD_POST, 5,body: bodu);
  }

  void parseJsonFromSendNotif(source) {
    state.notifLoading.value =false;

    String messege = jsonDecode(source)['message'];
    state.notifStatus.value = jsonDecode(source)['falg'];
    Constant.showMessege(messege);
  }

  void parseJsonFromSendBookmark(source) {
    state.bookmarkLoading.value =false;

    String messege = jsonDecode(source)['message'];
    state.bookmarkStatus.value = jsonDecode(source)['falg'];
    Constant.showMessege(messege);
  }

  void parseJsonFromlikedislike(source) {
    state.likeLoading(false);
   state.percent_like.value = jsonDecode(source)['percent_like'].toString();
   state.count_total.value = jsonDecode(source)['count_total'].toString();
   Constant.showMessege(jsonDecode(source)['message']);

  }


}
