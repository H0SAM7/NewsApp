import 'package:flutter/material.dart';
import 'package:NewsApp/models/article_model.dart';
import 'package:NewsApp/widgets/news_widget.dart';

class NewsView extends StatelessWidget{

  @override
  




    List<ArticleModel> arti;
    NewsView({super.key, required this.arti});
  

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(childCount: arti.length
    ,(context,index){
      return News_widget(articleModel: arti[index]);
    }));
  }
}