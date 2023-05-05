import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';
import 'package:hivelearning/login01.dart';

import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hive DataBase")),


      body: Column(

        children: [
         Container(
          height: MediaQuery.of(context).size.height*0.8,
           child: FutureBuilder(
            future : Hive.openBox("testy"),
            builder: (context, text){
            return Column(    
         
              children: [                
                       Text(text.data!.get('ff')),
         
                       Text(text.data!.get("chirag").toString()),
                       Text(text.data!.get("age").toString()),
         
         
                       ListTile(
                        iconColor: Colors.red,
                        textColor: Colors.blue,
         
         
                        title: Text(text.data!.get("chirag").toString()),
                        subtitle:Text(text.data!.get("age").toString()),
                       ),
         
                       TextButton(onPressed: (){
                        Get.to(LoginScreen1());
         
                       }, child: Text("Go to Login Screen"))
         
                       
         
         
         
              ]
            );
           }
                 ),
         )



        ],
        
        ),
        floatingActionButton: FloatingActionButton(
          
          
          onPressed: () async{
            var box = await Hive.openBox("testy");
            box.put("chirag", "kumar");
            box.put("age", 34);
            box.put('ff', 'dfs');
           
          },

          ),

      

      
    );
  }
}