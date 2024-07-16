import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gedebooks/components/color/color.dart';
import 'package:gedebooks/components/color/text.dart';
import 'package:gedebooks/pages/dropoint.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/about.png'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 50),
              Container(
                width: 350,
                height: 40,
                decoration: const BoxDecoration(
                  color: AppColors.appBarColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Image.asset(
                        'assets/image/logo.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'GEDEBOOKS WAS CREATED BECAUSE IT STARTED FROM A LOCAL ISSUE',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: AppColors.appBarColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      AppText.justifiedText(AppText.aboutUsText), // Class untuk menampilkan format teks, folder components/text
                      const SizedBox(height: 130),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DropPoint()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.appBarColor, // Class untuk menampilkan format warna sesuai UI di figma , folder components/color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        ),
                        child: Text(
                          'FIND DROP POINT',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
