import 'package:detailed_car_screen/model/list_car.dart';
import 'package:detailed_car_screen/presentation/widget/list_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
       title: Row(
         children: [
           Padding(
             padding: EdgeInsets.only(left:8.w, right:100.h),
             child: Image.asset(
               "assets/images/Vector.png",
               height: 13,
             ),
           ),
           const Padding(
             padding:  EdgeInsets.only(left: 50),
             child: Text(
               "Properties",
               style: TextStyle(
                 fontSize: 18,
                 color: Color(0xff1C1C1C),
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
         ],
       ),
      ),
      body: CatItems(),
    );
  }
}
/*
Text(
            "Properties",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
            ),
          ),
 */