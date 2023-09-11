import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final IconData suffixicon;
  final String? Function(String?)? valid;
  final bool? isNumber;
  final TextEditingController? mycontroller;

  const CustomTextFormAuth(
      {super.key,
      required this.suffixicon,
      required this.valid,
      required this.hinttext,
      required this.labeltext,
      required this.mycontroller,
      required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15.h),
          child: TextFormField(
            keyboardType: isNumber == true
                ? const TextInputType.numberWithOptions(decimal: true/*عشان السعر*/)
                : TextInputType.text,
            controller: mycontroller,
            validator: valid!,
            decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Container(
                  padding: EdgeInsets.symmetric(horizontal: 9.w),
                  child: Text(labeltext),
                ),
                hintText: hinttext,
                hintStyle: TextStyle(fontSize: 14.sp),
                suffixIcon: Icon(suffixicon),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8.h, horizontal: 30.w),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ),
        ),
      ],
    );
  }
}
