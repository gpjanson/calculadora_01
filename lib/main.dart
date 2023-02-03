import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculadora(),
    );
  }
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(right: 10),
        alignment: Alignment.bottomCenter,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(),
                child: Text('1.337',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                    )),
              ),
              Container(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  constroiBotao('C'),
                  constroiBotao('+/-'),
                  constroiBotao('%'),
                  constroiBotao('÷', color: Colors.orange),
                ],
              ),
              Container(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  constroiBotao('7', color: Colors.grey.shade800),
                  constroiBotao('8', color: Colors.grey.shade800),
                  constroiBotao('9', color: Colors.grey.shade800),
                  constroiBotao('x', color: Colors.orange),
                ],
              ),
              Container(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  constroiBotao('4', color: Colors.grey.shade800),
                  constroiBotao('5', color: Colors.grey.shade800),
                  constroiBotao('6', color: Colors.grey.shade800),
                  constroiBotao('-', color: Colors.orange),
                ],
              ),
              Container(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  constroiBotao('1', color: Colors.grey.shade800),
                  constroiBotao('2', color: Colors.grey.shade800),
                  constroiBotao('3', color: Colors.grey.shade800),
                  constroiBotao('+', color: Colors.orange),
                ],
              ),
              Container(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  constroiBotaoMaior('0', color: Colors.grey.shade800),
                  constroiBotao(',', color: Colors.grey.shade800),
                  constroiBotao('=', color: Colors.orange),
                ],
              ),
            ]),
      ),
    );
  }

  Widget constroiBotao(String text, {Color color = Colors.grey}) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const CircleBorder(),
              ),
              backgroundColor: MaterialStateProperty.all(color)),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: color == Colors.grey ? Colors.black : Colors.white,
            ),
          )),
    );
  }

  // ignore: non_constant_identifier_names
  Widget constroiBotaoMaior(String text, {Color color = Colors.grey}) {
    return SizedBox(
      width: 180,
      height: 80,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const StadiumBorder(),
              ),
              backgroundColor: MaterialStateProperty.all(color),
              alignment: Alignment.centerLeft),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: const TextStyle(fontSize: 30),
            ),
          )),
    );
  }
}
