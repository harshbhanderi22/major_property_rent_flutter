import 'package:flutter/material.dart';
import 'package:on_property/utils/colorscheme.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class IndroductionPage extends StatefulWidget {
  String? imagepath;
  String? title;
  String? description;
  IndroductionPage({Key? key, this.imagepath, this.title, this.description})
      : super(key: key);

  @override
  _IndroductionPageState createState() => _IndroductionPageState();
}

class _IndroductionPageState extends State<IndroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imagepath!), fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: dividerTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
        ),
        // SizedBox(height: 10.h),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            widget.description!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13.sp,
            ),
          ),
        ),
        //SizedBox(height: sizeheight(context) / 9),

        //SizedBox(height: 20.h),
      ],
    );
  }
}
