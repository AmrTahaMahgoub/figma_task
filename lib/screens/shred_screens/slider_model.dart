import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13.31, top: 6).r,
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 1.38, 2.14, 1.83).r,
        height: 5.5.h,
        width: 155.69.w,
        decoration: BoxDecoration(
            color: Color(0xff262830),
            borderRadius: BorderRadius.circular(12.r)),
        child: SliderTheme(
          data: SliderThemeData(
            trackHeight: 1.83.h,
            thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 8.0, elevation: 0, disabledThumbRadius: 8),
            thumbColor: Colors.transparent,
            activeTrackColor: Color(0xff5CA291),
            inactiveTrackColor: Color(0xff262830),
          ),
          child: Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
