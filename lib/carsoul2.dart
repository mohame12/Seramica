import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialSales extends StatelessWidget {
  const SpecialSales({super.key,
    required this.text, required this.image
  });

  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(image: AssetImage(image),width: 300.w),
          SizedBox(
            height: 25.h,
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            endIndent: 10,
            indent: 10,
            height: 1.h,
          ),
          Padding(
            padding:  EdgeInsetsDirectional.symmetric(horizontal: 20.w,),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(text,style: TextStyle(color: Colors.black,fontSize: 18.sp, fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}