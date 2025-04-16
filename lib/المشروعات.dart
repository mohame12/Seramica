import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theback/%D8%A7%D8%AA%D8%B5%D9%84_%D8%A8%D9%86%D8%A7.dart';
import 'package:theback/%D8%A7%D9%84%D8%B9%D8%B1%D9%88%D8%B6_%D8%A7%D9%84%D8%AE%D8%A7%D8%B5%D9%87.dart';
import 'package:theback/%D8%B9%D8%B1%D8%B6_%D8%AE%D8%A7%D8%B5.dart';
import 'package:theback/login.dart';
import 'package:theback/saramica.dart';

class Projects extends StatefulWidget {
  static const String id='Projects';
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            GestureDetector(
                onTap: ()
                {
                  Navigator.pushReplacementNamed(context, Login.id);
                },
                child: Icon(Icons.account_circle_outlined,size: 20.r,)),
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

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, Saramica.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('الرئيسية',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),

                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context,Special.id);
                    },
                    child: Padding(
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
                  ),

                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, Projects.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('المشروعات',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, SpecialOrder.id);
                    },
                    child: Padding(
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
                  ),

                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, CallUs.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('اتصل بنا',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                        ],
                      ),
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
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: const AssetImage('assets/images/المشروعات.jpg'),fit: BoxFit.cover,height: 240.h,),
                Positioned(
                    top: 15.h,
                    right: 10.h,
                    child: Text('المشروعات',style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.bold),)),
                Positioned(
                    bottom: 25.h,
                    right: 15.w,
                    child: Text('المشروعات الكبري',style: TextStyle(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.bold),)),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text('التوصيل القياسي المجاني ممول للطلبات عبر الانترنت',style: TextStyle(color: Colors.black,fontSize: 12.sp,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 15.h,
            ),
            Text('أكتشف حلولنا للمساحات الواسعة', style: TextStyle(color: Colors.black, fontSize: 25.sp,),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('المناطق التجارية والأماكن العامة والعمارات السكنية, منتجاتنا من السيراميك ',style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                SizedBox(
                  width: 20.w,
                ),
              ],
            ),
            Text('مناسبة لأي مشروع يمكن ان تتخيله',style: TextStyle(color: Colors.grey,fontSize:12.sp ),),
            SizedBox(
              height: 15.h,
            ),
        
            Image(image: const AssetImage('assets/images/collage-projects.jpg'),fit: BoxFit.cover,height: 150.h,),
            
            const Text('لا حدود للأبتكار والأبداع ,نحن نقدم حلولا متناسقة للأرضيات والجدران, مناسبة لأي منطقة. سيراميكا يمكن ان يبلي احتياجات أي مشروعات وتجديدات وأنشاءات جديدة لما نتمتع به من مجموعة لانهائية من الحلول الكلاسيكية والعصرية يمكنك الاختيار منها بسهولة', textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
        
            SizedBox(height: 30.h,),
            Container(
        
              decoration: const BoxDecoration(
                color: Colors.brown,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text('تواصل بنا لمعرفة مشروعتنا',style: TextStyle(color: Colors.white,fontSize: 20.sp),),
              ),
            ),
            SizedBox(height: 30.h,),
            Text('مراجعنا العالمية', style: TextStyle(color: Colors.black,fontSize: 25.sp),),
            const Item(image: 'assets/images/commercial-360x232.jpg',text: 'COMMERCIAL',),
            const Item(image: 'assets/images/educational-1-360x270.jpg',text: 'EDUCATIONAL',),
            const Item(image: 'assets/images/government-360x270.jpg',text: 'GOVERNMENT',),
            const Item(image: 'assets/images/public-spaces-360x239.jpg',text: 'PUBLIC SPACES',),
            const Item(image: 'assets/images/residential-360x269.jpg',text: 'RESIDENTIAL',),
            SizedBox(
              height: 20.h,
            ),
            Text('مشروعتنا في مصر',style: TextStyle(color: Colors.black,fontSize: 20.sp,),),
            Item(image: 'assets/images/commerciale-360x241.jpg', text: 'COMMERCIAL'),
            Item(image: 'assets/images/educational-1-360x270.jpg', text: 'EDUCATION INSTITUTIONS'),
            Item(image: 'assets/images/government-360x270.jpg', text: 'GOVERNMENT'),
            Item(image: 'assets/images/hospitalty-360x128.jpg', text: 'HOSPITALITY'),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key, required this.image, required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Image(image: AssetImage(image)),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding:  EdgeInsets.only(right: 15.w),
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(text,style: TextStyle(color: Colors.black,fontSize: 16.sp,fontWeight: FontWeight.normal),)),
        )
      ],
    );
  }
}
