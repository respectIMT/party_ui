import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/party.jpeg'),
                fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.1),
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Find the best parties near you",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                height: 30,
              ),
              Text("Let's us find you a party for your interest",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w100,
                      color: Colors.white)),
              SizedBox(
                height: 150,
              ),
              _isLogin
                  ? Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.yellow.shade900,
                      ),
                      child: Center(
                        child: Text(
                          "Start",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    )
                  : Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          "Google+",
                          style: TextStyle(fontSize: 18, color: Colors.white),
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
