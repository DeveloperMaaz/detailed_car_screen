import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 90.h,
      decoration: BoxDecoration(color: const Color.fromRGBO(5, 122, 85, 1),
      borderRadius: BorderRadius.circular(6),
      ),
      child: const Center(child: Text("Rent this Car",style: TextStyle(color: Colors.white),)),
    );
  }
}
