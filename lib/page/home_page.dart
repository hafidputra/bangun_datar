import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xD02828FF)),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu (title: "Persegi", imageAsset: "assets/segitiga.png")),
              Expanded(child: CustomMenu (title: "Persegi", imageAsset: "assets/segilima.png")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu (title: "Persegi", imageAsset: "assets/segilima.png")),
              Expanded(child: CustomMenu (title: "Persegi", imageAsset: "assets/segitiga.png")),
            ],
          ),
      ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(color: Colors.yellow.shade400, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 50,  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title ),
            ),
          ],
        ));
  }
}
