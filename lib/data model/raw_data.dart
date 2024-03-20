

class DataModel {
  String correctAnswer;
  List<String> options;
  List<String> icon;
  String text;

  DataModel(
      {required this.icon,
      required this.text,
      required this.correctAnswer,
      required this.options});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      icon: List.from(json["question_options_icon"]),
      text: json["text"],
      correctAnswer: json["correctAnswer"],
      options: List.from(json["question_options"]),
    );
  }
}
