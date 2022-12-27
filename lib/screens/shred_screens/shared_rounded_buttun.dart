import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedButton extends StatelessWidget {
  SharedButton({
    this.height,
    this.width,
    required this.textLabel,
    this.fontsize, this.padding,
  });
  final String textLabel;
  double? height;
  double? width;
  double? fontsize;
  EdgeInsetsGeometry? padding;
  //EdgeInsets.symmetric(vertical: 3.88, horizontal: 6.47).r,

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16).r, color: Color(0xff262830)),
      padding:padding, 
      child: Text(
        textLabel,textAlign: TextAlign.center,
        style: GoogleFonts.ubuntuCondensed(
          fontSize: fontsize,
          fontWeight: FontWeight.w400,
          color: Color(0xff5ca392),
        ),
      ),
    );
  }
}
