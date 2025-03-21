import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theback/const.dart';


class Saramica extends StatefulWidget {
  static const String id = 'saramica';
  const Saramica({super.key});

  @override
  State<Saramica> createState() => _SaramicaState();
}

class _SaramicaState extends State<Saramica> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        leading: Row(
          children: [
            Builder(builder:(context)=>IconButton(
                onPressed: ()
                  {
                  Scaffold.of(context).openDrawer();
                  setState(() {

                  });
                  },
                icon:  Icon(Icons.menu,size: 35.sp,))),
          ],
        ),
        title: Row(
          children: [
           Icon(Icons.shopping_cart_outlined,size: 20.r,),
           SizedBox(
             width: 8.w,
           ),
           Icon(FontAwesomeIcons.heart,size: 20.r,),
            SizedBox(
              width: 8.w,
            ),
           Icon(Icons.account_circle_outlined,size: 20.r,),
            SizedBox(
              width: 8.w,
            ),
          ],
        ),
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: 10.w),
            child: Image(image: const AssetImage('assets/images/245.png'),height: 200.h,width: 150.w,),
          ),
        ],
        ),

      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding:   EdgeInsetsDirectional.symmetric(vertical: 50.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: ()
                          {
                            Navigator.pop(context);
                          }
                          ,child:  Icon(Icons.close,color: Colors.white,size: 30.sp,)),
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('الخط الساخن:19119',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                      const Icon(
                        Icons.phone
                        ,color: Colors.white,
                      ),
                    ],
                  ),


                ),

                 Divider(height: 1.h,thickness: 1,color: Colors.white,),

                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('الرئيسية',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),

                 Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon( Icons.star_border ,color: Colors.white,),
                      const Spacer(),
                      Text('العروض الخاصة',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),

                    ],
                  ),
                ),

                Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                ExpansionTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  dense: true,
                  tilePadding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                  title:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       Text('اختر مساحتك',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),

                    ],
                  ),
                  children:[
                    menuItem("الحمامات"),
                    menuItem("المساحات الخارجية"),
                    menuItem("الغرف المعيشة"),
                    menuItem("الحوائط"),
                    menuItem("غرف النوم"),
                    menuItem("تجاري"),
                    menuItem("شاهد الكل", isLast: true),
                  ]
                ),


                Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('المشروعات',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                 Divider(height: 1.h,thickness: 1.h,color: Colors.white,),
                Padding(
                  padding:  const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(Icons.percent,color: Colors.red,),
                      const Spacer(),
                      Container(
                        color: Colors.red
                          ,child:  Text('عرض خاص',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold))),


                    ],
                  ),
                ),

                 Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('اتصل بنا',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),

                 Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )
                      ),
                      onPressed: () {  },
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text('تحديد موعد',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                      const Spacer(),
                      const Icon(Icons.calendar_month,color: Colors.white,),
                    ],
                  )),
                ),
              ],
            ),
          ),
        )


    ),


      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
              children: [
                CarouselSlider(items: carsoul, options:CarouselOptions(
                  aspectRatio: 3/2,
                  height: 540.h,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  scrollPhysics: const BouncingScrollPhysics(),
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  onPageChanged: (index,reason){
                    ind=index;
                    setState(() {

                    });
                  },
                ) ),

                Positioned(
                  top: 10.h,
                  left: 20.w,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position:ind.toDouble(),
                    decorator: DotsDecorator(
                      activeColor:Colors.brown ,
                      size: const Size.square(5.0),
                      activeSize:  Size(8.0.w, 8.0.h),
                      fadeOutSize: Size(8.0.w, 8.0.h),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                    ),
                  ),
                ),
              ],
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('التوصيل القياسي المجاني مشمول للطلبات عبر الانترنت',style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.bold),),
            ),
            Container(
              width: double.infinity,
              color: const Color(0xff463F3A),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('شحن سريع جميع ايام الأسبوع',style: TextStyle(color: Colors.white),),
                        SizedBox(
                          width: 10.w,
                        ),
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor:Colors.white ,
                          child: CircleAvatar(
                            radius: 29.r,
                            backgroundColor:const Color(0xff463F3A),
                            child: const Icon(FontAwesomeIcons.truckFast,color: Colors.white,size: 20,),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('تسليم حتي باب المنزل في كل انحاء مصر',style: TextStyle(color: Colors.white),),
                        SizedBox(
                          width: 10.w,
                        ),
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor:Colors.white ,
                          child: CircleAvatar(
                            radius: 29.r,
                            backgroundColor:const Color(0xff463F3A),
                            child: const Icon(FontAwesomeIcons.house,color: Colors.white,size: 20,),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('الدفع الامن',style: TextStyle(color: Colors.white),),
                        SizedBox(
                          width: 10.w,
                        ),
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor:Colors.white ,
                          child: CircleAvatar(
                            radius: 29.r,
                            backgroundColor:const Color(0xff463F3A),
                            child: const Icon(FontAwesomeIcons.creditCard,color: Colors.white,size: 20,),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('سهولة في ارجاع المنتجات',style: TextStyle(color: Colors.white),),
                        SizedBox(
                          width: 10.w,
                        ),
                        CircleAvatar(
                          radius: 30.r,
                          backgroundColor:Colors.white ,
                          child: CircleAvatar(
                            radius: 29.r,
                            backgroundColor:const Color(0xff463F3A),
                            child: const Icon(FontAwesomeIcons.moneyBillTrendUp,color: Colors.white,size: 20,),
                          ),
                        )
                      ],
                    ),
                  ),
                ]
              ),
            ),
            Container(
              color: const Color(0xffEDEDED),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text('العروض الخاصه',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),)),
                  ),
                  CarouselSlider(items: carsoul2, options:CarouselOptions(
                    aspectRatio: 3/2,
                    viewportFraction: 0.7,
                    autoPlay: true,
                    scrollPhysics: const BouncingScrollPhysics(),
                    enlargeFactor: 23,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,

                  ) ),
                ],
              ),
            ),


            Stack(
              children: [
                Image(image: const AssetImage('assets/images/انطباع الرخام.jpg'),width: double.infinity,height: 210.h,fit: BoxFit.cover,),
                Positioned(
                  top: 95.h,
                  left: 125.w,

                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  )
                  ,onPressed: (){}, child:
                  const Text('انطباع الرخام',style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white))),
                )
              ],
            ),
            Stack(
              children: [
                Image(image: const AssetImage('assets/images/انطباع الخشب.jpg'),width: double.infinity,height: 210.h,fit: BoxFit.cover,),
                Positioned(
                  top: 95.h,
                  left: 125.w,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          )
                      )
                      ,onPressed: (){}, child:
                  const Text('انطباع الخشب',style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white))),
                )
              ],
            ),
            Stack(
              children: [
                Image(image: const AssetImage('assets/images/انطباع الحجر.jpg'),width: double.infinity,height: 210.h,fit: BoxFit.cover,),
                Positioned(
                  top: 95.h,
                  left: 125.w,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          )
                      )
                      ,onPressed: (){}, child:
                  const Text('انطباع الحجر',style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white))),
                )
              ],
            ),
            Stack(
              children: [
                Image(image: const AssetImage('assets/images/انطباع الالوان.jpg'),width: double.infinity,height: 210.h,fit: BoxFit.cover,),
                Positioned(
                  top: 95.h,
                  left: 125.w,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          )
                      )
                      ,onPressed: (){}, child:
                  const Text('انطباع الالوان',style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white))),
                )
              ],
            ),


            Container(
              color: const Color(0xffEDEDED),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsetsDirectional.symmetric(vertical: 20.h,horizontal: 20.w),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text('عرض خاص',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20.sp),)),
                  ),
                  CarouselSlider(items: carsoul3, options:CarouselOptions(
                    aspectRatio: 3/2,
                    viewportFraction: 0.7,
                    autoPlay: true,
                    scrollPhysics: const BouncingScrollPhysics(),
                    enlargeFactor: 23,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,

                  ) ),
                ],
              ),
            ),



          ],
        ),
      ),
    );

  }
}








Widget menuItem(String text, {bool isLast = false}) {
  return Column(
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 12.h
            , horizontal: 16.w),
        child: Align(
          alignment: Alignment.centerRight,
          child:
          Text(text, style:  TextStyle(color: Colors.white, fontSize: 16.sp),
          ),
        ),
      ),
      if (!isLast)
        Divider(color: Colors.white, height: 1.h),
    ],
  );
}
