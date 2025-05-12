import 'package:flutter/material.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
    const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Halaman Utama'),
            ),
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    const Text(
                        'Selamat Datang',
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:Theme.of(context).primaryColor,
                            foregroundColor:Colors.white,
                        ),
                        onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SecondPage()),
                            );
                        },
                        child: const Text('Klik Di Sini'),
                    ),
                  ] ,
                ),
            ),
        );
    }
}