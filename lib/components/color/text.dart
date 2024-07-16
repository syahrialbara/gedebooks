import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  static final String aboutUsText = 'namely from https://jatengprov.go.id, which states that in Magelang Regency as many as 21,440 children cannot go to school. Then continued with the national issue with the lack of educational facilities in the 3T area. Gedebooks also helps to realize the 4 Main Issues of Education in the G20 Presidency, namely Universal Quality Education, Digital Technologies in Education, Solidarity and Partnership, The Future of Work Post Covid-19. Gedebooks is a cool step in realizing this because Educations is Human Right, so let\'s see the extraordinary things we design!';
  
  static final String donateText = 'Are you a faculty/staff member on campus? Hosting a dropbox is a great (and easy!) way to champion social impact on your campus. All you need to do is say yes, and we’ll handle the rest! The first step is finding a good location for a dropbox. Next, the Textbooks for Change team will do all of the marketing and clear the bin every few weeks (faster if you need).';

  static Widget justifiedText(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600
      ),
    );
  }
}
