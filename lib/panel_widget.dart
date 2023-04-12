import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'my_button.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;
  const PanelWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(

    padding: EdgeInsets.zero,

    controller: controller,
    children: [
      const SizedBox(
        height: 5,

      ),
      buildAboutText(),
      const SizedBox(
        height: 5,
      )
    ],
  );

   buildAboutText() => Container(

    padding: const EdgeInsets.symmetric(horizontal: 24),
    child:Padding(
      padding: const EdgeInsets.only(left: 30,top: 10),
       child: Column(


         children: [
           const SizedBox(
             height: 5,
           ),
           Container(
             height: 3,
             width: 114,
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(20),
             ),
           ),
           const SizedBox(
             height: 17,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SvgPicture.asset('assets/icons/frquently.svg'),
               const SizedBox(
                 width: 17,
               ),
               const Text(
                 'Frequent Transactions',
                 style: TextStyle(color: Color(0XFF000000)),
               ),
             ],
           ),
           const SizedBox(
             height: 27,
           ),
           TextFormField(
             decoration: InputDecoration(
               filled: true,
               fillColor: Colors.white,
               isDense: true,
               prefixIcon: const Icon(
                 Icons.search_rounded,
                 size: 25,
               ),
               suffixIcon: const Icon(
                 Icons.close_rounded,
                 size: 25,
               ),
               hintText: 'Search',
               hintStyle: TextStyle(color: Color(0XFFADADAD)).copyWith(color: Colors.grey),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.grey.shade300,
                 ),
                 borderRadius: BorderRadius.circular(30),
               ),
             ),
           ),
           const SizedBox(
             height: 30,
           ),





            const SizedBox(
              height: 20,
              width: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 2,top: 10),
              child: Column(
                children: [
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,


                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  const MyButton(
                    iconImagePath: 'assets/icons/QR.svg', buttonText: '',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Row(

                      children: const [

                        Text("Firstmonie QR",style: TextStyle(
                          fontSize: 13
                        ),
                        )

                      ],
                    ),
                  )

                ],
              ),


              ]
           ),
            ),
           Divider(),
           Padding(
             padding: const EdgeInsets.only(left: 2,top: 10),
             child: Column(
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,


                     mainAxisAlignment: MainAxisAlignment.start,
                     children:  [
                       const MyButton(
                         iconImagePath: 'assets/icons/Other Bank.svg', buttonText: '',
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 20),
                         child: Row(

                           children: const [

                             Text("Betting",style: TextStyle(
                               fontSize: 13
                             ),)


                           ],
                         ),
                       )




                     ],
                   ),


                 ]
             ),
           ),
           Divider(),
           Padding(
             padding: const EdgeInsets.only(left: 2,top: 10),
             child: Column(
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,


                     mainAxisAlignment: MainAxisAlignment.start,
                     children:  [
                       const MyButton(
                         iconImagePath: 'assets/icons/frquently.svg', buttonText: '',
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 20),
                         child: Row(

                           children: const [

                             Text("Electricty",style: TextStyle(
                               fontSize: 13
                             ),)

                           ],
                         ),
                       )

                     ],
                   ),


                 ]
             ),
           ),
           const Divider(),
           Padding(
             padding: const EdgeInsets.only(left: 2,top: 10),
             child: Column(
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,


                     mainAxisAlignment: MainAxisAlignment.start,
                     children:  [
                       const MyButton(
                         iconImagePath: 'assets/icons/data.svg', buttonText: '',
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 20),
                         child: Row(

                           children: const [

                             Text("Data",style: TextStyle(
                                 fontSize: 13),

                             )
                           ],
                         ),
                       )

                     ],
                   ),


                 ]
             ),
           ),
           Divider(),
           Padding(
             padding: const EdgeInsets.only(left: 2,top: 10),
             child: Column(
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,


                     mainAxisAlignment: MainAxisAlignment.start,
                     children:  [
                       const MyButton(
                         iconImagePath: 'assets/icons/ATM.svg', buttonText: '',
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 20),
                         child: Row(

                           children: const [

                             Text("ATM")
                           ],
                         ),
                       )

                     ],
                   ),
                 ]
             ),
           ),
         ],
       ),
      ),

  );

}


