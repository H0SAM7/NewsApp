import 'package:flutter/material.dart';
import 'package:NewsApp/models/article_model.dart';
import 'package:NewsApp/services/webViewEx.dart';




class News_widget extends StatelessWidget {
  final ArticleModel articleModel;
  

  const News_widget({super.key, required this.articleModel});
  
  @override
  Widget build(BuildContext context) {
    bool isload=false;
    // return GestureDetector(
    //   onTap: () {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => Webview(),
    //       )

    //     );

    //   },
      return GestureDetector(
          onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context){
              
              return webviewExample(url: articleModel.url,);
            }
          )

        );

      },


        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                 articleModel.image ?? "https://as1.ftcdn.net/v2/jpg/04/34/72/82/1000_F_434728286_OWQQvAFoXZLdGHlObozsolNeuSxhpr84.jpg",
                height: 300,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              articleModel.title ,
        
              maxLines: 2,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              articleModel.subtitle??'',
              maxLines: 2,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );
  }
}

