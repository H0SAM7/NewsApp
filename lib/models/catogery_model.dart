import 'package:flutter/material.dart';
import 'package:NewsApp/screens/catogery_screens.dart';

class categoryModel extends StatelessWidget {
  
  const categoryModel({super.key, this.image, this.text,});
  final ImageProvider? image;
  final String? text;


  
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CatogerysScreens(
                catogery:text ?? 'general' ,
              );
            },
          ),
        );
      },
    child: Padding(
      
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 150,
        width: 220,
        decoration: BoxDecoration(
          image: image != null
              ? DecorationImage(
                  image: image!,
                  fit: BoxFit.cover,
                )
              : const DecorationImage(
                  image: AssetImage('assets/22'),
                  fit: BoxFit.cover,
                ),
          borderRadius: BorderRadius.circular(16),
          color: image == null ? Colors.grey : null, // Fallback color if no image
        ),
        child: Center(
          child: Text(
            text !, // Fallback text if no text is provided
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ));
  }
}
