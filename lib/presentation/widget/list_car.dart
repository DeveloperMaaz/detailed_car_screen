import 'package:detailed_car_screen/model/list_car.dart';
import 'package:detailed_car_screen/presentation/widget/button.dart';
import 'package:detailed_car_screen/presentation/widget/divider.dart';
import 'package:detailed_car_screen/presentation/widget/specification_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'detailed_screen/spec_list.dart';

class CatItems extends StatefulWidget {
  String mainImage = 'assets/images/Frame 6.png';

  @override
  _CatItemsState createState() => _CatItemsState();
}

class _CatItemsState extends State<CatItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.h, top: 5.h),
              child: SizedBox(
                height: 370.h,
                width: 420.w,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(widget.mainImage),
                ),
              ),
            ),
            SizedBox(
              height: 113.h,
              child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: Details.categoryCar.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 91.w,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.mainImage =
                                  Details.categoryCar[index].image;
                            });
                          },
                          child: Image.asset(Details.categoryCar[index].image)),
                    );
                  }),
            ),
            SizedBox(
              height: 18.h,
            ),
            const DividerBar(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Toyota Camry iA',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                  fontSize: 24.sp),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 20.h),
              child: RichText(
                text: TextSpan(
                  text: '\$350 ',
                  style: TextStyle(
                      color: const Color.fromRGBO(5, 122, 85, 1),
                      fontSize: 20.sp),
                  children: <TextSpan>[
                    TextSpan(
                        text: '/month',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color.fromRGBO(125, 142, 163, 1))),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            const DividerBar(),
            Padding(
              padding: EdgeInsets.only(top: 36.h, bottom: 37.h),
              child: Text(
                'Car Specifications',
                style: TextStyle(
                    color: const Color.fromRGBO(33, 33, 33, 1),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),

            const SpecializationList(),
            SizedBox(height: 37.h,),
            const Button(),
          ],
        ),
      ),
    );
  }
}
