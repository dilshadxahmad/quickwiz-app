import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickwiz_app/locales/english_text.dart';
import 'package:quickwiz_app/routes/app_navigation.dart';
import 'package:quickwiz_app/routes/app_navigation_routes.dart';
import 'package:quickwiz_app/utils/constants/my_colors.dart';
import 'package:quickwiz_app/utils/constants/my_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // late Future<QuizResponseModel> _quizQuestions;

  @override
  void initState() {
    super.initState();
    // _quizQuestions = ApiService.getQuizQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkTunaColor,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                MyImages.splahsScreenIllustration,
                height: 350.h,
              ),
              RichText(
                text: TextSpan(
                  text: EnglishText.think,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: MyColors.white,
                      ),
                  children: [
                    TextSpan(
                      text: EnglishText.outsideOfTheBox,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: MyColors.antiqueYellowColor,
                          ),
                    ),
                    TextSpan(
                      text: EnglishText.withQuickwiz,
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: MyColors.white,
                          ),
                    ),
                  ],
                ),
              ),
              Text(
                EnglishText.takeLearningToNextLevel,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 130.w,
                  child: TextButton(
                    onPressed: () {
                      AppNavigation.navigateTo(
                          routeName: AppNavRoutes.difficultySelectionScreen);
                    },
                    style: Theme.of(context).textButtonTheme.style?.copyWith(
                          foregroundColor: const MaterialStatePropertyAll(
                              MyColors.antiqueYellowColor),
                        ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(EnglishText.continueText),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // body: FutureBuilder(
      //   future: _quizQuestions,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return Container(
      //         child: Text(
      //           snapshot.data?.results?[0].question ?? "",
      //         ),
      //       );
      //     } else if (snapshot.hasError) {
      //       return Text('Has error ${snapshot.error}');
      //     } else if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //     return const Text('No Data found');
      //   },
      // ),
    );
  }
}
