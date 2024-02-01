import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tec_toe_1/controller.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  controller co = new controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Obx(() => Text("${co.msg}", style: TextStyle(fontSize: 25),),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Fun(Colors.red, 0),
              Fun(Colors.yellow, 1),
              Fun(Colors.red, 2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Fun(Colors.yellow, 3),
              Fun(Colors.red, 4),
              Fun(Colors.yellow, 5),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Fun(Colors.red, 6),
              Fun(Colors.yellow, 7),
              Fun(Colors.red, 8),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              co.l.value = ["", "", "", "", "", "", "", "", ""];
              co.msg.value = "";
            }, child: Text("RESET")),
          )
        ],
      ),
    );
  }

  Widget Fun(MaterialColor col, int i) {
    return InkWell(
      onTap: () => co.get(i),
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Obx(() => Text("${co.l[i]}", style: TextStyle(fontSize: 25),),)
      ),
    );
  }
}
