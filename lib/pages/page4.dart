import 'package:carousel_slider/carousel_slider.dart';
import 'package:college_search/pages/page3.dart';
import 'package:college_search/pages/page5.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int roomShering = 4;
  int _current = 0;
  List imageUrl = _imageURL4;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * .06, vertical: size.height * .01),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                primary: const Color(0xff0E3C6E)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Page5()));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * .02),
              child: const Text("Apply Now"),
            ),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * .08),
          child: AppBar(
            backgroundColor: const Color(0xff0E3C6E),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: size.width * .05),
                child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.bookmark_border)),
              ),
            ],
            leading: Padding(
              padding: EdgeInsets.only(left: size.width * .04),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Page3()));
                },
                child: const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * .240,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/college4.png"),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: size.height * .180,
                width: size.width * 1,
                // decoration: const BoxDecoration(color: Colors.red),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * .02, left: size.width * .05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "GHJK Engineering collage",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: size.height * .02),
                          SizedBox(
                            height: size.height * .10,
                            width: size.width * .7,
                            // color: Colors.yellow,
                            child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * .8, top: size.height * .04),
                      child: Container(
                        height: size.height * .09,
                        width: size.width * .140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "4.3",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              // const Divider(
              //   height: 4,
              // ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 205, 204, 204),
                          blurRadius: 4.0,
                          offset: Offset(0, 5)),
                      BoxShadow(
                          color: Colors.white,
                          // blurRadius: 5.0,
                          offset: Offset(-5, 0)),
                      BoxShadow(
                          color: Colors.white,
                          // blurRadius: 5.0,
                          offset: Offset(5, 0))
                    ],
                    border: Border.all(
                        color: const Color.fromARGB(255, 226, 223, 223))),
                child: TabBar(
                  onTap: (value) {
                    [
                      if (value == 0)
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Page5(),
                              )),
                        }
                      else if (value == 1)
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Page5(),
                              )),
                        }
                    ];
                  },
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      text: "About collage",
                    ),
                    Tab(
                      text: "Hostel facility",
                    ),
                    Tab(
                      text: "Q & A",
                    ),
                    Tab(
                      text: "Event",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.95,
                child: TabBarView(children: [
                  SizedBox(
                    width: size.width * 1,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * .06),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * .0250,
                          ),
                          const Text(
                            "Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          SizedBox(
                            height: size.height * .2,
                            width: size.width * 8,
                            // color: Colors.yellow,
                            child: const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          const Text(
                            "Location",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          Container(
                              height: size.height * .220,
                              width: size.width * 8,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage("assets/Map1.png")),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          const Text(
                            "Student Review",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          SizedBox(
                            height: size.height * .0890,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: const [
                                StudentList(imageData: "assets/dp1.jpg"),
                                StudentList(imageData: "assets/dp2.jpg"),
                                StudentList(imageData: "assets/dp3.jpg"),
                                StudentList(imageData: "assets/dp4.jpg"),
                                StudentList(imageData: "assets/dp5.jpg")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: size.width * .01),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Arune sal",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Row(
                                        children: const [
                                          Rating(bgcolor: Colors.yellow),
                                          Rating(bgcolor: Colors.yellow),
                                          Rating(bgcolor: Colors.yellow),
                                          Rating(bgcolor: Colors.yellow),
                                          Rating(bgcolor: Colors.grey),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //hostel facility///////////////////////////
                  Padding(
                    padding: EdgeInsets.only(left: size.width * .05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * .0250,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // SizedBox(
                            //   width: size.width * .01,
                            // ),
                            Sharing(
                              ontap: () {
                                setState(() {
                                  debugPrint("page4");
                                  // imageUrl.clear();
                                  debugPrint("$imageUrl");
                                  imageUrl = _imageURL4;
                                  debugPrint("$imageUrl");
                                  roomShering = 4;
                                });
                              },
                              bgcolor: roomShering == 4
                                  ? const Color(0xff0E3C6E)
                                  : Colors.white,
                              textcolor: roomShering == 4
                                  ? Colors.white
                                  : Colors.black,
                              text: "4",
                            ),
                            Sharing(
                                ontap: () {
                                  setState(() {
                                    debugPrint("page3");
                                    // imageUrl.clear();
                                    imageUrl = _imageURL3;
                                    roomShering = 3;
                                  });
                                },
                                bgcolor: roomShering == 3
                                    ? const Color(0xff0E3C6E)
                                    : Colors.white,
                                textcolor: roomShering == 3
                                    ? Colors.white
                                    : Colors.black,
                                text: "3"),
                            Sharing(
                                ontap: () {
                                  setState(() {
                                    debugPrint("page2");
                                    // imageUrl.clear();
                                    imageUrl = _imageURL2;
                                    roomShering = 2;
                                  });
                                },
                                bgcolor: roomShering == 2
                                    ? const Color(0xff0E3C6E)
                                    : Colors.white,
                                textcolor: roomShering == 2
                                    ? Colors.white
                                    : Colors.black,
                                text: "2"),
                            Sharing(
                                ontap: () {
                                  setState(() {
                                    debugPrint("page1");
                                    // imageUrl.clear();
                                    imageUrl = _imageURL1;
                                    roomShering = 1;
                                  });
                                },
                                bgcolor: roomShering == 1
                                    ? const Color(0xff0E3C6E)
                                    : Colors.white,
                                textcolor: roomShering == 1
                                    ? Colors.white
                                    : Colors.black,
                                text: "1"),
                            SizedBox(
                              width: size.width * .01,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        CarouselSlider(
                          carouselController: _controller,
                          items: imageUrl.map((imagepath) {
                            return Builder(builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          imagepath,
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                  height: size.height * 0.001,
                                  // width: size.width * 0.,
                                  // margin:
                                  //     const EdgeInsets.symmetric(horizontal: 1),
                                  child: GestureDetector(),
                                ),
                              );
                            });
                          }).toList(),
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                            height: size.height * 0.2,
                            aspectRatio: 4 / 2,
                            autoPlay: true,
                            enlargeCenterPage: false,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _imageURL1.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                width: size.width * 0.02,
                                height: size.height * 0.01,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors.white
                                            : const Color(0xff0E3C6E))
                                        .withOpacity(
                                            _current == entry.key ? 0.9 : 0.4)),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Row(
                          children: [
                            const Text(
                              "GHJK Engineering Hostel",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: size.width * .260,
                            ),
                            Container(
                              height: size.height * .03,
                              width: size.width * .130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text(
                                      "4.3",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 14),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Row(
                          children: const [
                            Image(image: AssetImage("assets/location.png")),
                            Text("  Lorem ipsum dolor sit amet, consectetur ",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 14))
                          ],
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                        SizedBox(
                          height: size.height * .2,
                          width: size.width * .840,
                          // color: Colors.yellow,
                          child: const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        const Text(
                          "Facilities",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height * .0150,
                        ),
                        Row(
                          children: [
                            const Image(
                                image: AssetImage("assets/university.png")),
                            SizedBox(
                              width: size.width * .01,
                            ),
                            const Text(" Collage in 400mtrs")
                          ],
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Row(
                          children: [
                            const Image(image: AssetImage("assets/bath.png")),
                            // const Icon(Icons.bathroom_outlined),
                            SizedBox(
                              width: size.width * .01,
                            ),
                            const Text(" Bathrooms : 2")
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text(
                        "Q & A Page",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text(
                        "Event Page",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Rating extends StatelessWidget {
  const Rating({Key? key, required this.bgcolor}) : super(key: key);
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: bgcolor);
  }
}

class Sharing extends StatelessWidget {
  const Sharing(
      {Key? key,
      required this.bgcolor,
      required this.textcolor,
      required this.text,
      required this.ontap})
      : super(key: key);
  final Color bgcolor;
  final Color textcolor;
  final String text;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: size.height * .04,
          width: size.width * .150,
          decoration: BoxDecoration(
              color: bgcolor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xff0E3C6E))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.bed,
                color: textcolor,
              ),
              Text(
                text,
                style: TextStyle(color: textcolor),
              )
            ],
          )),
    );
  }
}

class StudentList extends StatelessWidget {
  const StudentList({Key? key, required this.imageData}) : super(key: key);
  final String imageData;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: size.height * .0750,
          width: size.width * .160,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 205, 204, 204),
                  blurRadius: 4.0,
                  offset: Offset(0, 5)),
            ],
            image: DecorationImage(
                image: AssetImage(imageData), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}

final List _imageURL1 = [
  'assets/Hostel3.jpg',
  'assets/Hostel.png',
  // 'assets/Hostel1.png',
  'assets/Hostel2.jpg',
  'assets/Hostel4.avif',
];

final List _imageURL2 = [
  'assets/Hostel.png',
  'assets/Hostel3.jpg',
  // 'assets/Hostel1.png',
  'assets/Hostel2.jpg',
  'assets/Hostel4.avif',
];

final List _imageURL3 = [
  'assets/Hostel2.jpg',
  'assets/Hostel.png',
  // 'assets/Hostel1.png',
  'assets/Hostel2.jpg',
  'assets/Hostel4.avif',
];

final List _imageURL4 = [
  'assets/Hostel4.avif',
  'assets/Hostel.png',
  // 'assets/Hostel1.png',
  'assets/Hostel2.jpg',
  'assets/Hostel4.avif',
];
List<BoxShadow> shadowList = [
  const BoxShadow(color: Colors.grey, blurRadius: 30, offset: Offset(0, 10))
];
//  Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: _imageURL.asMap().entries.map((entry) {
//                             return GestureDetector(
//                               onTap: () => _controller.animateToPage(entry.key),
//                               child: Sharing(
//                                   bgcolor: (Theme.of(context).brightness ==
//                                               Brightness.dark
//                                           ? Colors.white
//                                           : const Color(0xff0E3C6E))
//                                       .withOpacity(
//                                           _current == entry.key ? 0.9 : 0.4),
//                                   textcolor: Colors.white,
//                                   text: "$_current"),
//                             );
//                             // SizedBox(
//                             //   width: size.width * .01,
//                             // ),
//                           }).toList(),