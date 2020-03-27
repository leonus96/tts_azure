import 'package:flutter/material.dart';
import 'package:tts_azure/tts_azure.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TTSAzure',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TTSAzure'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TTSAzure _ttsazure;
  TextEditingController _controller;
  String _lang = 'es-ES';
  String _shortName = 'es-ES-Pablo-Apollo';
  
  @override
  void initState() {
    _ttsazure = TTSAzure("YOUR_SUBSCRIPTION_ID", "YOUR_REGION_INDENTIFIER");
    _controller = TextEditingController();
    _controller.text = "Hello World!";
    super.initState();
  }

  void _play() {
    _ttsazure.play(_controller.text, _lang, _shortName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              title: TextField(
                maxLines: 10,
                controller: _controller,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _play,
        tooltip: 'Speech to Text',
        child: Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}