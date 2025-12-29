import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/Presentation/chooseMode/page/choose_mode.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';
import 'package:spotify/core/config/theme/app_colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppImages.introBG),
              fit: BoxFit.cover,
            )
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.45),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                    height: 60,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                  'Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey),
                ),
                SizedBox(
                  height: 40,
                ),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const ChooseMode(),
                        )
                        );
                  },
                  title: 'Get Started',
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
