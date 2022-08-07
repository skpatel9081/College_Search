import 'package:college_search/model/collegedata_model.dart';
import 'package:college_search/pages/home_page.dart';
import 'package:college_search/pages/page4.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  static List<String> collegeTitle = [
    'GHJK Engineering college',
    'Bachelor of Technology',
    'Bachelor of Computer'
  ];
  static List url = [
    'assets/college1.png',
    'assets/college2.png',
    'assets/college3.png'
  ];
  static List<String> detail = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.'
  ];
  static List<String> detail1 = [
    'More than 1000+ students have been placed',
    'Lorem ipsum dolor sit amet, consectetur adipiscing',
    'More than 1000+ students have been placed'
  ];

  final List<CollegeDataModel> CollegeData = List.generate(
      collegeTitle.length,
      (index) => CollegeDataModel(collegeTitle[index], '${url[index]}',
          ' ${detail[index]}', ' ${detail1[index]}'));

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 235, 235),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * .130), // Set this height
          child: Container(
            height: size.height * .230,
            decoration: const BoxDecoration(
              color: Color(0xff0E3C6E),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * .035, left: size.width * .09),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Row(
                    children: [
                      Container(
                        height: size.height * .06,
                        width: size.width * .650,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.03),
                              child: const Icon(Icons.search),
                            ),
                            SizedBox(
                              height: size.height * .06,
                              width: size.width * .54,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText:
                                        "Search for colleges, schools.....",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * .05,
                      ),
                      Container(
                        height: size.height * .06,
                        width: size.width * .140,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(
                          Icons.mic,
                          color: Color(0xff0E3C6E),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: const Color(0xff0E3C6E),
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Icon(Icons.home)),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.bookmark_added),
              label: 'Saves',
            ),
            const BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.energy_savings_leaf_outlined),
              label: 'Saved',
            ),
            const BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: const Color(0xffBBBBBB),
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          onTap: _onItemTapped,
        ),
        body: Stack(
          children: [
            SizedBox(
              height: size.height * 0.07,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CollegeList(collegeName: "MVSH Engineering college"),
                  CollegeList(collegeName: "MVSH Engineering college"),
                  CollegeList(collegeName: "MVSH Engineering college"),
                  CollegeList(collegeName: "MVSH Engineering college"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.06),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      // physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: CollegeData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page4()));
                            },
                            child: Container(
                              height: size.height * .4,
                              width: size.width * .9,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: size.height * .150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.vertical(
                                                    top: Radius.circular(20)),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  CollegeData[index].imageUrl),
                                            )),
                                        // child: Image(
                                        //   image:
                                        //       AssetImage(CollegeData[index].imageUrl),
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ),
                                      SizedBox(height: size.height * .0120),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: size.width * .05),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  child: Text(
                                                      CollegeData[index].title,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 17)),
                                                ),
                                                SizedBox(
                                                  width: size.width * .02,
                                                ),
                                                Container(
                                                  height: size.height * .03,
                                                  width: size.width * .140,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.green,
                                                  ),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: const [
                                                        Text(
                                                          "4.3",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 15),
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          size: 18,
                                                          color: Colors.white,
                                                        )
                                                      ]),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: size.height * .015,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SizedBox(
                                                    // color: Colors.blue,
                                                    height: size.height * 0.08,
                                                    width: size.width * 0.5,
                                                    child: Text(
                                                      CollegeData[index]
                                                          .details,
                                                      textAlign:
                                                          TextAlign.start,
                                                    )),
                                                Container(
                                                  height: size.height * .03,
                                                  width: size.width * .25,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color:
                                                        const Color(0xff0E3C6E),
                                                  ),
                                                  child: const Center(
                                                      child: Text("Apply Now",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15))),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: size.height * .02),
                                            Divider(
                                              height: size.height * .01,
                                            ),
                                            SizedBox(height: size.height * .01),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  height: size.height * .06,
                                                  width: size.width * .09,
                                                  decoration: const BoxDecoration(
                                                      // borderRadius: BorderRadius.circular(10),

                                                      ),
                                                  child: const Image(
                                                      image: AssetImage(
                                                          "assets/like.png")),
                                                ),
                                                Container(
                                                  width: size.width * .5,
                                                  color: Colors.white,
                                                  child: Text(CollegeData[index]
                                                      .details1),
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(Icons
                                                        .remove_red_eye_outlined),
                                                    SizedBox(
                                                      width: size.width * .01,
                                                    ),
                                                    const Text("468+")
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: size.height * .0120),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Colors.white,
                                          child: Icon(Icons.share),
                                        ),
                                        SizedBox(
                                          width: size.width * .4,
                                        ),
                                        const CircleAvatar(
                                            radius: 18,
                                            backgroundColor: Colors.white,
                                            child: Icon(Icons.bookmark_border))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ));
  }
}

class CollegeList extends StatelessWidget {
  const CollegeList({Key? key, required this.collegeName}) : super(key: key);
  final String collegeName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.03,
        width: size.width * 0.5,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
        child: Center(child: Text(collegeName)),
      ),
    );
  }
}
