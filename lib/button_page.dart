import 'package:flutter/material.dart';
class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF2F2F7),
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap:(){
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back,),

            ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Container(
          height: 65,
          width: 350,
          decoration: BoxDecoration(
            color: const Color(0XFFDFDFDF),
            borderRadius: BorderRadius.circular(40),
          ),

          child: const Padding(
            padding: EdgeInsets.only(left: 10, top:28 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Text("Linked Accounts",style: TextStyle(
                    color: Color(0XFF000000),fontSize: 18,fontWeight:FontWeight.bold,

                ),
                ),


              ],


            ),


          ),
        ),


      ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,



                          children: [
                           Padding(
                             padding: EdgeInsets.all(5.0),
                             child: Row(

                                  children:    [

                                    Text("AA",style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold,color: Color(0XFF0081FF),
                                    ),),

                                  ],
                                ),
                           ),

                          ],
                        ),

                      ],
                    ),

                  ),
              const SizedBox(width: 10,),

              const Padding(
                padding: EdgeInsets.only(right: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,


                  children: [
                    Row(


                      children: [
                        Text("Abaranyi Tom"),
                        SizedBox(height: 20,),

                      ],
                    ),
                    Column(
                      children: [
                        Text("2223334444")
                      ],
                    )
                  ],
                ),
              ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Icon(Icons.delete)
                    ],
                  )
          ],
        ),
        
      ),
        Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,



                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Row(

                              children:    [

                                Text("AA",style: TextStyle(
                                  fontSize: 15,fontWeight: FontWeight.bold,color: Color(0XFF0081FF),
                                ),),

                              ],
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),

                ),
                const SizedBox(width: 10,),

                const Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,


                        children: [
                          Text("Abran Tom",),
                          SizedBox(height: 20,),

                        ],
                      ),
                      Column(
                        children: [
                          Text("2223334444")
                        ],
                      )
                    ],
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Icon(Icons.delete)
                  ],
                )
              ],
            ),



        )

            ]
            )
    )
    );

  }
}
