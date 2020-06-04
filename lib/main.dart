// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(home:DemoApp()));
// // void main() {
// //   runApp(MaterialApp(home:DemoApp()));
// // }

// class DemoApp extends StatelessWidget{
//   Widget build(BuildContext context)=>Scaffold(body:Signature());
// }

// class Signature extends StatefulWidget{
//   SignatureState createState() => SignatureState();
// }

// class SignatureState extends State<Signature>{
//   List<Offset> _points = <Offset>[];
//   Widget build(BuildContext context){
//     return GestureDetector(
//       onPanUpdate: (DragUpdateDetails details){
//         setState((){
//           RenderBox referenceBox = context.findRenderObject();
//           Offset localPosition =
//           referenceBox.globalToLocal(details.globalPosition);
//           _points = List.from(_points)..add(localPosition);
//         });
//       },
//       onPanEnd: (DragEndDetails details) => _points.add(null),
//       child: CustomPaint(painter: SignaturePainter(_points),size: Size.infinite),
//     );
//   }
// }

// class SignaturePainter extends CustomPainter{
//   SignaturePainter(this.points);
//   final List<Offset>points;
//   void paint(Canvas canvas,Size size){
//     var paint = Paint();
//     paint.color = Colors.lightBlue;
//     paint.strokeCap = StrokeCap.round;
//     paint.strokeWidth = 5.0;
//     for (var i = 0; i < points.length; i++) {
//       if (points[i] != null && points[i+1] != null) {
//         canvas.drawLine(points[i], points[i + 1], paint);
//       }
//     }
//   }
//   bool shouldRepaint(SignaturePainter other)=> other.points != points;
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(FadeAppTest());
// }

// class FadeAppTest extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fade Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyFadeTest(title: 'Fade Demo'),
//     );
//   }
// }

// class MyFadeTest extends StatefulWidget {
//   MyFadeTest({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyFadeTest createState() => _MyFadeTest();
// }

// class _MyFadeTest extends State<MyFadeTest> with TickerProviderStateMixin {
//   AnimationController controller;
//   CurvedAnimation curve;

//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
//     curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//           child: Container(
//               child: FadeTransition(
//                   opacity: curve,
//                   child: FlutterLogo(
//                     size: 100.0,
//                   )))),
//       floatingActionButton: FloatingActionButton(
//         tooltip: 'Fade',
//         child: Icon(Icons.brush),
//         onPressed: () {
//           controller.forward();
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter bottomNavigationBar',
//       theme: new ThemeData.fallback(),
//       home: _MyCanvas(),
//     );
//   }
// }
// // Flutter
// class MyCanvasPainter extends CustomPainter {

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint();
//     paint.color = Colors.amber;
//     canvas.drawCircle(Offset(100.0, 200.0), 40.0, paint);
//     Paint paintRect = Paint();
//     paintRect.color = Colors.lightBlue;
//     Rect rect = Rect.fromPoints(Offset(150.0, 300.0), Offset(300.0, 400.0));
//     canvas.drawRect(rect, paintRect);
//   }

//   bool shouldRepaint(MyCanvasPainter oldDelegate) => false;
//   bool shouldRebuildSemantics(MyCanvasPainter oldDelegate) => false;
// }
// class _MyCanvas extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomPaint(
//         painter: MyCanvasPainter(),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample APP',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);
//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = [];
//   @override
//   void initState() {
//     super.initState();
//     for (var i = 0; i < 100; i++) {
//       widgets.add(getRow(i));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sample App"),
//       ),
//       body: ListView.builder(
//         itemCount: widgets.length,
//         itemBuilder: (BuildContext context, int position) {
//           return getRow(position);
//         },
//       ),
//     );
//   }

//   Widget getRow(int i) {
//     return GestureDetector(
//       child: Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("第 $i 行"),
//       ),
//       onTap: () {
//         setState(() {
//           widgets.add(getRow(widgets.length + 1));
//           print('row $i');
//         });
//       },
//     );
//   }
// }

// import 'dart:convert';
// import 'dart:isolate';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(SampleApp());
// }

// class SampleApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sample App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SampleAppPage(),
//     );
//   }
// }

// class SampleAppPage extends StatefulWidget {
//   SampleAppPage({Key key}) : super(key: key);

//   @override
//   _SampleAppPageState createState() => _SampleAppPageState();
// }

// class _SampleAppPageState extends State<SampleAppPage> {
//   List widgets = [];

//   @override
//   void initState() {
//     super.initState();

//     loadData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sample App"),
//       ),
//       body: ListView.builder(
//           itemCount: widgets.length,
//           itemBuilder: (BuildContext context, int position) {
//             return getRow(position);
//           }));
//   }

//   Widget getRow(int i) {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Text("Row ${widgets[i]["title"]}")
//     );
//   }

