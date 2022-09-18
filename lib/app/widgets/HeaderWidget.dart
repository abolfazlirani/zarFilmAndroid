import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:zarfilm_android_tv/app/common/app_config.dart';

import '../common/app_icons.dart';

class HeaderWidget extends StatefulWidget {
  bool isHomePage;

  HeaderWidget({this.isHomePage=false});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return  GetLTRWidget(
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 2.h, 16, 0),
        height: 9.h,
        child: Stack(
          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 8.w,
                  height: 8.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all((1.5).w),
                  child: MaterialButton(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      child: SvgPicture.string(
                        IconsUtils.user,
                        color: Colors.white,
                        width: 5.w,
                        height: 5.w,
                      )),
                ),
                Row(
                  children: [
                    Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all((1.5).w),
                      child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10)),
                          onPressed: () {},
                          child: SvgPicture.string(
                            IconsUtils.searchIcon,
                            color: Colors.white,
                            width: 5.w,
                            height: 5.w,
                          )),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                   if(widget.isHomePage) Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all((1).w),
                      child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10)),
                          onPressed: () {},
                          child: SvgPicture.string(
                            IconsUtils.menuIcon,
                            color: Colors.white,
                          )),
                    ),
                   if(!widget.isHomePage) Container(
                      width: 8.w,
                      height: 8.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all((1).w),
                      child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10)),
                          onPressed: () {
                            Get.back();
                          },
                          child: SvgPicture.string(
                            IconsUtils.nextIcon,
                            color: Colors.white,
                            width: 5.w,
                            height: 5.w,
                          )),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/image/logo.png",
                height: 5.h,
                width: 5.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
