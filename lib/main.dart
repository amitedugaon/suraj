import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/record_stop_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ShowPage(),
    );
  }
}

class ShowPage extends StatefulWidget {
  const ShowPage({super.key});

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  GetDataController getDataController = Get.put(GetDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => getDataController.isLoading.value == true
          ? ListView.builder(
              itemCount: getDataController.dataList.length ~/ 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    getDataController.selectedQuestion.value = 10 * index + 1;
                    Get.to(() => ViewPage(index: index));
                  },
                  child: Card(
                    elevation: 3,
                    // Adjust elevation as per your preference
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    // Margin for the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Border radius for the card
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "${10 * index + index} to ${(index + 1) * 10}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: Text("Loading"),
            )),
    );
  }
}

class ViewPage extends StatefulWidget {
  int index;

  ViewPage({super.key, required this.index});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  GetDataController getDataController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() => Text(
              getDataController
                  .dataList[getDataController.selectedQuestion.value].text,
              style: TextStyle(fontSize: 30),
            )),
        ElevatedButton(
            onPressed: () {
              getDataController.selectedQuestion.value++;
            },
            child: Text("Next"))
      ],
    ));
  }
}
