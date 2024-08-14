import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controller/news_controller.dart';

NewsController newsController = Get.put(NewsController());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,color: Colors.white,),
          )],
          title: Container(
              alignment: Alignment.centerLeft,
              height: 100,
              width: 140,
              child: Image.asset(
                  fit: BoxFit.cover,
                  '')),
          backgroundColor: const Color(0xff202020),
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text('Apple',style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
              Text('Tesla',style: TextStyle(color: Colors.white, fontSize: 18),),
              Text('Business', style: TextStyle(color: Colors.white, fontSize: 18),),
              Text('HeadLine', style: TextStyle(color: Colors.white, fontSize: 18),),
              Text('Stock', style: TextStyle(color: Colors.white, fontSize: 18),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            
          ],
        ),
      ),
    );
  }
}