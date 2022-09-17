import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import 'package:zarfilm_android_tv/app/pages/single_movie/CommentController.dart';

import '../../gen/json/base/FromJsonComment.dart';
import '../common/app_icons.dart';

class CommentSinglewidget extends StatefulWidget {
  CommentModel commentModel;

  CommentSinglewidget(this.commentModel);


  @override
  State<CommentSinglewidget> createState() => _CommentSinglewidgetState();
}

class _CommentSinglewidgetState extends State<CommentSinglewidget> {
  bool isSpoilReview = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CommentController>(
      tag: "comment_${widget.commentModel.commentID.toString()}",
        init: CommentController(widget.commentModel),
        builder: (logic) {
          return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 80.w,
          height: 27.h,
          padding: EdgeInsets.all(3.w),
          margin: EdgeInsets.only(left: 3.w),
          decoration: BoxDecoration(
              color: "272727".toColor(),
              borderRadius:
              BorderRadius.circular(5)),
          child: Column(
            children: [
              Container(
                height: 5.h,
                child: Row(
                  children: [
                    Container(
                      child: SvgPicture.string(
                        IconsUtils.UserAvatarIcon,
                        color: AppColor.textGrey
                            .withOpacity(0.7),
                      ),
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.textGrey
                                .withOpacity(0.5),
                          ),
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            TextScroll(
                              widget.commentModel.commentAuthor ?? "",
                              textAlign:
                              TextAlign.right,
                              style: TextStyle(
                                  color: "d0d0d0"
                                      .toColor(),
                                  fontWeight:
                                  FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                            TextScroll(
                              widget.commentModel.commentDate ?? "",
                              textAlign:
                              TextAlign.right,
                              style: TextStyle(
                                  color: "d0d0d0"
                                      .toColor(),
                                  fontWeight:
                                  FontWeight.w300,
                                  fontSize: 8.sp),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              if( widget.commentModel.spoil.toString().contains("1") &&
                  isSpoilReview)Container(
                margin: EdgeInsets.symmetric(
                    vertical: 2.w),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1.w),
                      decoration: BoxDecoration(
                          color: AppColor.praimaryColor,
                          borderRadius: BorderRadius.circular(500)
                      ),
                      child: Text("این دیدگاه به دلیل اسپویل مخفی شده است",
                        style: TextStyle(fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),),
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      width: 17.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            isSpoilReview = false;
                            setState(() {});
                          },
                          padding: EdgeInsets.all(0.w),

                          child: Text("نمایش", style: TextStyle(fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColor.praimaryColor),)),
                    ),
                  ],
                ),
              ),


              if(!widget.commentModel.spoil.toString().contains("1") ||
                  !isSpoilReview) Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 2.w),
                    child: (!widget.commentModel.spoil.toString().contains(
                        "1") || !isSpoilReview) ? Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            widget.commentModel.commentContent ?? "",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: AppColor.textGrey,
                                fontSize: 9.sp),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ) : Container(),
                  )),
              Spacer(),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 15.w,
                        height: 7.w,

                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius
                                .circular(6),
                            border: Border.all(
                                color: true
                                    ? AppColor
                                    .praimaryColor
                                    : AppColor
                                    .textGrey)),
                        child: MaterialButton(
                        padding:
                        EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 1.w),
                          onPressed: (){
                            logic.sendCommentAction("like");

                          },
                          child: Row(
                            mainAxisSize:
                            MainAxisSize.min,
                            children: [
                              SvgPicture.string(
                                true
                                    ? IconsUtils
                                    .likeIcon
                                    : IconsUtils
                                    .disLikeIcon,
                                width: 15,
                                color: true
                                    ? AppColor
                                    .praimaryColor
                                    : AppColor
                                    .textGrey,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                logic.like.toString(),
                                style: TextStyle(
                                  color: true
                                      ? AppColor
                                      .praimaryColor
                                      : AppColor
                                      .textGrey,
                                  fontSize: 9.sp,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Container(
                        width: 15.w,
                        height: 7.w,

                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius
                                .circular(6),
                            border: Border.all(
                                color: false
                                    ? AppColor
                                    .praimaryColor
                                    : AppColor
                                    .textGrey.withOpacity(0.3))),
                        child: MaterialButton(
                          padding:
                          EdgeInsets.symmetric(
                              horizontal: 3.w,
                              vertical: 1.w),
                          onPressed: (){

                            logic.sendCommentAction("dislike");
                          },
                          child: Row(
                            mainAxisSize:
                            MainAxisSize.min,
                            children: [
                              SvgPicture.string(
                                false
                                    ? IconsUtils
                                    .likeIcon
                                    : IconsUtils
                                    .disLikeIcon,
                                width: 15,
                                color: false
                                    ? AppColor
                                    .praimaryColor
                                    : AppColor
                                    .textGrey,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                logic.dislike.toString(),
                                style: TextStyle(
                                  color: false
                                      ? AppColor
                                      .praimaryColor
                                      : AppColor
                                      .textGrey,
                                  fontSize: 9.sp,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding:
                        EdgeInsets.symmetric(
                            horizontal: 3.w,
                            vertical: 1.w),
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius
                                .circular(6),
                            color: AppColor
                                .praimaryColor
                                .withOpacity(0.1)),
                        child: Row(
                          mainAxisSize:
                          MainAxisSize.min,
                          children: [
                            SvgPicture.string(
                              IconsUtils
                                  .StarIconRate,
                              width: 15,
                              color: true
                                  ? AppColor
                                  .praimaryColor
                                  : AppColor
                                  .textGrey,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              widget.commentModel.videoRate.toString(),
                              style: TextStyle(
                                color: true
                                    ? AppColor
                                    .praimaryColor
                                    : AppColor
                                    .textGrey,
                                fontSize: 9.sp,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Container(
                        width: 15.w,
                        height: 7.w,


                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius
                                .circular(6),
                            color:
                            "2e2d33".toColor()),
                        child: MaterialButton(
                          padding:
                          EdgeInsets.symmetric(
                              horizontal: 3.w,
                              vertical: 1.w),
                          onPressed: (){
                            logic.replaySomone();
                          },
                          child: Row(
                            mainAxisSize:
                            MainAxisSize.min,
                            children: [
                              Text(
                                "پاسخ",
                                style: TextStyle(
                                  color: true
                                      ? AppColor
                                      .praimaryColor
                                      : AppColor
                                      .textGrey,
                                  fontSize: 9.sp,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
