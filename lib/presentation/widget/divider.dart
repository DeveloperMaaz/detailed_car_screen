import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerBar extends StatelessWidget {
  const DividerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.h,
      thickness: 1,
      color: const Color.fromRGBO(238, 238, 238, 1),
    );
  }
}
