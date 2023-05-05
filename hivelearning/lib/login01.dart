import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';





class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  @override
  Widget build(BuildContext context) {


    final TextEditingController controller1 = Get.put(TextEditingController());
    final TextEditingController controller2 = Get.put(TextEditingController());

      
   
    
      


      
    
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Login Screen"),),
      body: Center(
        child: Container(


          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        
                TextField(
                  controller: controller1,
             
                      decoration: InputDecoration(
                        hintText: "Email"
                      ),
                ),
          
                TextField(
                  controller: controller2,
             
                      decoration: InputDecoration(
                        hintText: "Password"
                      ),
                ),



                OutlinedButton(
                  onPressed: (){

                  }, 
                  child: Text("Login"))
                   
              ],
            ),
          ),
        )


      )
      
    );
  }
}