import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Page1(),
    ),
  );
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(_androidCreateRoute());
              },
              child: const Text("Go Android!"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(_iosCreateRoute());
              },
              child: const Text("Go IOS!"),
            ),
          ),
        ],
      ),
    );
  }

  Route<Object?> _iosCreateRoute() {
    return CupertinoPageRoute(
      builder: (context) => IosPage(),
    );
  }
}

Route _androidCreateRoute() {
  return MaterialPageRoute(
    builder: (context) => androidPage(),
  );
}

class androidPage extends StatelessWidget {
  const androidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: const Center(
        child: Text("Android Page"),
      ),
    );
  }
}

class IosPage extends StatelessWidget {
  const IosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 243, 33),
      appBar: AppBar(),
      body: const Center(
        child: Text("Ios Page"),
      ),
    );
  }
}

// Go Page, apple route anima