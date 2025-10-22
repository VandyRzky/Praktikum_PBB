

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearBy extends StatelessWidget{
  final Map<String, String> items;

  const NearBy({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                child: Image.asset(items['image']!, width: 50, height: 50,)
                ,
              ),
              SizedBox(width: 4,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items['title']!,
                    style: GoogleFonts.plusJakartaSans(fontSize: 16,
                      fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),),
                  Text(items['subtitle']!, style: GoogleFonts.plusJakartaSans(fontSize: 14,
                      fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.secondary),)
                ],
              )
            ],
          ),
          Text(items['range']!, style: GoogleFonts.plusJakartaSans(fontSize: 20,
              fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),),
        ],
      ),
    );
  }
}


class NearByContainer extends StatelessWidget{
  final List <Map<String, String>> items = [
    {
      'image': 'assets/welcome.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp. 50.000',
      'range': '1.5km'
    },
    {
      'image': 'assets/welcome.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp. 50.000',
      'range': '2.5km'
    },
    {
      'image': 'assets/welcome.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp.50.000',
      'range': '2.0km'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NearBy(items: items[0]),
          SizedBox(height: 8,),
          NearBy(items: items[2]),
          SizedBox(height: 8,),
          NearBy(items: items[1]),

        ],
      ),
    );
  }
}