import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myap/button_page.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0XFFF2F2F7),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 5,right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                      const SizedBox(
                        width: 285,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: GestureDetector(

                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ButtonPage()));

                          },

                          child: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ],
                  )

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 5),
                child: Container(
                  child: Container(
                    height: 65,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color(0XFFDFDFDF),
                      borderRadius: BorderRadius.circular(40),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top:28 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  const [
                          Text("My Wallet",style: TextStyle(
                              color: Color(0XFF000000),fontSize: 18,fontWeight:FontWeight.bold,

                          ),
                          ),




                        ],


                      ),


                    ),



                  ),

                ),


              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 180,
                  width: 360,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0XFFD6E4F8),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Available Balance",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SvgPicture.asset('assets/icons/view.svg'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "\₦ 123.99",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Primary Wallet"),
                            Text(
                              "+ Add Money",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF0081FF)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 240,left: 20,right: 20),
                child: Container(
                  height: 68,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color(0XFF0081FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.only(left: 28, top: 25,),
                    child: Column(

                      children: const [
                        Text("Add New Wallet",style: TextStyle(
                          color: Color(0XFFFFFFFF),fontSize: 18,fontWeight:FontWeight.normal

                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),


      ),

    );
  }
}
