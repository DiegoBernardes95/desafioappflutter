import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Primeiro App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Meu Primeiro App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 26, 32),
        title: Text(widget.title),
        toolbarHeight: 90,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Container( 
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.pexels.com/photos/5926383/pexels-photo-5926383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            fit: BoxFit.cover,
          )
        ),
          child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Olá, meu nome é Diego Bernardes!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              
            ),
            Text(
                'Esse é meu 1º app desenvolvido em Flutter.\nQue venham muitos por aí!',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      )),
    );
  }
}
