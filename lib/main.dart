import 'package:flutter/material.dart';
import './NextPage.dart';

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
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.network(
            //   "http://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"
            // ),
            Image.asset("./images/easy-logo-900px.gif"),
            Icon(
              Icons.abc,
            ),
            RaisedButton(
              child: Text('次へ'),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>NextPage("good owl")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
