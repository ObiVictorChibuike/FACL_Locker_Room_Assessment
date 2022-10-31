import 'package:facl_locker_room/component/button_widget.dart';
import 'package:facl_locker_room/component/version_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double initialVersion = 1.0;

  Color dynamicColor = const Color(0xff987899);

  @override
  Widget build(BuildContext context) {
    return SafeArea(top: false, bottom: false,
      child: Scaffold(
        body: Stack(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: double.maxFinite, color: dynamicColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(height: 235, width: 235,
                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                            child: Image.asset("assets/Safe.png"),
                          ),
                          const SizedBox(height: 25,),
                          const Text("Welcome to FACL locker room. \nHere you can save as much as you want for the raining days ahead.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 14),)
                        ],
                      ),
                    )
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 53.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 143),
                        GestureDetector(
                            onTap: ()=>setState(() {
                              const snackBar = SnackBar(
                                backgroundColor: Color(0xff969978),
                                content: Text('New background color has been updated to green!'),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              dynamicColor = const Color(0xff969978);
                              initialVersion == 1.1 ? null : initialVersion += 0.1;
                            }),
                            child: const ButtonWidget(buttonText: "Get Started")),
                        const SizedBox(height: 28,),
                        GestureDetector(
                            onTap: ()=> setState(() {
                              const snackBar = SnackBar(
                                backgroundColor: Color(0xff987899),
                                content: Text('New background color has been updated to purple!'),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              dynamicColor = const Color(0xff987899);
                              initialVersion == 1.0 ? null : initialVersion = 1.0;
                            }),
                            child: const ButtonWidget(buttonText: "I already have an account"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 435, right: 100, left: 100,
              child: VersionWidget(version: initialVersion),
            )
          ],
        ),
      ),
    );
  }
}