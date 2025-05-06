import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        name: 'John Doe',
        balance: '\$2.00',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.name, required this.balance});

  final String name;
  final String balance;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: const Text('Kobi'),
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
           shadowColor: Colors.grey,
            elevation: 8.0,
            child: ListTile(
              title: Text(widget.name),
              subtitle: Text(widget.balance),
              trailing: GestureDetector(
                onTap: () {
                  print('My name is ${widget.name}, and I have ${widget.balance}');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5.0)
                  ),

                  child: const Text(
                    'Send Money',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
