import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: const EdgeInsets.only(
          top: 30,
          right: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Texts(
                    name: "Cart",
                    isbold: true,
                    size: 25,
                    color: Colors.grey.shade800,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.maxFinite,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(children: [
                FixWidget(
                  mainText: "Fix Microwave",
                  subText: "Kitchen",
                  icon: Icons.microwave,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  width: double.maxFinite,
                  height: 70,
                  child: Row(
                    children: [
                      Icon(Icons.remove_circle_sharp,
                      color: Colors.red),
                      SizedBox(
                        width: 20,
                      ),
                      Texts(
                        name: "Set up Microwave",
                        isbold: true,
                        size: 16,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 160,
                        ),
                      ),
                      Texts(
                        name: "\$22",
                        isbold: true,
                        size: 15,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.1),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove_circle_sharp,
                  color: Colors.red),
                  SizedBox(
                    width: 20,
                  ),
                  Texts(
                    name: "Repair Microwave",
                    isbold: true,
                    size: 16,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 160,
                    ),
                  ),
                  Texts(
                    name: "\$80",
                    isbold: true,
                    size: 15,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FixWidget(
              mainText: "Fix Fridge",
              subText: "2 Service",
              icon: Icons.ballot,
              price: '\$70',
            ),
            SizedBox(
              height: 20,
            ),
            FixWidget(
              mainText: "Fix Washer",
              subText: "1 Service",
              icon: Icons.tv,
              price: '\$135',
            ),
            SizedBox(
              height: 20,
            ),
            FixWidget(
              mainText: "Fix Computer",
              subText: "1 Service",
              icon: Icons.tablet_android,
              price: '\$30',
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                bottom: 5,
                left: 20,
                right: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      child: Text('Total Price',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black54
                        ),
                      ),
                    ),


                  Text("\$302",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),)
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
              ),
              child: Text("Make an order",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FixWidget extends StatelessWidget {
  String mainText;
  String subText;
  IconData icon;
  String price;

  FixWidget({
    Key? key,
    required this.mainText,
    required this.subText,
    required this.icon,
    this.price = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue.shade100,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(2, 2),
              color: Colors.grey,
            )
          ]),
      child: Row(
        children: [
          Icon(icon, size: 35),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts(
                name: mainText,
                isbold: true,
                size: 14,
              ),
              Texts(
                name: subText,
                isbold: true,
                size: 14,
                color: Colors.grey,
              )
            ],
          ),
          Expanded(
            child: SizedBox(
              width: 160,
            ),
          ),
          Texts(
            name: price,
            isbold: true,
            size: 14,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.arrow_forward_ios_rounded),
        ],
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
