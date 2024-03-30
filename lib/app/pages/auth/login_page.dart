import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jamu_ibu/app/pages/auth/forgot_pass_page.dart';
import 'package:jamu_ibu/app/pages/auth/sign_up_page.dart';
import 'package:jamu_ibu/app/pages/home/widgets/bottom_nav_bar.dart';

import '../../routes/assets_path.dart';
import '../../utils/colors.dart';
import '../../utils/text_styles.dart';
import 'widgets/large_button.dart';
import 'widgets/text_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.p50,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 96.5.h,
            ),
            Text(
              "Masuk",
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
                  TextFields(
                      icon: FluentIcons.mail_16_filled,
                      controller: emailController,
                      labelText: "Email",
                      hintText: "Masukkan Email",
                      textInputType: TextInputType.emailAddress,
                      obscure: false),
                  SizedBox(
                    height: 14.h,
                  ),
                  TextFields(
                      icon: FluentIcons.lock_closed_16_filled,
                      controller: passwordController,
                      labelText: "Kata Sandi",
                      hintText: "Masukkan Kata Sandi",
                      textInputType: TextInputType.visiblePassword,
                      obscure: true),
                  SizedBox(
                    height: 24.h,
                  ),
                  LargeButton(
                      text: "Masuk",
                      onClicked: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const BottomNavBar()));
                      }),
                  SizedBox(
                    height: 12.h,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (_) => const ForgotPasswordPage())),
                    child: Text(
                      "Lupa kata sandi?",
                      style: TextStyles.b1MediumN100,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Belum memiliki akun? ",
                      style: TextStyles.b1MediumN500,
                      children: [
                        TextSpan(
                            text: "Daftar disini.",
                            style: TextStyles.b1SemiBoldP300withUnderline,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (_) => const SignUpPage()))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
