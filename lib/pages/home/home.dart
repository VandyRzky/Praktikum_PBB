

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotravel/pages/home/home_for_you.dart';
import 'package:gotravel/pages/home/home_near_by.dart';
import 'package:gotravel/pages/home/home_recommendation.dart';

import '../profile/profile.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', height: 40, ),
                Icon(Icons.notifications_active, color: Theme.of(context).colorScheme.secondary,),
              ],
            ),
        ),
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 6),
              children: [
                Text("Sedang Ramai Dikunjungi",
                style: GoogleFonts.plusJakartaSans(fontSize: 20,
                fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                ),
                SizedBox(height: 8,),
                HomeRecommendation(),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Terdekat dengan anda",
                      style: GoogleFonts.plusJakartaSans(fontSize: 16,
                          fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                    ),
                    Text("Lihat Semua", style: GoogleFonts.plusJakartaSans(fontSize: 16,
                        fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),)
                  ],
                ),
                SizedBox(height: 8,),
                NearByContainer(),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Untuk anda",
                      style: GoogleFonts.plusJakartaSans(fontSize: 16,
                          fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                    ),
                    Text("Lihat Semua", style: GoogleFonts.plusJakartaSans(fontSize: 16,
                        fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.primary),)
                  ],
                ),
                SizedBox(height: 8,),
                ForYouContainer(),
                SizedBox(height: 10,)
              ],
            )

      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (index){
          if (index == 1){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,), label: "Profil")
        ],
      ),


    );
  }
}