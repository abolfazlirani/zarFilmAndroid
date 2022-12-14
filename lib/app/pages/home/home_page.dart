/// Generated by Flutter GetX Starter on 2022-09-05 15:53
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:widget_slider/controller.dart';
import 'package:widget_slider/widget_slider.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import 'package:zarfilm_android_tv/app/common/app_config.dart';
import 'package:zarfilm_android_tv/app/widgets/cover_badge.dart';

import '../../../gen/json/base/HomeJsonDataModel.dart';
import '../../common/app_icons.dart';
import '../../common/app_route.dart';
import '../../widgets/HeaderWidget.dart';
import '../../widgets/HomeSeriesWidget.dart';
import '../../widgets/HomeMiniWidget.dart';
import '../../widgets/HomeGenreWidget.dart';
import 'home_logic.dart';
import 'home_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


  @override
  void dispose() {
    Get.delete<HomeLogic>();
    super.dispose();
  }
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  @override
  Widget build(BuildContext context) {

    final images = const [
      'https://i.picsum.photos/id/816/200/300.jpg?hmac=4O5XSGjimzcjZYOXpVb_--v3rGzmS-3chmG2L1MS-mc',
      'https://i.picsum.photos/id/436/200/300.jpg?hmac=OuJRsPTZRaNZhIyVFbzDkMYMyORVpV86q5M8igEfM3Y',
      'https://i.picsum.photos/id/645/200/300.jpg?hmac=fiKW3Nj8r0CWJQY3S-kkeT8PAfvKhA8igd9GIRk41Yw',
      'https://i.picsum.photos/id/281/200/300.jpg?hmac=KCN8F5QTgxHdeQxLpZ5BOuUEVQEp8jAedlLSRERW7CY',
      'https://i.picsum.photos/id/816/200/300.jpg?hmac=4O5XSGjimzcjZYOXpVb_--v3rGzmS-3chmG2L1MS-mc',
    ];


    return Scaffold(
      backgroundColor: "191919".toColor(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(height: 1, color: AppColor.praimaryColor,),
          BottomNavigationBar(

            showUnselectedLabels: true,

            backgroundColor: "181818".toColor(),
            selectedLabelStyle: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 8.sp),
            unselectedLabelStyle: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 8.sp),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: SvgPicture.string(
                IconsUtils.homeIcon, color: Colors.white,),
                  label: "????????",
                  activeIcon: SvgPicture.string(
                    IconsUtils.homeIcon, color: AppColor.praimaryColor,)),
              BottomNavigationBarItem(icon: SvgPicture.string(
                IconsUtils.moviesIcon, color: Colors.white,),
                label: "???????? ????",
                activeIcon: SvgPicture.string(
                  IconsUtils.moviesIcon, color: AppColor.praimaryColor,),),
              BottomNavigationBarItem(icon: SvgPicture.string(
                IconsUtils.seriesIcon, color: Colors.white,),
                  label: "?????????????????",
                  activeIcon: SvgPicture.string(
                    IconsUtils.seriesIcon, color: AppColor.praimaryColor,)),

              BottomNavigationBarItem(icon: SvgPicture.string(
                IconsUtils.watchListIcon, color: Colors.white,),
                  label: "???????????????????",
                  activeIcon: SvgPicture.string(
                    IconsUtils.watchListIcon, color: AppColor.praimaryColor,)),
              BottomNavigationBarItem(icon: SvgPicture.string(
                IconsUtils.wishlistIcon, color: Colors.white,),
                  label: "?????????????????????",
                  activeIcon: SvgPicture.string(
                    IconsUtils.wishlistIcon, color: AppColor.praimaryColor,)),
            ],),
        ],
      ),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidget(isHomePage: true),
                WidgetSlider(
                  fixedSize: 200,
                  infiniteScroll: true,

                  onMove: (index) {
                    state.mainSug.value =
                        state.homeJsonDataModel.suggestions!.elementAt(index);
                  },
                  proximity: 0.35,
                  controller: controller,
                  itemCount: state.homeJsonDataModel.suggestions!.length,
                  itemBuilder: (context, index, activeIndex) {
                    Suggestions sugg = state.homeJsonDataModel.suggestions!
                        .elementAt(index);
                    return MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: (){
                        Get.toNamed(Routes.SINGLEMOVIE,arguments: [sugg.postID??""]);

                      },
                      child: AspectRatio(
                        aspectRatio: 9/16,
                        child: GetCoverBadge(dubbed: sugg.dubbed!.contains("on")
                          ,
                          subtitle: (sugg.subtitle!.contains("on") &&
                              sugg.dubbed!.contains("on") == false),
                          child: Container(
                            //margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(sugg.image ?? ""),
                              ),


                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  child: Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 8.w,
                              height: 8.w,
                              decoration: BoxDecoration(
                                  color: AppColor.praimaryColor.withOpacity(
                                      0.1),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.all((1.8).w),
                              child: Center(
                                child: SvgPicture.string(IconsUtils.PlayIcon,
                                  color: AppColor.praimaryColor,  width: 5.w,
                                  height: 5.w,),
                              ),
                            ),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                Text("TOP", style: TextStyle(
                                    color: AppColor.praimaryColor),),
                                Text(
                                  "10", style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            SizedBox(height: 6,),

                            Text(state.mainSug.value.type ?? "", style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w200),),

                          ],
                        ),
                        Expanded(child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Column(
                            children: [
                              TextScroll(
                                state.mainSug.value.title ?? ''
                                , style: TextStyle(fontWeight: FontWeight.bold),
                                delayBefore: Duration(
                                  milliseconds: 300,
                                ),

                              ),
                              Text("2022",
                                style: TextStyle(fontWeight: FontWeight.w200),),
                            ],
                          ),
                        )),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 8.w,
                              height: 8.w,
                              decoration: BoxDecoration(
                                  color: AppColor.praimaryColor.withOpacity(
                                      0.1),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.all((1.8).w),
                              child: Center(
                                child: SvgPicture.string(IconsUtils.StarIcon,
                                  color: AppColor.praimaryColor,
                                  width: 5.w,
                                  height: 5.w,),
                              ),
                            ),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                Text(state.mainSug.value.rate ?? "",
                                  style: TextStyle(
                                      color: AppColor.praimaryColor),),
                                Text(" /10",
                                  style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            SizedBox(height: 6,),

                            Text(
                              state.mainSug.value.votes ?? "", style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w200),),

                          ],
                        ),
                      ],
                    );
                  }),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [
                      Container(
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: "ffc64b".toColor(),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.all(2.w),
                        child: Directionality(

                            textDirection: TextDirection.rtl, child: Text(
                          state.fromJsonSplash.messageHomePage ?? "",
                          style: TextStyle(
                              color: "3d3d3d".toColor()
                          ),)),
                      ),
                      SizedBox(height: 1.h,),

                      Container(
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: "ffd780".toColor(),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.all(2.w),
                        child: Directionality(

                            textDirection: TextDirection.rtl, child: Text(
                          state.fromJsonSplash.discountMessage ?? "",
                          style: TextStyle(
                              color: "3d3d3d".toColor()
                          ),)),
                      ),
                      SizedBox(height: 2.h,),
                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("?????????? ?????? ???????? ??????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel!
                              .updatedSeries!.items!.asMap().entries.map((e) =>
                              HomeSeriesWidget(e.value)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("???????? ?????? ????????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.newMovies!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, false)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("?????????? ?????? ?????????? ??????????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.dubbedSeries!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, true)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("???????? ?????? ?????????? ??????????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.dubbedMovies!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, false)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 1.w, vertical: 1.w),
                    decoration: BoxDecoration(

                        color: "111111".toColor(),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Obx(() {
                      return Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MaterialButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                state.genreIndex(1);
                              },
                              child: Container(
                                height: 6.h,

                                decoration: BoxDecoration(

                                    color: state.genreIndex == 1 ? AppColor
                                        .praimaryColor : Colors.transparent,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.w, vertical: 2.h / 2),
                                child: Center(child: Text("???????? ?????? ??????????")),
                              ),
                            ),
                            MaterialButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                state.genreIndex(0);
                              },
                              child: Container(
                                height: 6.h,

                                decoration: BoxDecoration(

                                    color: state.genreIndex == 0 ? AppColor
                                        .praimaryColor : Colors.transparent,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 2.w),
                                child: Center(child: Text("???????? ?????? ????????")),
                              ),
                            ),

                          ],
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Obx(() {
                          return Row(

                            children: (state.genreIndex.value == 0 ? state
                                .homeJsonDataModel.moviesGenre! : state
                                .homeJsonDataModel.seriesGenre!)
                                .asMap()
                                .entries
                                .map((e) =>
                                HomeGenreWidget(e.value)).toList(),
                          );
                        }),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("?????????? ?????? ?????????????? ????????????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.subtitleSeries!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, true)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("?????????????? ????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.animations!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, false)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("???????? ?????? ????????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.indianMovies!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, false)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("?????????? ????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.animes!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, true)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(2.w, 0, 2.w, 0),
                  child: Column(
                    children: [

                      GetLTRWidget(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: "212121".toColor(),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Text("??????????", style: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),),
                              ),
                            ),
                            Text("?????????? ?????? ?????? ????", style: TextStyle(
                                color: Colors.white.withOpacity(0.5)),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      width: 100.w,
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(

                          children: state.homeJsonDataModel.koreanTvSeries!
                              .items!.asMap().entries.map((e) =>
                              HomeMiniWidget(e.value, true)).toList(),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.h,)

              ],
            ),
          ),
        ),
      ),
    );
  }

  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get
      .find<HomeLogic>()
      .state;

  @override
  void initState() {
    state.homeJsonDataModel = Get.arguments[0];
    state.fromJsonSplash = Get.arguments[1];
    state.mainSug.value = state.homeJsonDataModel.suggestions!.elementAt(0);
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      controller.moveToNext!();
    });
  }
}
