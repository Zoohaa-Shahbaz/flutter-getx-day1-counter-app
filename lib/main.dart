import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Custombtn.dart';
import 'countController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    countMa countcontoller = Get.put(countMa());
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Getx Ex 1'),
            backgroundColor: Colors.pink, // 🎨 Sets AppBar color to pink
            foregroundColor: Colors.white, // 📝 Sets text/icon color to white
            elevation: 4, // Adds subtle shadow
            centerTitle: true, // Centers the title
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              countcontoller.IncCount();
            },
            backgroundColor: Colors.pink,
            child: Icon(Icons.add),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius:
                            BorderRadius.circular(20), // 🎯 Rounded corners
                      ),
                      alignment: Alignment.center, //
                      child: Obx(
                        () => Text(
                          countcontoller.count.value.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
              SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(child: InkWell(onTap: (){
                      countcontoller.IncCount();
                    },child: MyButton(btnColor: Colors.green, btnTitle: 'Increase',iconData: Icons.add,))),
                    SizedBox(width: 10,),
                    Expanded(child:


                    InkWell(onTap:(){
                      countcontoller.decCount();
                    },child:  MyButton(btnColor: Colors.red, btnTitle: 'Decrease',iconData: Icons.minimize,))),
                  ],
                )
              
                ],
              ),
            ),
          )),
    );
  }
}
