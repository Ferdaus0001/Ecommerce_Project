/// Code by Ferdaus hossan
/// Assignment No : Listview.custom
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final List<String> itmes = [
    // this is a list of Network Image
    "https://i.ibb.co/WtRMfJt/10-Online-Admission.webp",
    "https://i.ibb.co/HH78S1J/3-Pattern-Design-CAD.webp",
    "https://i.ibb.co/P407CHQ/2-Apparel-Merchandising.jpg",
    "https://i.ibb.co/KG2YnDF/5ef49e586d7185001d72ec96.jpg",
    "https://i.ibb.co/k2p3hDC/1-Fashion-Design.jpg",
    "https://i.ibb.co/2Wy2LRR/Fashion-Design-10-copy.jpg",
    "https://i.ibb.co/xsNfvNg/FAJ2387.jpg",
    "https://i.ibb.co/bLsDFW9/3.jpg",
    "https://i.ibb.co/gt4FcT2/9-Lather-Design.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom ListView',
          style: TextStyle(fontSize: 33, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 20,
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Image.network(itmes[index]),
              ),
            );
          },
          childCount: itmes.length,
        ),
      ),
    );
  }
}
