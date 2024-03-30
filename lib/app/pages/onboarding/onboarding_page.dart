import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jamu_ibu/app/routes/assets_path.dart';
import 'package:jamu_ibu/app/utils/colors.dart';
import 'package:jamu_ibu/app/utils/text_styles.dart';

import '../auth/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) => IntroductionScreen(
        pages: [
          PageViewModel(
              title: 'Menanam',
              body: 'Mulai dengan menanam tanaman pertamamu!',
              image: buildImage(Assets.onboardingImageOne),
              decoration: pageDecoration()),
          PageViewModel(
              title: 'Tumbuh',
              body: 'Merawat dan menumbuhkan rasa cinta alam',
              image: buildImage(Assets.onboardingImageTwo),
              decoration: pageDecoration()),
          PageViewModel(
            title: 'Berbagi',
            body: 'Bagikan ilmu bercocok tanam dengan sesama',
            image: buildImage(Assets.onboardingImageThree),
            decoration: pageDecoration(),
          ),
        ],
        bodyPadding: const EdgeInsets.symmetric(horizontal: 16),
        showDoneButton: true,
        showSkipButton: true,
        showNextButton: true,
        onDone: () {
          goToLoginPage(context);
        },
        done: Text(
          'Selesai',
          style: TextStyles.h6MediumP500,
        ),
        skip: Text(
          'Lewati',
          style: TextStyles.h6MediumP500,
        ),
        next: Text(
          'Lanjut',
          style: TextStyles.h6MediumP500,
        ),
        dotsDecorator: dotsDecorator(),
        globalBackgroundColor: ColorStyles.n50,
        skipOrBackFlex: 0,
        nextFlex: 0,
      );
}

void goToLoginPage(context) => Navigator.of(context)
    .pushReplacement(MaterialPageRoute(builder: (_) => const LoginPage()));

Widget buildImage(String path) => Center(
      child: Image.asset(
        path,
        width: 350,
      ),
    );

PageDecoration pageDecoration() => PageDecoration(
    titleTextStyle: TextStyles.h4BoldP500,
    bodyTextStyle: TextStyles.h6RegularP500,
    titlePadding: const EdgeInsets.only(top: 70),
    imagePadding: const EdgeInsets.only(top: 155),
    bodyPadding: const EdgeInsets.all(16),
    pageColor: ColorStyles.n50);

DotsDecorator dotsDecorator() => DotsDecorator(
      color: const Color(0xFF375529),
      activeColor: ColorStyles.p500,
      size: const Size(10, 10),
      activeSize: const Size(20, 10),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );
