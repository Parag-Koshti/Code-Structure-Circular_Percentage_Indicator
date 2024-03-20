import 'package:flutter/material.dart';
import 'package:igenerate_10/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Lesson extends StatefulWidget {
  const Lesson({super.key});

  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  final _controller = PageController();
  int acitveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                const Image(image: AssetImage("assets/back2.jpg")),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ));
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded),
                          color: Colors.white,
                        ),
                        Text("Lessons",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Translate these \nphrases to english",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: ListView.builder(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              height: 300,
                              width: 320,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      //  crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.format_quote,
                                          size: 35,
                                        ),
                                        Icon(
                                          Icons.message,
                                          color: Colors.blue,
                                          size: 35,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          " Wie geht es  dir? nwbdkdb nasjkd kjnsclnl bc ",
                                          // softWrap: true,

                                          //maxLines: 3,
                                          style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.format_quote,
                                          size: 35,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 5,
                        effect: JumpingDotEffect(
                          jumpScale: 3,
                          spacing: 20,
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(blurRadius: 2, color: Colors.grey.shade50)
                    ]),
                child: TextField(
                  minLines: 5,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    hintText: "  Your answer..",
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.done,
                    size: 35,
                    color: Colors.blue,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
