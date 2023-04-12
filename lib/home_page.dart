import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myap/my_button.dart';
import 'package:myap/panel_widget.dart';
import 'package:myap/transaction_page.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.8;
    return Scaffold(
      backgroundColor: const Color(0XFFF2F2F7),
      body: SlidingUpPanel(
        backdropEnabled: true,
        minHeight: 70,
        maxHeight: 564,
        color: const Color(0XFFF2F2F7),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        panelBuilder: (controller) => PanelWidget(
          controller: controller,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          child: CircleAvatar(
                            radius: 40,
                            child:
                                SvgPicture.asset('assets/icons/account-42.svg'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Yatin",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF0058D0)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("MY ACCOUNTS"),
                      Row(
                        children: [
                          InkWell(
                            child: Text("View All"),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      TransactionPage()));
                            },
                          )
                        ],
                      ),
                    ]),
              ),
              const SizedBox(
                height: 5,
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
                padding: const EdgeInsets.only(left: 25, top: 20, bottom: 15),
                child: Row(
                  children: const [
                    Text(
                      "Accounts",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF0058D0),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/Txn-History.svg',
                    buttonText: 'Txn History',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/statement.svg',
                    buttonText: 'Statement',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/receipt.svg',
                    buttonText: 'E-Receipt',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, bottom: 15),
                child: Row(
                  children: const [
                    Text(
                      "Transfer",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF0058D0),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/FirstBank.svg',
                    buttonText: 'First Bank',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/fbn-account.svg',
                    buttonText: 'Firstmonie',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/Other Bank.svg',
                    buttonText: 'Other Bank',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    MyButton(
                      iconImagePath: 'assets/icons/QR.svg',
                      buttonText: 'Firstmonnie QR',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, bottom: 15),
                child: Row(
                  children: const [
                    Text(
                      "Withdraw",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF0058D0),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/ATM.svg',
                    buttonText: 'ATM',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/agent.svg',
                    buttonText: 'Agent',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/ATM.svg',
                    buttonText: 'ATM',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, bottom: 15),
                child: Row(
                  children: const [
                    Text(
                      "Payments",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF0058D0),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/receipt.svg',
                    buttonText: 'Receipt',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/Airtime.svg',
                    buttonText: 'Airtime',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/data.svg',
                    buttonText: 'data',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/data.svg',
                    buttonText: 'DSTV',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/Other Bank.svg',
                    buttonText: 'Betting',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/biller.svg',
                    buttonText: 'Other Billers',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20, bottom: 15),
                child: Row(
                  children: const [
                    Text(
                      "Services",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF0058D0),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/Virtual Cards.svg',
                    buttonText: 'Virtual Cards',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/debit_instructions.svg',
                    buttonText: 'Debit Instructions',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/wallet.svg',
                    buttonText: 'Data',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    iconImagePath: 'assets/icons/invite-friend.svg',
                    buttonText: 'Invite Friend',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/agent.svg',
                    buttonText: 'Agent Locator',
                  ),
                  MyButton(
                    iconImagePath: 'assets/icons/complaints.svg',
                    buttonText: 'Complaints',
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}

