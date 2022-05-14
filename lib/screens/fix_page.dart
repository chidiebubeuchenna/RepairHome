import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repair_home_twentyfour/screens/cart_page.dart';

class FixPage extends StatelessWidget {
  const FixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                    ),
                    color: Colors.pink.shade100,
                    height: 80,
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                      onPressed: () {
                        Navigator.of(context).pop();
                       },),
                        SizedBox(
                          width: 90,
                        ),
                        Text('Fix Microwave',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 50,
                right: 30,
                left: 30,
              ),
                color: Colors.pink.shade100,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/microwave.png', width: 10,),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      )
                    ),

                    height: 110,
                  )
                ],
              ),
            ),
            
            SizedBox(
              height: 20,
            ),
            
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                          right: 75,
                          left: 75,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(10),
                          color: Colors.pink.shade100,
                          ),

                      child: Text('Reviews',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black54
                      ),
                      ),
                      ),
                        ],
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.only(
                            top: 12,
                            bottom: 12,
                            right: 30,
                            left: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:  BorderRadius.circular(10),
                            color: Colors.black87,
                          ),

                          child: Icon(
                            Icons.chat_outlined,
                            color: Colors.white,
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),



            Container(
              padding: EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPage()));
                },
                // child: Ink(height: 100, width: 100, color: Colors.blue),
                child: Ink(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Repair',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                      
                      Text("\$52",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(
                bottom: 20,
                left: 20,
                right: 20,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Setup',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text("\$12",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ),
              ),
            ),

            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          right: 40,
                          left: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(10),
                          color: Colors.black87,
                        ),

                        child: Text('Order Repair',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          right: 40,
                          left: 40,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(10),
                          color: Colors.white,
                        ),

                        child: Text('Order Setup',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black87
                          ),
                        ),
                      ),
                    ],
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
