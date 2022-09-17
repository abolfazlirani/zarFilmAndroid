import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:zarfilm_android_tv/app/common/RequestInterface.dart';
import 'package:zarfilm_android_tv/app/common/SharedHelper.dart';
import 'package:zarfilm_android_tv/app/pages/single_movie/logic.dart';

import '../../../gen/json/base/FromJsonComment.dart';
import '../../common/app_api.dart';

class CommentController extends GetxController implements RequestInterface {

  CommentModel commentModel;
  String action = "";
  int like = 0;
  int dislike = 0;

  CommentController(this.commentModel);

  void sendCommentAction(String s) async{
    SharedHelper sharedHelper =await SharedHelper.getInstance();
    String userid = sharedHelper.getUserFavorite();
    action=s;
    var bodu = {
      "user_ip":userid,
      "comment_id":commentModel.commentID.toString(),
      "type":s,
    };
    apiRequster.request("commentLike", ApiRequster.MHETOD_POST, 1,body: bodu);

  }

  late ApiRequster apiRequster;
  @override
  void onReady() {

    apiRequster  = ApiRequster(this , develperModel: true);
    // TODO: implement onReady
    super.onReady();
    setCount();
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
    }
  }

  void parseJsonFromHome(source) {

    bool flag = jsonDecode(source)['flag'];
    if (flag) {
      print('CommentController.parseJsonFromHome = $action');
      if(action.contains("dislike")){
        dislike++;
        update();
      }else{
        like++;
        update();
      }
      action="";
      print('CommentController.parseJsonFromHome = $dislike - $like');

    }else{
      ScaffoldMessenger.of(Get.context!).showSnackBar(
          SnackBar(content: Text("شما قبلا نظر خود را ثبت کرده اید",textAlign: TextAlign.right,style: TextStyle(
            fontFamily: "Schyler"
          ),))
      );
    }
  }

  void setCount() {
    like = commentModel.commentLike??0;
    dislike = commentModel.commentDislike??0;
    update();
  }

  void replaySomone()async{
    SharedHelper sharedHelper =await SharedHelper.getInstance();
    String userid = sharedHelper.getUserFavorite();
    Get.find<SingleMovieLogic>().state.isReplySomone(true);
    Get.find<SingleMovieLogic>().state.replyone(commentModel.commentAuthor.toString());
    Get.find<SingleMovieLogic>().state.replyid(commentModel.commentID.toString());
  }
}