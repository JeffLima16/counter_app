import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Números de Clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("clicado: $counter");
          counter++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
