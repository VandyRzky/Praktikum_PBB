

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget{
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Yuk, Mulai Petualanganmu!",
                  style: GoogleFonts.plusJakartaSans(fontSize: 20, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),),
                Text("Daftar sekarang dan temukan berbagai tempat seru di seluruh Indonesia.",
                  style: GoogleFonts.plusJakartaSans(fontSize: 12, fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.secondary),),


              ],
            ),
          )
      ),
    );
  }
}