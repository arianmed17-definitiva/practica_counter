import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              //esto hace que la imagen crezca
              width: (100 + counter * 10).toDouble(),
              height: (100 + counter * 10).toDouble(),
              child: Image.asset(
                'assets/images/alvarito.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              counter == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
            backgroundColor: Colors.blueAccent,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            backgroundColor: Colors.blueAccent,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
