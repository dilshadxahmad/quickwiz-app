import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Center(
        child: SizedBox(
          height: 270.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.quiz),
              const Text("Select your favourite type of quiz:"),
              SizedBox(
                width: 200.w,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Easy"),
                ),
              ),
              SizedBox(
                width: 200.w,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Medium"),
                ),
              ),
              SizedBox(
                width: 200.w,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Hard"),
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
