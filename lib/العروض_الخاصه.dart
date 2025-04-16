import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theback/%D8%A7%D8%AA%D8%B5%D9%84_%D8%A8%D9%86%D8%A7.dart';
import 'package:theback/%D8%A7%D9%84%D9%85%D8%B4%D8%B1%D9%88%D8%B9%D8%A7%D8%AA.dart';
import 'package:theback/%D8%B9%D8%B1%D8%B6_%D8%AE%D8%A7%D8%B5.dart';
import 'package:theback/login.dart';
import 'package:theback/saramica.dart';

class Special extends StatefulWidget {
  static const String id='Special';
  const Special({super.key});

  @override
  State<Special> createState() => _SpecialState();
}

class _SpecialState extends State<Special> {

  List<ListViewItem>items=[
    const ListViewItem(text: 'ارلون', image: 'assets/images/3.jpeg'),
    const ListViewItem(text: 'بيكايا', image: 'assets/images/22.jpg'),
    const ListViewItem(text: 'ابهي جراي', image: 'assets/images/55.jpg'),
    const ListViewItem(text: 'كينروكو', image: 'assets/images/22.jpg'),
  ];

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

        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.brown
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('التصفية',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                )),
              ),
              SizedBox(height: 20.h,),
              Expanded(child: ListView.separated(itemBuilder: (context, index)=>items[index] , separatorBuilder:(context, index) => SizedBox(height: 20.h) , itemCount:items.length )),


            ],
          ),
        )
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key, required this.text, required this.image,
  });

  final String text ;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            children: [

              Image(image:  AssetImage(image),fit: BoxFit.cover,height: 250.h,),

              Positioned(
                top: 0,
                left: 0,
                child: ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.brown,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 2, left: 8),
                    child:CustomPaint(
                      size: const Size(200, 100),
                      painter: CurvedTextPainter(),
                    ),

                  ),
                ),
              ),


               Positioned(
                 top: 11.h,
                 left: 8.w,
                 child: const CircleAvatar(
                   backgroundColor: Colors.white,
                   child: Icon(
                     Icons.star,color: Colors.brown,
                   ),
                 ),
               )
            ],
          ),
          SizedBox(height: 10.h,),
          Text(text, style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
          SizedBox(height: 10.h,),
          Text('يبدأ من جنية مصر / متر مربع', style: TextStyle(color: Colors.grey,fontSize: 15.sp,fontWeight: FontWeight.bold),),
          SizedBox(height: 10.h,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),

            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('التفاصيل', style: TextStyle(color: Colors.grey,fontSize: 20.sp,fontWeight: FontWeight.bold),),
            )),
          )
        ]);
  }
}




class CurvedTextPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final text = "Item";
    final radius = 80.0;
    final anglePerChar = pi / (text.length + 1);
    final center = Offset(size.width / 2, radius + 10);

    for (int i = 0; i < text.length; i++) {
      final angle = -pi + anglePerChar * (i + 1);
      final x = center.dx + radius * cos(angle);
      final y = center.dy + radius * sin(angle);

      canvas.save();
      canvas.translate(x, y);
      canvas.rotate(angle + pi / 2); // لتدوير كل حرف مع منحنى الدائرة

      TextPainter(
        text: TextSpan(
          text: text[i],
          style: const TextStyle(
            color: Colors.brown,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      )
        ..layout()
        ..paint(canvas, const Offset(-6, -10)); // لتعديل تموضع الحرف

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);         // النقطة اليسرى السفلية
    path.lineTo(size.width, 0);          // النقطة اليمنى العلوية
    path.lineTo(0, 0);                   // النقطة اليسرى العلوية
    path.close();                        // إغلاق المسار
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
