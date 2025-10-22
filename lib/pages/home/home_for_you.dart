
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForYou extends StatelessWidget{
  final Map<String, String> item;

  ForYou({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              item['image']!,
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['title']!,  style: GoogleFonts.plusJakartaSans(fontSize: 16,
                      fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground)),
                  Text(item['subtitle']!, style: GoogleFonts.plusJakartaSans(fontSize: 14,
                      fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.secondary)),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Icon(Icons.favorite, color: Theme.of(context).colorScheme.error,),
              )
            ],
          )
        ],
      ),
    );
  }
}


class ForYouContainer extends StatelessWidget{
  final List <Map<String, String>> items = [
    {
      'image': 'assets/recommendation/rec1.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp. 50.000',
    },
    {
      'image': 'assets/recommendation/rec2.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp. 50.000',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Row(
        children: [
          Expanded(child: ForYou(item: items[0])),
          SizedBox(width: 12),
          Expanded(child: ForYou(item: items[1])),
        ],
      ),
    );
  }
}