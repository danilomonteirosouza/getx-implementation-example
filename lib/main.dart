import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Counter(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class Controller extends GetxController{
  static Controller get to => Get.find();

  String titulo = "GetX\u{2122} example";
  int valor = 0;

  void incremetarValor(){
    valor++;
    update();
  }
}

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
        init: Controller(),
        builder: (_){
          return Scaffold(
            appBar: AppBar(
              title: Text(Get.find<Controller>().titulo),
            ),
            body: Center(
              child: Text(
                "${Get.find<Controller>().valor}",
                style: const TextStyle(
                  fontSize: 70
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                Get.find<Controller>().incremetarValor();
              },
              child: const Icon(Icons.add),
            ),
          );
        }
    );
  }
}
