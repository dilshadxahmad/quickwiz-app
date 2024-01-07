import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickwiz_app/locales/english_text.dart';
import 'package:quickwiz_app/models/option_model.dart';
import 'package:quickwiz_app/utils/constants/my_colors.dart';

class DifficultySelectionScreen extends StatefulWidget {
  const DifficultySelectionScreen({super.key});

  @override
  State<DifficultySelectionScreen> createState() =>
      _DifficultySelectionScreenState();
}

class _DifficultySelectionScreenState extends State<DifficultySelectionScreen> {
  int? _selectedIndex;
  final List<OptionModel> options = [
    OptionModel(id: 0, title: EnglishText.easy, isSelected: false),
    OptionModel(id: 1, title: EnglishText.medium, isSelected: false),
    OptionModel(id: 2, title: EnglishText.hard, isSelected: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(EnglishText.chooseDifficulty),
        leading: const SizedBox(),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      EnglishText.selectDifficulty,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    ...List.generate(
                      options.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: SizedBox(
                            width: double.maxFinite,
                            height: 50.h,
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              },
                              style: Theme.of(context)
                                  .textButtonTheme
                                  .style
                                  ?.copyWith(
                                    side: const MaterialStatePropertyAll(
                                      BorderSide(
                                          color: MyColors.antiqueYellowColor),
                                    ),
                                    backgroundColor: MaterialStatePropertyAll(
                                      _selectedIndex == index
                                          ? MyColors.antiqueYellowColor
                                          : Colors.transparent,
                                    ),
                                  ),
                              child: Text(
                                options[index].title,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50.h,
              child: ElevatedButton(
                onPressed: _selectedIndex != null ? () {} : null,
                child: const Text(EnglishText.startQuiz),
              ),
            )
          ],
        ),
      ),
    );
  }
}
