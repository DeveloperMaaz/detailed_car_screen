import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarSpecialization extends StatefulWidget {
  String headingText;
  String subText;

  CarSpecialization(this.headingText, this.subText);

  @override
  _CarSpecializationState createState() => _CarSpecializationState();
}

class _CarSpecializationState extends State<CarSpecialization> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      width: 140,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 18.h),
            child: Text(widget.headingText,
                style: const TextStyle(color: Color(0xff6B7280), fontSize: 12)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w,  top: 22.h),
            child: Text(widget.subText,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff161E2E),
                    fontSize: 15)),
          ),
        ],
      ),
    );
  }
}
