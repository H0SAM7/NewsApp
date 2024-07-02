
import 'package:dio/dio.dart';
import 'package:NewsApp/models/article_model.dart';



class NewsService{
  final Dio dio;

  NewsService( {required this.dio});


  Future<List<ArticleModel>> getGeneralNews(String q) async {
  try {
  Response response=await dio.get('https://newsapi.org/v2/everything?q=$q&apiKey=7e497b4a6fb544f4b9d54f031f0d93a6');
  Map<String,dynamic> jsondata=response.data;
  
  List<dynamic> articles=jsondata["articles"];
  
  List<ArticleModel> aritclesModelList=[];
  
  for (var art in articles) 
  {
    ArticleModel artmodel=ArticleModel(image: art['urlToImage'], title: art['title'], subtitle: art['description'] , url: art["url"]); //url: art["url"]);
    aritclesModelList.add(artmodel);
  
  }
  
  return aritclesModelList;
}  catch (e) {
  
  return [];
  // TODO
}




}



}