import 'package:flutter/material.dart';

void main() {
  //建立appTitle和hiFlutter物件
  var appTitle = Text('我的第一個Flutter app'),
      hiFlutter=Text(
        'Hi, Flutter.0308',
        //利用style參數設定字體大小為50。
        //設定字體大小的方式是產生一個TextStyle類別的物件，然後利用它的fontSize參數設定字體大小。
        style: TextStyle(
          fontSize: 30,
        color: Colors.yellow,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration. lineThrough,

        ),
      );
  //建立appBody物件
  //appBody物件，它是Center類別的物件。
  //Center類別的功能是讓物件顯示在畫面中央，我們把hiFlutter物件傳給它的child參數
  //var img = Image.network("https://images.pexels.com/photos/6976092/pexels-photo-6976092.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  //  var appBody=Center(
 //    child: hiFlutter,
 //    heightFactor:2,
 //    widthFactor: 1.5,
 //    //child: img,
 // );

   // var appBody = Center(
   //  child: Container(
   //     margin: const EdgeInsets.all(10.0),
   //    color: Colors.yellow,
   //    width: 100.0,
   //    height: 100.0,
   //  ),
   // );
  // var appBody = Container(
  //   child: hiFlutter,
  //   alignment: Alignment.topCenter,
  //   margin: EdgeInsets.all(50),
  //   color: Colors.white,
  //   padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
  // );
  var appBody = Container(
    child: hiFlutter,
    alignment: Alignment.topCenter,
    margin: EdgeInsets.all(100),
    color: Colors.white,
    padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
  );
  //建立appBar物件，它是AppBar類別的物件，我們把appTitle傳給它的title參數。
  var appBar=AppBar(
    title: appTitle,
    backgroundColor: Color(0xffff9800),
  );
  //建立app物件
  var app =MaterialApp(
    //home參數是設定一個Scaffold類別的物件，我們把前面建立的appBar物件設定給appBar參數，appBody物件設定給body參數
    home: Scaffold(
      appBar: appBar,
        body: appBody,
      backgroundColor: Colors.red),
  );
  //主函式最後一行是呼叫runApp()函式，並且把app物件傳給它，這樣APP就會開始運作。
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
