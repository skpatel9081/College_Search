import 'package:college_search/model/searchdata_model.dart';
import 'package:college_search/pages/page3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum Studyfield { technology, architecture, pharmacy, law, management }

class _HomePageState extends State<HomePage> {
  static List<String> searchTitle = ['Top College', 'Top Schools', 'Exams'];
  static List url = [
    'assets/College.png',
    'assets/School.png',
    'assets/Exams.png'
  ];
  static List<String> detail = [
    'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
    'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
    'Find an end to end information about the exams that are happening in India'
  ];

  final List<SearchDataModel> SearchData = List.generate(
      searchTitle.length,
      (index) => SearchDataModel(
          searchTitle[index], '${url[index]}', ' ${detail[index]}'));

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Studyfield? _character = Studyfield.technology;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * .280), // Set this height
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
                  Row(
                    children: [
                      const Text(
                        "Find your own way",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      SizedBox(width: size.width * .4),
                      Container(
                        child: Stack(children: [
                          const Icon(
                            Icons.notifications_sharp,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * .034,
                                top: size.height * .001),
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 3,
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  const Text(
                    "Search in 600 collage around!",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: size.height * .05,
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.bookmark_added),
              label: 'Saves',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.energy_savings_leaf_outlined),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
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
        body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: SearchData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              // color: Colors.yellow,
                              width: size.width * 1,
                              height: size.height * .44,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * .06),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          "Sort by",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          width: size.width * .5,
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(Icons.close_sharp))
                                      ],
                                    ),
                                    const Divider(
                                      color: Colors.black54,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.school),
                                            SizedBox(
                                              width: size.width * .02,
                                            ),
                                            const Text(
                                                "Bachelor of Technology"),
                                          ],
                                        ),
                                        SizedBox(
                                          width: size.width * .2,
                                        ),
                                        Radio(
                                          value: Studyfield.technology,
                                          groupValue: _character,
                                          onChanged: (Studyfield? value) {
                                            setState(() {
                                              _character = value;
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Page3()));
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                                Icons.architecture_outlined),
                                            SizedBox(
                                              width: size.width * .02,
                                            ),
                                            const Text(
                                                "Bachelor of Architecture"),
                                          ],
                                        ),
                                        SizedBox(
                                          width: size.width * .2,
                                        ),
                                        Radio(
                                          value: Studyfield.architecture,
                                          groupValue: _character,
                                          onChanged: (Studyfield? value) {
                                            setState(() {
                                              _character = value;
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Page3()));
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.local_pharmacy),
                                            SizedBox(
                                              width: size.width * .02,
                                            ),
                                            const Text("Pharmacy"),
                                          ],
                                        ),
                                        SizedBox(
                                          width: size.width * .420,
                                        ),
                                        Radio(
                                          value: Studyfield.pharmacy,
                                          groupValue: _character,
                                          onChanged: (Studyfield? value) {
                                            setState(() {
                                              _character = value;
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Page3()));
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.balance),
                                            SizedBox(
                                              width: size.width * .02,
                                            ),
                                            const Text("Law"),
                                          ],
                                        ),
                                        SizedBox(
                                          width: size.width * .520,
                                        ),
                                        Radio(
                                          value: Studyfield.law,
                                          groupValue: _character,
                                          onChanged: (Studyfield? value) {
                                            setState(() {
                                              _character = value;
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Page3()));
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.manage_accounts),
                                            SizedBox(
                                              width: size.width * .02,
                                            ),
                                            const Text("Management"),
                                          ],
                                        ),
                                        SizedBox(
                                          width: size.width * .370,
                                        ),
                                        Radio(
                                          value: Studyfield.management,
                                          groupValue: _character,
                                          onChanged: (Studyfield? value) {
                                            setState(() {
                                              _character = value;
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Page3()));
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: size.width * 0.85,
                      height: size.height * 0.20,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(SearchData[index].imageUrl),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.05, top: size.height * 0.015),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              SearchData[index].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            SizedBox(
                              height: size.height * 0.1,
                              width: size.width * 0.6,
                              // color: Colors.red,
                              child: Text(
                                SearchData[index].details,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.017,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: size.width * 0.69),
                              child: const Text(
                                "+106 Schools",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
