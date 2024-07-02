
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:NewsApp/models/article_model.dart';
import 'package:NewsApp/services/news_service.dart';
import 'package:NewsApp/widgets/News_view.dart';

class NewsViewBuilder extends StatefulWidget {
  final String q;
  const NewsViewBuilder({
    super.key,
    required this.q
   
  });

  @override
  State<NewsViewBuilder> createState() => _NewsViewBuilderState();
}

class _NewsViewBuilderState extends State<NewsViewBuilder> {
  
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsService(dio: Dio()).getGeneralNews(widget.q);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future
    , builder: (context,snapshot){

    if (snapshot.hasData) {
  return NewsView(arti: snapshot.data !);
  }
  
else if (snapshot.hasError) {
  return const Center(child: Text('Try again'));
    }
    else{
      return const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
    }
  });



    // return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):
    //  NewsView(arti: arti,);
  }
}