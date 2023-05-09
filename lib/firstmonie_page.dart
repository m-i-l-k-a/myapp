import 'package:flutter/material.dart';

import 'home_page.dart';

class FirstMoniePage extends StatefulWidget {
  @override
  _FirstMoniePageState createState() => _FirstMoniePageState();
}

class _FirstMoniePageState extends State<FirstMoniePage> {
  bool _isLoading = false;

  void _login() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/img_1.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'FirstMonie',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 32),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter phone number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  labelText: '236800000',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter pin',
                  prefixIcon: Icon(Icons.vpn_key),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                  },
                  child: const Text('Forgot pin'),
                ),
              ),
              const SizedBox(height: 16),
              _isLoading
                  ? CircularProgressIndicator()
                  : TextButton(
                onPressed: _login,
                child: const Text("Login"),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
