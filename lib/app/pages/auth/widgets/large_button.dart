import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jamu_ibu/app/utils/colors.dart';
import 'package:jamu_ibu/app/utils/text_styles.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const LargeButton({
    super.key,
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => Center(
          child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(ColorStyles.p300),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(0),
          minimumSize: MaterialStateProperty.all<Size>(Size(312.w, 55.h)),
        ),
        onPressed: onClicked,
        child: Text(
          text,
          style: TextStyles.h6BoldP50,
        ),
      ));
}
