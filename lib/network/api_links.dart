class ApiLinks {
  ///-------------------------- PRODUCTION Environment---------------------------------------
  static const String apiBaseURL = "";

  ///-------------------------- DEVELEOPMENT Environment---------------------------------------
  // static const String apiBaseURL = "https://tpidev.azurewebsites.net/api/";

  ///--------------------------- UAT Environment-----------------------------------------------
  // static const String apiBaseURL = "https://tpiuat.azurewebsites.net/api/";

  //Account
  static const String codingResources =
      'https://api.sampleapis.com/codingresources/codingResources';
  static const String articles = 'https://dev.to/api/articles';
  static const String usersList = 'https://randomuser.me/api/?results=10';
  static const String quizApp = 'https://opentdb.com/api_config.php';
  static const String quizQuestions =
      'https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple';
}
