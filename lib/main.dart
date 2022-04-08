import 'package:detailed_car_screen/presentation/widget/detailed_screen/detailed_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 1281),
      builder: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CarDetails(),
      ),
    );
  }
}
