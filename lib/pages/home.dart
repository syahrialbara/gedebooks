import 'package:flutter/material.dart';
import 'package:gedebooks/components/color/color.dart';
import 'package:gedebooks/pages/about.dart';
import 'package:gedebooks/pages/donate.dart';
import 'package:gedebooks/pages/dropoint.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _navigateToPage(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = About();
        break;
      case 1:
        page = Donate();
        break;
      case 2:
        page = DropPoint();
        break;
      default:
        page = About();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/home.png'),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Image.asset(
                    "assets/image/logo.png",
                    width: 261,
                    height: 176,
                  ),
                ),
              ),
              Text("FROM TO THE NEXT GENERATION",
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 15)),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: AppColors.navigationBarColor.withOpacity(0.7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => _navigateToPage(context, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/image/friends.png',
                            width: 30,
                            height: 30,
                          ),
                          Text('ABOUT US',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _navigateToPage(context, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/image/wallet.png',
                            width: 30,
                            height: 30,
                          ),
                          Text('DONATE', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _navigateToPage(context, 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/image/maps.png',
                            width: 30,
                            height: 30,
                          ),
                          Text('DROP POINT',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