//   // loadData() async {
//   //   String dataURL = "https://jsonplaceholder.typicode.com/posts";
//   //   http.Response response = await http.get(dataURL);
//   //   setState(() {
//   //     widgets = json.decode(response.body);
//   //   });
//   // }
//   loadData() async {
//     // 打开ReceivePort以接收传入的消息
//     ReceivePort receivePort = ReceivePort();
//     //创建并生成与当前Isolate共享相同代码的Isolate
//     await Isolate.spawn(dataLoader, receivePort.sendPort);

//     // 流的第一个元素
//     SendPort sendPort = await receivePort.first;
//     // 流的第一个元素被收到后监听会关闭，所以需要新打开一个ReceivePort以接收传入的消息
//     ReceivePort response = ReceivePort();
//     //通过此发送端口向其对应的“ReceivePort”①发送异步[消息]，这个“消息”指的是发送的参数②。
//     sendPort.send(
//         ["https://jsonplaceholder.typicode.com/posts", response.sendPort]);
//     // 获取端口发送来的数据③
//     List msg = await response.first;

//     setState(() {
//       widgets = msg;
//     });
//   }

//   // isolate的入口函数，该函数会在新的Isolate中调用，Isolate.spawn的message参数会作为调用它时的唯一参数
//   static dataLoader(SendPort sendPort) async {
//     // 打开ReceivePort①以接收传入的消息
//     ReceivePort port = ReceivePort();

//     // 通知其他的isolates，本isolate 所监听的端口
//     sendPort.send(port.sendPort);
//     // 获取其他端口发送的异步消息 msg② -> ["https://jsonplaceholder.typicode.com/posts", response.sendPort]
//     await for (var msg in port) {
//       //等价于List msg= await port.first;
//       String data = msg[0];
//       SendPort replyTo = msg[1];

//       String dataURL = data;
//       http.Response response = await http.get(dataURL);
//       // 其对应的“ReceivePort”发送解析出来的JSON数据③
//       replyTo.send(json.decode(response.body));
//     }
//   }
// }
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  showLoadingDialog() {
    if (widgets.length == 0) {
      return true;
    }

    return false;
  }

  getBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    } else {
      return getListView();
    }
  }

  getProgressDialog() {
    return Center(child: CircularProgressIndicator());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Sample App"),
        ),
        onPressed: (){
          print("object");
        },
        body: 
        // getBody(),
        // 滚动条
        Theme.of(context).platform == TargetPlatform.iOS
          ? CupertinoScrollbar(
              child: getBody(),
            )
          : Scrollbar(
              child: getBody(),
            ),
            );
  }

  ListView getListView() => ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int position) {
        return getRow(position);
      });

  Widget getRow(int i) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Row ${widgets[i]["title"]}"),
        );
  }

  loadData() async {
    // 打开ReceivePort以接收传入的消息
    ReceivePort receivePort = ReceivePort();
    //创建并生成与当前Isolate共享相同代码的Isolate
    await Isolate.spawn(dataLoader, receivePort.sendPort);

    // 流的第一个元素
    SendPort sendPort = await receivePort.first;
    // 流的第一个元素被收到后监听会关闭，所以需要新打开一个ReceivePort以接收传入的消息
    ReceivePort response = ReceivePort();
    //通过此发送端口向其对应的“ReceivePort”①发送异步[消息]，这个“消息”指的是发送的参数②。
    sendPort.send(
        ["https://jsonplaceholder.typicode.com/posts", response.sendPort]);
    // 获取端口发送来的数据③
    List msg = await response.first;

    setState(() {
      widgets = msg;
    });
  }

  // isolate的入口函数，该函数会在新的Isolate中调用，Isolate.spawn的message参数会作为调用它时的唯一参数
  static dataLoader(SendPort sendPort) async {
    // 打开ReceivePort①以接收传入的消息
    ReceivePort port = ReceivePort();

    // 通知其他的isolates，本isolate 所监听的端口
    sendPort.send(port.sendPort);
    // 获取其他端口发送的异步消息 msg② -> ["https://jsonplaceholder.typicode.com/posts", response.sendPort]
    await for (var msg in port) {
      //等价于List msg= await port.first;
      String data = msg[0];
      SendPort replyTo = msg[1];

      String dataURL = data;
      http.Response response = await http.get(dataURL);
      // 其对应的“ReceivePort”发送解析出来的JSON数据③
      replyTo.send(json.decode(response.body));
    }
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({
//     Key key,
//   }) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('demo'),
//       ),
//       body: Theme.of(context).platform == TargetPlatform.iOS
//           ? CupertinoScrollbar(
//               child: _buildListView(),
//             )
//           : Scrollbar(
//               child: _buildListView(),
//             ),
//     );
//   }

//   Padding _buildListView() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SingleChildScrollView(
//         child: Column(children: generatorLists(30)),
//       ),
//     );
//   }
// }

// List<Widget> generatorLists(n) {
//   List<Widget> lst = [];
//   for (var i = 0; i < n; i++) {
//     lst.add(Container(
//       decoration: BoxDecoration(color: Colors.grey[400]),
//       width: double.infinity,
//       height: 30,
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//     ));
//   }
//   return lst;
// }