import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackCarsoulWidget extends StatelessWidget {
  const StackCarsoulWidget({
    super.key,required this.text,required this.image,required this.text2
  });
  final String text;
  final String image;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child:  Image(image: AssetImage(image),height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 60.h,
          right: 12.w,
          child: Text(text,style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.bold),),
        ),
        Positioned(
          bottom: 20.h,
          left: 20.w,
          child: Container(
            color: Colors.brown,
            width: 180.w,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text2,style: TextStyle(color: Colors.white,fontSize: 12.sp),),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

//assets/images/3.jpeg
