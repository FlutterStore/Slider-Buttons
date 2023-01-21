// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Button',style: TextStyle(fontSize: 15,)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SliderButton(
                  action: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Homescreen(),));
                  },
                  ///Put label over here
                  label: const Text(
                    "Slide to cancel !",
                    style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  icon: const Center(
                      child: Icon(
                    Icons.power_settings_new,
                    color: Colors.white,
                    size: 25.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),

                  //Put BoxShadow here
                  boxShadow: const BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                  ),

                  //Adjust effects such as shimmer and flag vibration here
                  shimmer: true,
                  vibrationFlag: true,

                  ///Change All the color and size from here.
                  width: 270,
                  height: 60,
                  radius: 10,
                  buttonColor: Colors.green,
                  backgroundColor: Colors.green.withOpacity(0.5),
                  highlightedColor: Colors.white,
                  baseColor: Colors.black,
                )
              )
            ],
          ),
        ),
      )
    );
  }
}


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page',style: TextStyle(fontSize: 15,)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('Successoft Infotech',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
      ),
    );
  }
}