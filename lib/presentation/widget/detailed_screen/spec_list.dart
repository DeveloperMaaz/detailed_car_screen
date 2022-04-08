import 'package:detailed_car_screen/presentation/widget/specification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationList extends StatefulWidget {
  const SpecializationList({Key? key}) : super(key: key);

  @override
  _SpecializationListState createState() => _SpecializationListState();
}

class _SpecializationListState extends State<SpecializationList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: CarSpecialization('MAKE', 'TOYOTA CAMRY'),
            ),
            CarSpecialization('MODEL', '1350V9I'),
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: CarSpecialization('YEAR', '2018'),
            ),
            CarSpecialization('MILEAGE', '1350V9I'),
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: CarSpecialization('TRANSMISION', 'AUTOMATION'),
            ),
            Container(
              height: 79,
              width: 140,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.w, right: 70.w, top: 18.h),
                    child: const Text('COLOR',
                        style:
                            TextStyle(color: Color(0xff6B7280), fontSize: 12)),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16.w, right: 55.w, top: 22.h),
                    child: Row(
                      children: [
                        Container(
                          width: 17.w,
                          height: 27.h,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(5, 122, 85, 1)),
                        ),
                        SizedBox(width: 6.w,),
                        const Text('For Green',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff161E2E),
                                fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 23.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CarSpecialization('NO OF DOORS', '4 Doors'),
            ],
          ),
        ),
      ],
    );
  }
}
