import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Textfild(),
    );
  }
}

class Textfild extends StatefulWidget {
  Textfild({super.key});

  @override
  State<Textfild> createState() => _TextfildState();
}

class _TextfildState extends State<Textfild> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  late String controller3;

  void _login() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  void _Navgitor() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Towpage(
          name: _controller1.text,
        ),
      ),
    );
  }

  void _Navgitor1() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Towpage1(
          name: _controller1.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter the Name',
                hintText: 'ahmed',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              controller: _controller1,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'The Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              controller: _controller2,
              readOnly: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
              onPressed: _login,
              child: const Text('Submit'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
              onPressed: _Navgitor,
              child: const Text('Navigator'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
              onPressed: _Navgitor1,
              child: const Text('Navigator 1'),
            ),
          ],
        ),
      ),
    );
  }
}

class Towpage extends StatelessWidget {
  final String name;
  Towpage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tow Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}

class Towpage1 extends StatefulWidget {
  final String name;

  Towpage1({super.key, required this.name});

  @override
  State<Towpage1> createState() => _Towpage1State();
}

class _Towpage1State extends State<Towpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tow Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Text(widget.name),
          ),
          const SizedBox(height: 20),
          const Text('data'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
            ),
            child: const Text('Back'),
          )
        ],
      ),
    );
  }
}
