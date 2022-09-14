import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class GetCoverBadge extends StatelessWidget{
  Widget child;

  GetCoverBadge({required this.child, this.dubbed=false, this.subtitle=false});

  bool dubbed;
  bool subtitle;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        SizedBox.expand(child: child,),
        if(subtitle) Positioned(

          right: -4.w,
          top: -4.w,
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(45 / 360),
            child: Container(
              width: 15.w,
              height: 15.w,
              // color: Colors.red,
              child: Image.asset("assets/image/badge.png")),
          ),
        ),
        if(dubbed) Positioned(

          right: -20,
          top: -20,
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(45 / 360),
            child: Container(
              width: 20.w,
              height: 20.w,
              // color: Colors.red,
              child: Image.asset("assets/image/badge2.png")),
          ),
        )
      ],
    );
  }

}