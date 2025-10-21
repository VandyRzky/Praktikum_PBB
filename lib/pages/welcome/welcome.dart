
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotravel/pages/welcome/welcome_slider.dart';


class WelcomePage extends StatelessWidget{
  final Map<String, String> messages = {
    "Temukan Keindahan di Setiap Destinasi":"Nikmati pengalaman berwisata yang mudah dan menyenangkan hanya dalam genggaman tanganmu.",
    "Pesan Tiket Wisata Tanpa Ribet":"Dapatkan tiket ke tempat wisata favoritmu hanya dalam beberapa klik — aman, cepat, dan praktis.",
    "Satu Aplikasi, Ribuan Tempat Seru":"Dari pantai, pegunungan, hingga taman hiburan — temukan semuanya di sini."
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child:Center(child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 1,),
                  Image.asset('assets/welcome.png', height: 250,),
                  // SizedBox(height: 25,),
                  const Spacer(flex: 2,),
                  WelcomeSlider(message: messages),
                  SizedBox(height: 20,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15,),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ),
                      onPressed: (){
                        // Login
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Center(
                          child: Text(
                            "LOGIN", style: GoogleFonts.plusJakartaSans(color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16, fontWeight: FontWeight.w600),
                          )
                      )
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.onPrimary,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 0.5
                            )
                          )
                      ),
                      onPressed: (){
                        // Signup
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Center(
                          child: Text(
                            "SIGN UP", style: GoogleFonts.plusJakartaSans(color: Theme.of(context).primaryColor,
                              fontSize: 16, fontWeight: FontWeight.w600),
                          )
                      )
                  )
                ],
              ),
          )
          )
      ),
    );
  }

}