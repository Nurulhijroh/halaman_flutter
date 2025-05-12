import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.white,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Color.black87),
          titleLarge: TextStyle(fontSize: 22, fontWeight: fontWeight.bold),
        ),
        appBarTheme: const appBarTheme(
          color: Color.blue,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: fontWeight.bold),
        ),
      ),
      home: const HomePage(),
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

