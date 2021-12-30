import "package:flutter/material.dart";

import "package:video_controls/video_controls.dart";

const String url = "https://firebasestorage.googleapis.com/v0/b/videoapp-1f453.appspot.com/o/files%2F2021-11-16%2010-21-27.mkv?alt=media&token=670cd878-0829-4bb0-904b-2d7d601bf2c0";

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final VideoController controller = VideoController.network(url);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("video_controls Demo")),
    body: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1400),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Text(
              "My Video",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3
            ),
            const SizedBox(height: 30),
            VideoPlayer(controller),
            Text("kdkdk")
        
          ]
        )
      )
    )
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

void main() => runApp(MaterialApp(home: HomePage()));