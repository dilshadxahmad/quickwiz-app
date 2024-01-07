import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quickwiz_app/Network/api_links.dart';
import 'package:quickwiz_app/models/response_models/quiz_response_model.dart';

class ApiService {
  static Future<QuizResponseModel> getQuizQuestions() async {
    var response = await http.get(Uri.parse(ApiLinks.quizQuestions));

    debugPrint('Response from API:${jsonDecode(response.body)}');

    QuizResponseModel convertedResponse =
        QuizResponseModel.fromJson(jsonDecode(response.body));
    return convertedResponse;
  }
}
