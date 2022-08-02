import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _original_text = "Click buttons to change this text";
  void _gestureText() {
    setState(() {
      _original_text = "Gesture dector tapped";
    });
  }

  void _inkwellText() {
    setState(() {
      _original_text = "Inkwell tapped";
    });
  }

  void _onlineBtn(){
    setState(() {
      _original_text = "Outline Button tapped";
    });
  }

  void _textBtn(){
    setState(() {
      _original_text = "Text Button tapped";
    });
  }

  void _elevatedBtn(){
    setState(() {
      _original_text = "Elevated Button tapped";
    });
  }

  void _floatingBtn(){
    setState(() {
      _original_text = "Floating Button tapped";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '\"Changing text via button\"',
            style: TextStyle(
              fontFamily: "IndieFlower-Regular",
              fontSize: 30,
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$_original_text',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            GestureDetector(
              onTap: _gestureText,
              child: Container(
                
                child:const Text("Gesture detector"),
              ),
            ),
            InkWell(
              hoverColor: Colors.black,
              onTap: _inkwellText,              
              child:const Text('Inkwell detector'),
              ),
            
            OutlinedButton(
              onPressed: _onlineBtn,
              child:const FittedBox(
                child: Text('Outline detector'),
              )),
            
            TextButton(
              onPressed: _textBtn
              , child: Text('Text Button detector')
            ),

            ElevatedButton(
              onPressed: _elevatedBtn,
              child: Text("Elevated Button Detector")
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatingBtn,
        child: Icon(Icons.add),
      ),
    );
  }
}
