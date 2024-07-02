import 'package:flutter/material.dart';


import 'package:NewsApp/widgets/catogery_widget.dart';
import 'package:NewsApp/widgets/news_list_bulider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of news items
    

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('News', style: TextStyle(color: Colors.black)),
              Text('Cloud', style: TextStyle(color: Colors.orange)),
            ],
          ),
        ),
      ),
      
      body: const Padding(
         padding: EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Catogery_widget()),
            
             NewsViewBuilder(q: 'general',)

          ]
          ,),
        // child: Column(children: [
        //   CustomListView(),
        //   SizedBox(height: 10,),
        //   Expanded(child: newsScreen())
         
        // ],),
      )
        
        
      );
  }
}
