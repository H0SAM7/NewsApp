


import 'package:flutter/material.dart';
import 'package:NewsApp/models/catogery_model.dart';



class Catogery_widget extends StatelessWidget {


  const Catogery_widget({super.key, });

  final List<categoryModel> catt=const[
    categoryModel(image: AssetImage('assets/business.avif'),text: 'business',),
    categoryModel(image: AssetImage('assets/entertaiment.avif'),text: 'entertainment',),
    categoryModel(image: AssetImage('assets/general.avif'),text: 'general',),
    categoryModel(image: AssetImage('assets/health.avif'),text: 'health',),
    categoryModel(image: AssetImage('assets/sports.avif'),text: 'sports',),
    categoryModel(image: AssetImage('assets/technology.jpeg'),text: 'technology',),


];

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10), // left, top, right, bottom
        child: SizedBox(
          height: 140, // You can adjust the height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catt.length,
            itemBuilder: (context, index) {
              return catt[index] ;
              
            },
          ),
        ),
      );
    
  }
}



