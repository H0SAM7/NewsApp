import 'package:flutter/material.dart';
import 'package:NewsApp/widgets/news_list_bulider.dart';




class CatogerysScreens extends StatelessWidget {
  final String catogery;
   const CatogerysScreens({super.key,required this.catogery});

  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomScrollView(
            slivers: [
              NewsViewBuilder(q: catogery),
            ],
          ),
        ),
      );
    } catch (e) {
      return const Scaffold(
        body: Center(
          child: Text('No News Today T3ala Tomowrro'),
        ),
      );
    }
  }
}