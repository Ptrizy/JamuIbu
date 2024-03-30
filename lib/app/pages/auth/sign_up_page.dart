import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jamu_ibu/app/pages/auth/login_page.dart';
import 'package:jamu_ibu/app/pages/auth/widgets/large_button.dart';
import 'package:jamu_ibu/app/pages/auth/widgets/text_fields.dart';
import 'package:jamu_ibu/app/routes/assets_path.dart';
import 'package:jamu_ibu/app/utils/colors.dart';
import 'package:jamu_ibu/app/utils/text_styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPasswordController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
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
              "Daftar",
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
                      icon: FluentIcons.person_16_filled,
                      controller: nameController,
                      labelText: "Nama Lengkap",
                      hintText: "Masukkan Nama Lengkap",
                      textInputType: TextInputType.name,
                      obscure: false),
                  SizedBox(
                    height: 14.h,
                  ),
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
                  LargeButton(text: "Daftar", onClicked: () {}),
                  SizedBox(
                    height: 24.h,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Sudah memiliki akun? ",
                      style: TextStyles.b1MediumN500,
                      children: [
                        TextSpan(
                            text: "Masuk disini.",
                            style: TextStyles.b1SemiBoldP300withUnderline,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: (_) => const LoginPage()))),
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
