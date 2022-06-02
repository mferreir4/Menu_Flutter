import 'dart:html';

import 'package:flutter/material.dart';
import 'package:menu_mobile45/configuracoes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
   
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),

      ),
      body: Center(
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Theme.of(context).colorScheme.primary,
      child: IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.primary),
      child: Padding(
        padding: const EdgeInsets.all(12.00),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){

            }, 
            icon: const Icon(Icons.settings_applications_sharp, color:Colors.white,)),
            IconButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(_)=>Configuracoes()));

            }, 
            icon: const Icon(Icons.home_rounded, color: Colors.white)),
            
            IconButton(onPressed: (){

            }, 
            icon: const Icon(Icons.help_outline_sharp, color: Colors.white,)),
            
          ],

        ),
        ),
        
    
      ),
    ),
    );
  }
}
