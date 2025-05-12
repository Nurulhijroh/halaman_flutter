import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
     
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('Halaman Utama'),
    ),
    body: Center(
      child: ElevatedButton(
        child: const Text('ke Halaman kedua'),
        onPressed: (){
          Navigator.Push(
          context,
          MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
      ),
    ),
  );
 }
}

