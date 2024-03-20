import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:igenerate_10/courses.dart';
import 'package:igenerate_10/lesson.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flag/flag.dart';
//import 'NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dropdownvalue = "English";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Scaffold(
          body: SliderDrawer(
        appBar: SliderAppBar(
            title: const Text(""),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: DropdownButton<String>(
                value: dropdownvalue,
                items: [
                  DropdownMenuItem(
                    value: "English",
                    child: Row(
                      children: [
                        Flag.fromCode(
                          FlagsCode.AU,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("English"),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: "Gujarati",
                    child: Row(
                      children: [
                        Flag.fromCode(
                          FlagsCode.IN,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Gujarati"),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: "Hindi",
                    child: Row(
                      children: [
                        Flag.fromCode(
                          FlagsCode.NP,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Hindi"),
                      ],
                    ),
                  )
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            )),
        slider: Container(
          color: Colors.lightGreen,
          child: SafeArea(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    size: 25,
                  ),
                  title: const Text(
                    "HomePage",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(),
                        ));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.book,
                    size: 25,
                  ),
                  title: const Text(
                    "Courses",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const courses(),
                        ));
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.work,
                    size: 25,
                  ),
                  title: const Text(
                    "Lessons",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Lesson(),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images.jpeg'),
                      radius: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tony Stark",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.add_location_outlined,
                              size: 15,
                            ),
                            Text(
                              "United Kingdom",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 40),
                    child: Text(
                      "Welcome back!",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Stack(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        height: 280,
                        width: 280,
                        child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img_12.png'),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "Professional",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 75, left: 20),
                      child: Text(
                        "Today's\n challenge",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 150, left: 25),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "German models",
                          style: TextStyle(
                              color: Colors.blue,
                              // fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200, left: 25),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.directions_rounded,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "A paragraph is \n paragraphparagraph.",
                            maxLines: 3,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your courses',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 145,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  //height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //color: Colors.orange,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Spanish',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white),
                                        ),
                                        const Text(
                                          "Begginer",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        Stack(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child:
                                                      CircularPercentIndicator(
                                                    radius: 30,
                                                    startAngle: 0.0,
                                                    backgroundColor:
                                                        Colors.white,
                                                    percent: 0.43,
                                                    lineWidth: 4,
                                                    backgroundWidth: 1,
                                                    progressColor: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 18),
                                              child: Text(
                                                "43%",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //color: Colors.orange,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Italian',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white),
                                        ),
                                        const Text(
                                          'Advanced',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        Stack(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child:
                                                      CircularPercentIndicator(
                                                    radius: 30,
                                                    startAngle: 0.0,
                                                    backgroundColor:
                                                        Colors.white,
                                                    percent: 0.16,
                                                    lineWidth: 4,
                                                    backgroundWidth: 1,
                                                    progressColor: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 18),
                                              child: Text(
                                                "16%",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  //color: Colors.orange,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'German',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white),
                                        ),
                                        const Text(
                                          'intermediate',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                        Stack(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child:
                                                      CircularPercentIndicator(
                                                    radius: 30,
                                                    startAngle: 0.0,
                                                    backgroundColor:
                                                        Colors.white,
                                                    percent: 0.75,
                                                    lineWidth: 4,
                                                    backgroundWidth: 1,
                                                    progressColor: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 80, top: 18),
                                              child: Text(
                                                "75%",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
