import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import 'package:zarfilm_android_tv/app/common/app_config.dart';
import 'package:zarfilm_android_tv/app/common/app_icons.dart';
import 'package:zarfilm_android_tv/app/widgets/CommentSingleWidget.dart';
import 'package:zarfilm_android_tv/app/widgets/HeaderWidget.dart';
import 'package:zarfilm_android_tv/app/widgets/cover_badge.dart';

import 'logic.dart';

class SingleMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SingleMovieLogic(Get.arguments[0].toString()));
    final state = Get
        .find<SingleMovieLogic>()
        .state;

    return GetBuilder<SingleMovieLogic>(
        init: logic,
        builder: (logic) {
          final post = Get
              .find<SingleMovieLogic>()
              .state
              .fromJsonSinglePost;
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  if (!state.isloading.value &&
                      state.fromJsonSinglePost.title != null)
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          HeaderWidget(),
                          Container(
                            padding: EdgeInsets.all(16),
                            height: 25.h,
                            child: Row(
                              children: [
                                Container(
                                  width: 32.w,
                                  height: 25.h,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: GetCoverBadge(
                                      dubbed:
                                      (post.dubbed ?? "").contains("on"),
                                      subtitle: ((post.subtitle ?? "")
                                          .contains("on") &&
                                          (post.dubbed ?? "").contains("on") ==
                                              false),
                                      child: Image.network(
                                        post.image ?? "",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w,),
                                Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 0.w),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              if (post.release != null)
                                                Text(
                                                  post.release!
                                                      .elementAt(0)
                                                      .name ??
                                                      "",
                                                  style: TextStyle(
                                                      color: "d0d0d0".toColor(),
                                                      fontWeight: FontWeight
                                                          .w200,
                                                      fontSize: 13.sp),
                                                ),
                                              SizedBox(
                                                width: 1.w,
                                              ),
                                              Expanded(
                                                child: TextScroll(
                                                  post.title ?? "",
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: "d0d0d0".toColor(),
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 15.sp),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            post.faTitle ?? "",
                                            style: TextStyle(
                                                color: "d0d0d0".toColor()),
                                          ),
                                          //   SizedBox(height: 1.h,),
                                          Wrap(
                                            children: post.genre!
                                                .asMap()
                                                .entries
                                                .map((e) {
                                              return Container(
                                                margin: EdgeInsets.only(
                                                    left: 2.w),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 2.w,
                                                    vertical: 1.w),
                                                decoration: BoxDecoration(
                                                    color: "212121".toColor(),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        500000)),
                                                child: Text(
                                                  e.value.name ?? "",
                                                  style: TextStyle(
                                                      color: "d0d0d0".toColor(),
                                                      fontSize: 7.sp),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                          // SizedBox(height: 1.h,),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 3.w,
                                                    vertical: 1.w),
                                                decoration: BoxDecoration(
                                                    color: AppColor
                                                        .praimaryColor,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        500000)),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize
                                                      .min,
                                                  children: [
                                                    Text(
                                                      "مشاهده آنلاین",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 8.sp,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                      ),
                                                    ),
                                                    SvgPicture.string(
                                                      IconsUtils.onlinePlayIcon,
                                                      color: Colors.white,
                                                      width: 18,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 3.w,
                                                    vertical: 1.w),
                                                decoration: BoxDecoration(
                                                    color: AppColor
                                                        .praimaryColor
                                                        .withOpacity(0.3),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        500000)),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize
                                                      .min,
                                                  children: [
                                                    Text(
                                                      "دانلود",
                                                      style: TextStyle(
                                                        color:
                                                        AppColor.praimaryColor,
                                                        fontSize: 8.sp,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    SvgPicture.string(
                                                      IconsUtils.dlIcon,
                                                      color: AppColor
                                                          .praimaryColor,
                                                      width: 17,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          //  SizedBox(height: 1.h,),

                                          if ((post.likeDisCount ?? 0).toInt() >
                                              0)
                                            GetLTRWidget(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "(" +
                                                        post.likeDisCount
                                                            .toString() +
                                                        "رای)",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .w400,
                                                        fontSize: 7.sp),
                                                  ),
                                                  SizedBox(
                                                    width: 1.w,
                                                  ),
                                                  Text(
                                                    "${post.percentLike
                                                        .toString()}%",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontSize: 10.sp),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets
                                                        .symmetric(
                                                        horizontal: 3.w,
                                                        vertical: 1.w),
                                                    decoration: BoxDecoration(
                                                        color: "212121"
                                                            .toColor(),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            500000)),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          "نپسندیدم",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 6.sp,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 3,
                                                        ),
                                                        SvgPicture.string(
                                                          IconsUtils
                                                              .disLikeIcon,
                                                          width: 15,
                                                          color: "cd4b4b"
                                                              .toColor(),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 1.w,
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets
                                                        .symmetric(
                                                        horizontal: 3.w,
                                                        vertical: 1.w),
                                                    decoration: BoxDecoration(
                                                        color: "212121"
                                                            .toColor(),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            500000)),
                                                    child: Row(
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          "پسندیدم",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 6.sp,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 3,
                                                        ),
                                                        SvgPicture.string(
                                                          IconsUtils.likeIcon,
                                                          width: 15,
                                                          color: "2d9536"
                                                              .toColor(),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          GetLTRWidget(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 16.w,

                                  height: 5.h,

                                  decoration: BoxDecoration(
                                      color: "212121".toColor(),
                                      borderRadius:
                                      BorderRadius.circular(500000)),
                                  child: Obx(() {
                                    return MaterialButton(
                                      onPressed: () {
                                        logic.sendBookRequest();
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(500000)),
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 6.w),
                                      child: Row(

                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          state.bookmarkLoading.value
                                              ? Container(
                                            width: 2.w, height: 2.w,
                                            child: CircularProgressIndicator(
                                                valueColor: AlwaysStoppedAnimation<
                                                    Color>(
                                                    Colors.white)),
                                          )
                                              : SvgPicture.string(

                                            state.bookmarkStatus.value
                                                ? IconsUtils.bookmark
                                                : IconsUtils.bookmark,
                                            color: state.bookmarkStatus.value
                                                ? AppColor.praimaryColor
                                                : "d0d0d0".toColor(),
                                            width: 15,
                                          ),

                                        ],
                                      ),
                                    );
                                  }),
                                ),

                                Container(
                                  width: 16.w,
                                  height: 5.h,

                                  decoration: BoxDecoration(
                                      color: "212121".toColor(),
                                      borderRadius:
                                      BorderRadius.circular(500000)),
                                  child: Obx(() {
                                    return MaterialButton(
                                      onPressed: () {
                                        logic.sendNotifRequest();
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(500000)),
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 6.w),
                                      child: Row(

                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          state.notifLoading.value ? Container(
                                            width: 2.w, height: 2.w,
                                            child: CircularProgressIndicator(
                                                valueColor: AlwaysStoppedAnimation<
                                                    Color>(
                                                    Colors.white)),
                                          ) : SvgPicture.string(

                                            state.notifStatus.value
                                                ? IconsUtils.alarm
                                                : IconsUtils.noalarm,
                                            color: state.notifStatus.value
                                                ? AppColor.praimaryColor
                                                : "d0d0d0".toColor(),
                                            width: 15,
                                          ),

                                        ],
                                      ),
                                    );
                                  }),
                                ),

                                Container(
                                  height: 5.h,
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 0.w),
                                  decoration: BoxDecoration(
                                      color: "212121".toColor(),
                                      borderRadius:
                                      BorderRadius.circular(500000)),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                post.rate ?? "",
                                                style: TextStyle(
                                                  color: AppColor.praimaryColor,
                                                  fontSize: 11.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "/10",
                                                style: TextStyle(
                                                  color: "d0d0d0".toColor(),
                                                  fontSize: 7.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            post.vote ?? "",
                                            style: TextStyle(
                                              color: "d0d0d0".toColor(),
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Image.asset(
                                        "assets/image/imdb.png",
                                        color: AppColor.praimaryColor,
                                        width: 8.w,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 3.w,),
                                Container(
                                  height: 5.h,
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 9.w),
                                  decoration: BoxDecoration(
                                      color: "212121".toColor(),
                                      borderRadius:
                                      BorderRadius.circular(500000)),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "تریلر",
                                        style: TextStyle(
                                          color: "d0d0d0".toColor(),
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      SvgPicture.string(
                                        IconsUtils.playCricleIcon,
                                        color: AppColor.praimaryColor,
                                        width: 18,
                                      )
                                    ],
                                  ),
                                ),
                                //   SizedBox(width: 3.w,),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Wrap(
                              children: [
                                SvgPicture.string(
                                  IconsUtils.plotIcon,
                                  color: "d0d0d0".toColor(),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Text(
                                      "خلاصه داستان :",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: "d0d0d0".toColor()),
                                    )),
                                Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: SelectableText(
                                      post.plot ?? "",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: "d0d0d0".toColor()),
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Divider(),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SvgPicture.string(
                                              IconsUtils.ageIcon,
                                              color: AppColor.praimaryColor,
                                            ),
                                            Text(
                                              "رده سنی",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.textGrey,
                                                  fontSize: 9.sp),
                                            ),
                                            Text(
                                              post.age ?? "",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  color: AppColor.textGrey),
                                            ),
                                          ],
                                        ),
                                        height: 10.h,
                                        width: 18.w,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 4.h,
                                        decoration: BoxDecoration(
                                            color: AppColor.textGrey
                                                .withOpacity(0.3)),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SvgPicture.string(
                                              IconsUtils.langIcon,
                                              color: AppColor.praimaryColor,
                                            ),
                                            Text(
                                              "زبان ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.textGrey,
                                                  fontSize: 9.sp),
                                            ),
                                            Text(
                                              post.language ?? "",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,

                                                  color: AppColor.textGrey),
                                            ),
                                          ],
                                        ),
                                        height: 10.h,
                                        width: 18.w,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 4.h,
                                        decoration: BoxDecoration(
                                            color: AppColor.textGrey
                                                .withOpacity(0.3)),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SvgPicture.string(
                                              IconsUtils.qualityIcon,
                                              color: AppColor.praimaryColor,
                                            ),
                                            Text(
                                              "کیفیت",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.textGrey,
                                                  fontSize: 9.sp),
                                            ),
                                            Text(
                                              post.quality ?? "",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontWeight: FontWeight.w300,
                                                  color: AppColor.textGrey),
                                            ),
                                          ],
                                        ),
                                        height: 10.h,
                                        width: 18.w,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 4.h,
                                        decoration: BoxDecoration(
                                            color: AppColor.textGrey
                                                .withOpacity(0.3)),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SvgPicture.string(
                                              IconsUtils.subTitleIcon,
                                              color: AppColor.praimaryColor,
                                            ),
                                            Text(
                                              "زیرنویس",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.textGrey,
                                                  fontSize: 9.sp),
                                            ),
                                            Text(
                                              post.subtitle
                                                  .toString()
                                                  .contains("on")
                                                  ? "دارد"
                                                  : "ندارد",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  color: AppColor.textGrey),
                                            ),
                                          ],
                                        ),
                                        height: 10.h,
                                        width: 18.w,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 4.h,
                                        decoration: BoxDecoration(
                                            color: AppColor.textGrey
                                                .withOpacity(0.3)),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SvgPicture.string(
                                              IconsUtils.dubledIcon,
                                              color: AppColor.praimaryColor,
                                            ),
                                            Text(
                                              "دوبله فارسی",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColor.textGrey,
                                                  fontSize: 9.sp),
                                            ),
                                            Text(
                                              "دارد",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  color: AppColor.textGrey),
                                            ),
                                          ],
                                        ),
                                        height: 10.h,
                                        width: 18.w,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.string(
                                IconsUtils.CastIcon,
                                width: 25,
                                color: "747474".toColor(),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                post.type.toString().contains("series")
                                    ? "ستارگان و کارگردان"
                                    : "ستارگان",
                                style: TextStyle(
                                    color: AppColor.textGrey, fontSize: 9.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 16.h,
                            child: ListView(
                              padding: EdgeInsets.only(right: 2.w),
                              scrollDirection: Axis.horizontal,
                              children: post.cast!.asMap().entries.map((e) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 2.w),
                                    width: 22.w,
                                    height: 15.h,
                                    color: "272727".toColor(),
                                    // color: Colors.red,
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 12.h,
                                            child: CachedNetworkImage(
                                              errorWidget: (s, q, a) {
                                                return SvgPicture.string(
                                                  IconsUtils.UserAvatarIcon,
                                                  color: AppColor.textGrey
                                                      .withOpacity(0.7),
                                                );
                                              },
                                              imageUrl: e.value.image ?? "",
                                            )),
                                        Text(
                                          e.value.name ?? "",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: AppColor.textGrey,
                                              fontSize: 9.sp),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          if (post.awards
                              .toString()
                              .length > 5)
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 4.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: "272727".toColor(),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.string(
                                    IconsUtils.cupIcon,
                                    color: AppColor.praimaryColor,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(post.awards ?? "")
                                ],
                              ),
                            ),
                          if(post.lists!.isNotEmpty) SizedBox(
                            height: 2.h,
                          ),
                          if(post.lists!.isNotEmpty) Row(
                            children: [
                              SvgPicture.string(
                                IconsUtils.userList,
                                width: 25,
                                color: "747474".toColor(),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                "لیست های مرتبط کاربران",
                                style: TextStyle(
                                    color: AppColor.textGrey, fontSize: 9.sp),
                              )
                            ],
                          ),
                          if(post.lists!.isNotEmpty) SizedBox(
                            height: 1.h,
                          ),
                          if(post.lists!.isNotEmpty) Container(
                            height: 27.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: post.lists!.asMap().entries.map((e) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 2.w),
                                    width: 40.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                        color: AppColor.praimaryColor),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 24.h,
                                          decoration: BoxDecoration(
                                              color: "272727".toColor(),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                              )),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.network(
                                                    e.value.images!
                                                        .elementAt(0),
                                                    fit: BoxFit.cover,
                                                    height: 15.w,
                                                    width: 20.w,
                                                  ),
                                                  Image.network(
                                                    e.value.images!
                                                        .elementAt(1),
                                                    fit: BoxFit.cover,
                                                    height: 15.w,
                                                    width: 20.w,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Image.network(
                                                    e.value.images!
                                                        .elementAt(2),
                                                    fit: BoxFit.cover,
                                                    height: 15.w,
                                                    width: 20.w,
                                                  ),
                                                  Image.network(
                                                    e.value.images!
                                                        .elementAt(3),
                                                    fit: BoxFit.cover,
                                                    height: 15.w,
                                                    width: 20.w,
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                          padding:
                                                          EdgeInsets.all(
                                                              1.w),
                                                          child: Text(
                                                            e.value.title ?? "",
                                                            style: TextStyle(
                                                                color: AppColor
                                                                    .textGrey,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                                fontSize: 9.sp),
                                                            maxLines: 1,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                          ),
                                                        )),
                                                    Divider(),
                                                    Container(
                                                      padding:
                                                      EdgeInsets.all(1.w),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Text(
                                                            e.value.date ?? "",
                                                            style: TextStyle(
                                                                color: AppColor
                                                                    .textGrey,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                fontSize: 9.sp),
                                                            maxLines: 1,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            children: [
                                                              Text(
                                                                "تعداد :",
                                                                style: TextStyle(
                                                                    color: AppColor
                                                                        .textGrey,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                    fontSize:
                                                                    9.sp),
                                                                maxLines: 1,
                                                              ),
                                                              Text(
                                                                "${e.value
                                                                    .count ??
                                                                    0}",
                                                                style: TextStyle(
                                                                    color: AppColor
                                                                        .textGrey,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                    fontSize:
                                                                    9.sp),
                                                                maxLines: 1,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child: Text("سازنده : " +
                                                (e.value.userName ?? ""))),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          if(post.lists!.isNotEmpty)SizedBox(height: 3.h,),
                          if (state.commentList.isNotEmpty)
                            Row(
                              children: [
                                SvgPicture.string(
                                  IconsUtils.commentIcon,
                                  width: 25,
                                  color: "747474".toColor(),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "نظرات کاربران",
                                  style: TextStyle(
                                      color: AppColor.textGrey, fontSize: 9.sp),
                                )
                              ],
                            ),
                          if (state.commentList.isNotEmpty)
                            Container(
                              height: 30.h,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                state.commentList
                                    .asMap()
                                    .entries
                                    .map((e) {
                                  return CommentSinglewidget(e.value);
                                }).toList(),
                              ),
                            ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Obx(() {
                            return Row(
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "کاربر عزیز",
                                  style: TextStyle(
                                      color: AppColor.textGrey,
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2.w,),
                                if(state.isReplySomone.value)Text(
                                  "پاسخ خود را به " + state.replyone.value +
                                      "  بنویسید",
                                  style: TextStyle(
                                      color: AppColor.textGrey, fontSize: 9.sp),
                                ),
                                if(!state.isReplySomone.value)Text(
                                  "نظرخودتان را ارسال کنید.",
                                  style: TextStyle(
                                      color: AppColor.textGrey, fontSize: 9.sp),
                                ),
                              ],
                            );
                          }),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 100.w,
                              height: 30.h,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 2.w, vertical: 2.w),
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                  color: "272727".toColor(),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: TextField(
                                        controller: state.commentController,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "نظر خود را اینجا بنویسید",
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 8.sp)),
                                      )),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Obx(() {
                                            return Container(
                                              height: 6.h,
                                              child: MaterialButton(
                                                onPressed: () {
                                                  logic
                                                      .sendPostCommentRequest();
                                                },
                                                padding: EdgeInsets.zero,
                                                child: Center(
                                                    child: !state.commentLoading
                                                        .value
                                                        ? Text(
                                                      "ارسال نظر",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold),
                                                    )
                                                        : CircularProgressIndicator(
                                                        valueColor: AlwaysStoppedAnimation<
                                                            Color>(
                                                            Colors.white))),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                  color: AppColor
                                                      .praimaryColor),
                                            );
                                          })),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Obx(() {
                                        return AnimatedContainer(
                                          duration: Duration(milliseconds: 300),
                                          height: 6.h,
                                          width: 20.w,
                                          child: MaterialButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () {
                                              state.spoilStatus(
                                                  !state.spoilStatus.value);
                                            },
                                            child: Center(
                                                child: state.spoilStatus.value
                                                    ? Icon(Icons.check)
                                                    : Text(
                                                  "اسپویل",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: AppColor
                                                          .praimaryColor),
                                                )),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              color: state.spoilStatus.value
                                                  ? AppColor.praimaryColor
                                                  : "181818".toColor()),
                                        );
                                      })
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                        ],
                      ),
                    ),
                  if (state.isloading.value)
                    Align(
                        child: Container(
                            width: 5.w,
                            height: 5.w,
                            child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.orange))))
                ],
              ),
            ),
          );
        });
  }
}
