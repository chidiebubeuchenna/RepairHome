import 'package:flutter/material.dart';
import 'package:repair_home_twentyfour/screens/cart_page.dart';
import 'package:repair_home_twentyfour/screens/fix_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List dates = [
      'valid until june 29th',
      'valid until june 30th',
      'valid until june 28th',
    ];
    List deals = [
      'Get back 5% for each order',
      'Sale on appliances repair!',
      'Promo! promo! promo!',
    ];
    List images = [
      'assets/wow.png',
      'assets/dishwasher.png',
      'assets/Happy-Person.png',
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            //First half
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => CartPage()));
                        },),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Texts(
                    name: "What's broken?",
                    isbold: true,
                    size: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextPlace(
                    text: "Search appliances",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Texts(
                    name: "Offers",
                    isbold: true,
                    size: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 220,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                            ),
                            child: Texts(
                              name: dates[index],
                              isbold: false,
                              size: 20,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    width: 100,
                                    child: Texts(
                                      name: deals[index],
                                      isbold: true,
                                    ),
                                  ),
                                  Expanded(
                                    // child: Image.asset('assets/wow.png'),
                                    child: Image(
                                      image: AssetImage(
                                        images[index],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Texts(
                    name: "We can fix it",
                    isbold: true,
                    size: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 100,
                        child: Texts(
                          name: 'Offers',
                          isbold: true,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                      ),
                      Texts(
                        name: 'Kitchen',
                        isbold: true,
                        color: Colors.grey,
                        size: 15,
                      ),
                      Texts(
                        name: 'Livingroom',
                        isbold: true,
                        color: Colors.grey,
                        size: 15,
                      ),
                      Texts(
                        name: 'Bathroom',
                        isbold: true,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(.1),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.microwave_rounded, size: 35),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Texts(
                              name: "Fix Microwave",
                              isbold: true,
                              size: 14,
                            ),
                            Texts(
                              name: "Kitchen",
                              isbold: true,
                              size: 14,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Container(
                          // width: MediaQuery.of(context).size.width,
                          // alignment: Alignment.bottomRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[ IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded),
                              onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => FixPage()));
                              },),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(.1),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.live_tv, size: 35),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Texts(
                              name: "Fix Tv set",
                              isbold: true,
                              size: 14,
                            ),
                            Texts(
                              name: "Living room",
                              isbold: true,
                              size: 14,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 157,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  String name;
  bool isbold;
  double size;
  Color color;
  Texts({
    Key? key,
    required this.name,
    required this.isbold,
    this.size = 17,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: isbold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

class TextPlace extends StatelessWidget {
  String text;
  TextPlace({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: null,
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.content_paste_search_sharp,
              size: 30,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                )),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: text,
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
