import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool id1 = false;
  bool id2 = false;
  bool id3 = false;
  bool id4 = false;
  bool id5 = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Draggable(
                    data: "a1",
                    feedback: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/Assets/1.png"),
                        ),
                      ),
                    ),
                    child: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id1 == true)
                              ? AssetImage("lib/Assets/download.png")
                              : AssetImage("lib/Assets/1.png"),
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                  ),
                  DragTarget(
                    onAccept: (data) {
                      setState(() {
                        id3 = true;
                      });
                    },
                    onWillAccept: (data) {
                      return data == "a3";
                    },
                    builder: (context, candidateData, rejectedData) =>
                        Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id3 == true)
                              ? AssetImage("lib/Assets/3.png")
                              : AssetImage("lib/Assets/layer 3.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DragTarget(
                    onAccept: (data) {
                      setState(() {
                        id4 = true;
                      });
                    },
                    onWillAccept: (data) {
                      return data == "a4";
                    },
                    builder: (context, candidateData, rejectedData) =>
                        Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id4 == true)
                              ? AssetImage("lib/Assets/4.png")
                              : AssetImage("lib/Assets/Layer 4.png"),
                        ),
                      ),
                    ),
                  ),
                  Draggable(
                    data: "a2",
                    feedback: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/Assets/2.png"),
                        ),
                      ),
                    ),
                    child: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id2 == true)
                              ? AssetImage("lib/Assets/download.png")
                              : AssetImage("lib/Assets/2.png"),
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Draggable(
                    data: "a5",
                    feedback: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/Assets/5.png"),
                        ),
                      ),
                    ),
                    child: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id5 == true)
                              ? AssetImage("lib/Assets/download.png")
                              : AssetImage("lib/Assets/5.png"),
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                  ),
                  DragTarget(
                    onAccept: (data) {
                      setState(() {
                        id1 = true;
                      });
                    },
                    onWillAccept: (data) {
                      return data == "a1";
                    },
                    builder: (context, candidateData, rejectedData) =>
                        Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id1 == true)
                              ? AssetImage("lib/Assets/1.png")
                              : AssetImage("lib/Assets/Layer 1.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DragTarget(
                    onAccept: (data) {
                      setState(() {
                        id2 = true;
                      });
                    },
                    onWillAccept: (data) {
                      return data == "a2";
                    },
                    builder: (context, candidateData, rejectedData) =>
                        Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id2 == true)
                              ? AssetImage("lib/Assets/2.png")
                              : AssetImage("lib/Assets/Layer 2.png"),
                        ),
                      ),
                    ),
                  ),
                  Draggable(
                    data: "a3",
                    feedback: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/Assets/3.png"),
                        ),
                      ),
                    ),
                    child: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id3 == true)
                              ? AssetImage("lib/Assets/download.png")
                              : AssetImage("lib/Assets/3.png"),
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Draggable(
                    data: "a4",
                    feedback: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/Assets/4.png"),
                        ),
                      ),
                    ),
                    child: Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id4 == true)
                              ? AssetImage("lib/Assets/download.png")
                              : AssetImage("lib/Assets/4.png"),
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                  ),
                  DragTarget(
                    onAccept: (data) {
                      setState(() {
                        id5 = true;
                      });
                    },
                    onWillAccept: (data) {
                      return data == "a5";
                    },
                    builder: (context, candidateData, rejectedData) =>
                        Container(
                      height: h * .15,
                      width: w * .45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (id5 == true)
                              ? AssetImage("lib/Assets/5.png")
                              : AssetImage("lib/Assets/Layer 5.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
