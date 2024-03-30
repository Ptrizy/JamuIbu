import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jamu_ibu/app/pages/auth/confirm_reset_pass_page.dart';
import 'package:jamu_ibu/app/pages/auth/widgets/large_button.dart';

import '../../routes/assets_path.dart';
import '../../utils/colors.dart';
import '../../utils/text_styles.dart';
import 'widgets/text_fields.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
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
              "Lupa Kata Sandi",
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Masukkan email ",
                      style: TextStyles.b1SemiBoldP500,
                      children: [
                        TextSpan(
                          text:
                              "anda yang terdaftar pada aplikasi untuk mengganti kata sandi",
                          style: TextStyles.b1RegularP500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextFields(
                      icon: FluentIcons.mail_16_filled,
                      controller: emailController,
                      labelText: "Email",
                      hintText: "Masukkan Email",
                      textInputType: TextInputType.emailAddress,
                      obscure: false),
                  SizedBox(
                    height: 42.h,
                  ),
                  LargeButton(
                      text: "Kirim",
                      onClicked: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const ConfirmResetPasswordPage()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
