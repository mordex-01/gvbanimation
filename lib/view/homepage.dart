import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gvbanimation/controller/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({super.key});
  final List<String> imagesList = [
    "assets/cat1.png",
    "assets/cat2.png",
    "assets/cat3.png",
    "assets/cat4.png"
  ];
  static const homePageRoute = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Grid View With Animations"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: imagesList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            childAspectRatio: 2,
            mainAxisExtent: 200,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => Container(),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              imagesList[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
