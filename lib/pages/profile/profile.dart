

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotravel/pages/home/home.dart';

class Profile extends StatelessWidget{
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    child: Image.asset('assets/welcome.png', width: 100, height: 100,),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Halo, Petualang!", style: GoogleFonts.plusJakartaSans(fontSize: 20,
                          fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.onBackground)),
                      Text("Vandy Rizky Septiawan", style: GoogleFonts.plusJakartaSans(fontSize: 16,
                          fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.secondary))
                    ],
                  )
                ],
              )

            ],
          )
      ),



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (index){
          if (index == 0){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
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