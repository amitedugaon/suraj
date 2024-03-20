import 'package:get/get.dart';
import 'package:suraj_english/data%20model/raw_data.dart';

class GetDataController extends GetxController {
  RxList<DataModel> dataList = <DataModel>[].obs;
  RxBool isLoading = false.obs;
  RxInt selectedQuestion = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDataList();
  }

  getDataList() {
    List<dynamic> one_to_hundreds = [
      {
        "correctAnswer": "one",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "one"
      },
      {
        "correctAnswer": "two",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "two"
      },
      {
        "correctAnswer": "three",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "three"
      },
      {
        "correctAnswer": "four",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "four"
      },
      {
        "correctAnswer": "five",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "five"
      },
      {
        "correctAnswer": "six",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "six"
      },
      {
        "correctAnswer": "seven",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "seven"
      },
      {
        "correctAnswer": "eight",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "eight"
      },
      {
        "correctAnswer": "nine",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "nine"
      },
      {
        "correctAnswer": "ten",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "ten"
      },
      {
        "correctAnswer": "one",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "one"
      },
      {
        "correctAnswer": "two",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "two"
      },
      {
        "correctAnswer": "three",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "three"
      },
      {
        "correctAnswer": "four",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "four"
      },
      {
        "correctAnswer": "five",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "five"
      },
      {
        "correctAnswer": "six",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "six"
      },
      {
        "correctAnswer": "seven",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "seven"
      },
      {
        "correctAnswer": "eight",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "eight"
      },
      {
        "correctAnswer": "nine",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "nine"
      },
      {
        "correctAnswer": "ten",
        "question_options": ["one", "two", "three", "four"],
        "question_options_icon": [
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg",
          "https://img.freepik.com/premium-vector/gallery-icon-picture-landscape-vector-sign-symbol_660702-224.jpg"
        ],
        "text": "ten"
      },
    ];
    dataList.addAll(one_to_hundreds.map((e) => DataModel.fromJson(e)).toList());
    isLoading.value = true;
  }
}
