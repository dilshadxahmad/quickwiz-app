import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickwiz_app/locales/english_text.dart';
import 'package:quickwiz_app/utils/constants/my_colors.dart';

class DifficultySelectionScreen extends StatefulWidget {
  const DifficultySelectionScreen({super.key});

  @override
  State<DifficultySelectionScreen> createState() =>
      _DifficultySelectionScreenState();
}

class _DifficultySelectionScreenState extends State<DifficultySelectionScreen> {
  Color buttonBGcolor = MyColors.lightYellowColor;
  final List<String> options = [
    EnglishText.easy,
    EnglishText.medium,
    EnglishText.hard,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                EnglishText.selectDifficulty,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        setState(() {
                          buttonBGcolor = MyColors.lightTunaColor;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(buttonBGcolor),
                      ),
                      child: Text(
                        options[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
