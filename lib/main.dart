import "package:flutter/material.dart";
import "package:audioplayers/audioplayers.dart";

void main() {
  runApp(Music());
}

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "lets Play",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildakey(int no,dynamic s)
  {
    return Expanded(
      child: RaisedButton(
        elevation: 2.5,
        hoverColor: Colors.black54,
        highlightColor: Colors.orange,



        onPressed: () {
          final player = AudioCache();
          player.play("note$no.wav");
        },
        color: s,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildakey(1,Colors.red),
            buildakey(2,Colors.greenAccent),
            buildakey(3,Colors.teal),
            buildakey(4,Colors.blueAccent),
            buildakey(5,Colors.black45),
            buildakey(6,Colors.pink),
            buildakey(7,Colors.deepPurpleAccent),


          ],
        ),
      ),
    );
  }
}
