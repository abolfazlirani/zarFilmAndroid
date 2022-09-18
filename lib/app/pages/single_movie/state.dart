import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../gen/json/base/FromJsonComment.dart';
import '../../../gen/json/base/FromJsonSinglePost.dart';

class SingleMovieState {
  var isloading =false.obs;
  var isReplySomone =false.obs;
  var spoilStatus =false.obs;
  var notifStatus =false.obs;
  var bookmarkStatus =false.obs;
  var commentLoading =false.obs;
  var likeLoading =false.obs;
  var notifLoading =false.obs;
  var bookmarkLoading =false.obs;
  var replyone ="".obs;
  var replyid ="".obs;
  var percent_like ="".obs;
  var count_total ="".obs;
  var commentController =TextEditingController();
  List<CommentModel> commentList = [];
  FromJsonSinglePost fromJsonSinglePost  = FromJsonSinglePost();
  SingleMovieState() {
    ///Initialize variables
  }
}
