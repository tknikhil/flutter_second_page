import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);


  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());
    return Scaffold(
      backgroundColor: const Color(0xfffd4af37),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add New'),
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  //greeting bar

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi Nikhil

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            "Hi Nikhil !",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            cdate,
                            style: TextStyle(
                                color: Color(0xffffbf1de),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),

                      //Notification

                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xfffb08f26),
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(12),
                          child: const Icon(
                            Icons.menu,
                            color: Colors.brown,
                          ))
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  //  Search Bar

                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffffbf1de),
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //  How do you feel

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: const [
                  //     Text(
                  //       "How can we help you ?",
                  //       style: TextStyle(
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold,
                  //           color: Color(0xffffbf1de)),
                  //     ),
                  //     Icon(
                  //       Icons.more_horiz,
                  //       color: Color(0xffffbf1de),
                  //     )
                  //   ],
                  // ),
                  //
                  // SizedBox(
                  //   height: 15,
                  // ),
                  //
                  // Row(
                  //   children: [
                  //     Container(
                  //       decoration: BoxDecoration(
                  //           color: Color(0xfffb08f26),
                  //           borderRadius: BorderRadius.circular(15),
                  //       boxShadow: const[
                  //         BoxShadow(color: Colors.brown, blurRadius: 5.0,
                  //           spreadRadius: 2.0,offset:  Offset(
                  //             5.0,
                  //             5.0,
                  //           ),),
                  //
                  //       ]),
                  //
                  //       padding: EdgeInsets.all(10),
                  //
                  //       // child: const Icon(
                  //
                  //       //   Icons.add,
                  //
                  //       //   color: Colors.brown,
                  //
                  //       // ))
                  //
                  //       child: Text(
                  //         "Add new  +",
                  //         style: TextStyle(fontSize: 20, color: Colors.brown),
                  //       ),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight:Radius.circular(50)),
                child: Container(
                  color:Color(0xffff0ead6),
                  child: Center(
                    child: Column(
                      children:  [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Order List',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.brown),),
                              Icon(Icons.more_horiz,size: 25,color: Colors.brown,)
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                           //  decoration: BoxDecoration(
                           //    color: Colors.white,
                           //    borderRadius: BorderRadius.circular(20),
                           //    boxShadow:const[
                           //      BoxShadow(color: Colors.grey, blurRadius: 10.0,
                           //        spreadRadius: 2.0,offset:  Offset(
                           //          5.0,
                           //          5.0,
                           //        ),),
                           //
                           //    ]
                           //  ),
                           //  child: ListTile(
                           //      leading: Icon(Icons.heart_broken),
                           //
                           // ),

                            child: Card(

                              child: SizedBox(
                                height:MediaQuery.of(context).size.height*.2,
                                child: Container(

                                  decoration: BoxDecoration(

                                  ),
                                  child: Row(

                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Container(
                                        padding: EdgeInsets.all(20),
                                        alignment: Alignment.topLeft,
                                        child: Text("hi"),
                                      ),
                                      Container(
                                        child: Text('Nikhil'),
                                      )
                                    ],
                                  ),

                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
