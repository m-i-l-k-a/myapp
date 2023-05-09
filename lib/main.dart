import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myap/firstmonie_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String respDesc = '';
  List<Map<String, String>> otpList = [];
  Map<String, String>? selectedOtp;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var response = await Dio().get(
          'http://196.11.150.234:8888/walletmobileapi/rest/wallet/fbns/customer/fetchotp/2348639906665/%7Bsecurity%7D');

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.data);

        setState(() {
          respDesc = jsonData['respdesc'];
          otpList = List<Map<String, String>>.from(
              jsonData['otp'].map((otp) => Map<String, String>.from(otp)));
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Respdesc: $respDesc'),
              SizedBox(height: 16),
              const Text('Select OTP:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              DropdownButton<Map<String, String>>(
                value: selectedOtp,
                onChanged: (otp) {
                  setState(() {
                    selectedOtp = otp;
                  });
                },
                items: otpList
                    .map((otp) => DropdownMenuItem<Map<String, String>>(
                  value: otp,
                  child: Text('${otp['otp']}'),
                ))
                    .toList(),
              ),
              selectedOtp != null
                  ? const Visibility(
                visible: true,
                child: SizedBox(
                  height: 16,
                  child: Text('SELECTED SUCCESSFULLY'),
                ),
              )
                  : SizedBox(),
              Builder(builder: (context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => FirstMoniePage()));
                        },
                        child: Text("fetch data")),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}




