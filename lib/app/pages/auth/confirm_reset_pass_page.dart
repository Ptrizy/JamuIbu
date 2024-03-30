import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../routes/assets_path.dart';
import '../../utils/colors.dart';
import '../../utils/text_styles.dart';
import 'widgets/large_button.dart';
import 'widgets/text_fields.dart';

class ConfirmResetPasswordPage extends StatefulWidget {
  const ConfirmResetPasswordPage({super.key});

  @override
  State<ConfirmResetPasswordPage> createState() =>
      _ConfirmResetPasswordPageState();
}

final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPasswordController = TextEditingController();

bool isPasswordReset = false;

class _ConfirmResetPasswordPageState extends State<ConfirmResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.p50,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 96.5.h,
            ),
            Text(
              "Reset Kata Sandi",
              style: TextStyles.h4SemiBoldP500,
            ),
            SizedBox(
              height: 33.5.h,
            ),
            Image(
              image: const AssetImage(Assets.jamuIbuTitle),
              width: 256.w,
              height: 84.h,
            ),
            SizedBox(
              height: 39.5.h,
            ),
            SizedBox(
              height: 480.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: isPasswordReset
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Reset kata sandi berhasil",
                                style: TextStyles.h6SemiBoldP500,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Icon(
                                FluentIcons.checkmark_circle_48_filled,
                                size: 64.h,
                                color: ColorStyles.p500,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              RichText(
                                  text: TextSpan(
                                text: "Silakan",
                                style: TextStyles.b1MediumP500,
                                children: [
                                  TextSpan(
                                      text: " Masuk ",
                                      style: TextStyles.b1BoldP500),
                                  TextSpan(
                                      text: "kembali dengan kata sandi terbaru",
                                      style: TextStyles.b1MediumP500)
                                ],
                              ))
                            ],
                          ),
                          LargeButton(
                              text: "Masuk",
                              onClicked: () {
                                setState(() {
                                  isPasswordReset = false;
                                });
                              })
                        ],
                      )
                    : Column(
                        children: [
                          TextFields(
                              icon: FluentIcons.lock_closed_16_filled,
                              controller: passwordController,
                              labelText: "Kata Sandi",
                              hintText: "Masukkan Kata Sandi",
                              textInputType: TextInputType.visiblePassword,
                              obscure: true),
                          SizedBox(
                            height: 14.h,
                          ),
                          TextFields(
                              icon: FluentIcons.lock_closed_16_filled,
                              controller: confirmPasswordController,
                              labelText: "Konfirmasi Kata Sandi",
                              hintText: "Masukkan Ulang Kata Sandi",
                              textInputType: TextInputType.visiblePassword,
                              obscure: true),
                          SizedBox(
                            height: 24.h,
                          ),
                          LargeButton(
                              text: "Reset",
                              onClicked: () {
                                _resetPassword();
                              }),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _resetPassword() {
    // Menampilkan CircularProgressIndicator terlebih dahulu
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(
            color: ColorStyles.p500,
            strokeWidth: 4,
          ),
        );
      },
    );
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pop(context);
      setState(() {
        isPasswordReset = true;
      });
    });
  }
}
