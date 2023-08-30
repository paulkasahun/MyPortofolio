import 'package:flutter/material.dart';
import 'package:myportofolio/app_assets.dart';
import 'package:myportofolio/app_colors.dart';
import 'package:myportofolio/app_font_style.dart';
import 'package:myportofolio/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const String content = '''
Creative and enthusiastic electrical and computer engineer with a BSc in Electrical and Computer Engineering and a Machine Learning certificate from Stanford University Online. Designed, developed, and deployed mobile applications using Flutter framework, integrated AI solutions, and worked with JavaScript, Java, OOP, and Git. Aspiring to join a dynamic and innovative organization as an electrical and computer engineer and use my expertise to create innovative solutions that enhance the company’s operations, efficiency, and impact. Motivated to work with a collaborative team and partners to address the needs and challenges of various sectors and improve the lives of people around the world.
''';
    return Scaffold(
      backgroundColor: AppColors.bgColor1,
      appBar: AppBar(
        toolbarHeight: 90,
        titleSpacing: 100,
        elevation: 0,
        backgroundColor: AppColors.bgColor1,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Portofolio',
                style: AppTextStyles.headerTextStyle(),
              ),
              const Spacer(),
              Text(
                'Home',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'About',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Portofolio',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Services',
                style: AppTextStyles.headerTextStyle(),
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Contact',
                style: AppTextStyles.headerTextStyle(),
              ),
            ],
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.2,
        ).copyWith(
          top: size.height * 0.3,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, it\'s me.',
                      style: AppTextStyles.montserratStyle(
                        color: Colors.white,
                      ),
                    ),
                    Constants.sizedBox(height: 15),
                    Text(
                      'Paulos Kasahun',
                      style: AppTextStyles.headingStyles(),
                    ),
                    Constants.sizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          'And I\'m ',
                          style: AppTextStyles.montserratStyle(
                            color: Colors.white,
                          ),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Electrical and Computer Engineer',
                              textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                            TyperAnimatedText(
                              'Flutter Developer',
                              textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                            TyperAnimatedText(
                              'Hardware Engineer',
                              textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue,
                              ),
                            ),
                          ],
                          totalRepeatCount: 4,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        )
                      ],
                    ),
                    /*
                    Constants.sizedBox(height: 15),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        '',
                        softWrap: true,
                        style: AppTextStyles.normalStyle(),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Constants.sizedBox(height: 22),
                    Row(
                      children: [
                        buildSocialButton(
                          asset: AppAssets.facebook,
                        ),
                        Constants.sizedBox(width: 12),
                        buildSocialButton(
                          asset: AppAssets.twitter,
                        ),
                        Constants.sizedBox(width: 12),
                        buildSocialButton(asset: AppAssets.github),
                        Constants.sizedBox(width: 12),
                        buildSocialButton(asset: AppAssets.linkedIn),
                      ],
                    ),
                    Constants.sizedBox(height: 18),
                    //material button
                    buildMaterialButton(onTap: () {})*/
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton({
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: Colors.lightBlue,
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 10,
      ),
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      elevation: 6,
      height: 46,
      hoverColor: AppColors.aqua,
      minWidth: 130,
      focusElevation: 12,
      splashColor: AppColors.lawGreen,
      child: Text(
        'Download CV',
        style: AppTextStyles.headerTextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.bgColor,
        border: Border.all(
          color: AppColors.themeColor,
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.all(6),
      child: InkWell(
        radius: 50,
        borderRadius: BorderRadius.circular(500),
        onTap: () {},
        splashColor: AppColors.lawGreen,
        hoverColor: AppColors.aqua,
        child: Image.asset(
          asset,
          width: 20,
          height: 24,
          color: AppColors.themeColor,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
