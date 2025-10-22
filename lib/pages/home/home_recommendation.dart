

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotravel/pages/home/home.dart';

class HomeRecommendation extends StatefulWidget{
  @override
  _HomeRecommendationState createState() => _HomeRecommendationState();
}

class _HomeRecommendationState extends State<HomeRecommendation>{
  PageController _pageController = PageController(
    viewportFraction: 0.85
  );
  final List<Map<String, String>> items = [
    {
      'image': 'assets/welcome.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp. 50.000'
    },
    {
      'image': 'assets/welcome.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp. 50.000'
    },
    {
      'image': 'assets/welcome.png',
      'title': 'Tempat wisata',
      'subtitle': 'Rp. 50.000'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // biarkan agak tinggi agar card-nya muat
      child: PageView.builder(
        controller: _pageController,
        itemCount: items.length,
        clipBehavior: Clip.none,
        padEnds: false,
        itemBuilder: (context, index) {
          final item = items[index];
          return AspectRatio(
            aspectRatio: 1 / 1.1,
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),

                ],
              ),
              child: Padding(padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Gambar di atas
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: Image.asset(
                        item['image']!,
                        height: 130,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Spacer(flex: 1,),

                    Text(
                      item['title']!,
                      style: GoogleFonts.plusJakartaSans(fontSize: 16,
                        fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),
                    ),
                    SizedBox(height: 2,),
                    Text(
                      item['subtitle']!,
                      style: GoogleFonts.plusJakartaSans(fontSize: 14,
                          fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.secondary),

                    )

                  ],
                ),
              )

            ),
          );
        },
      ),
    );
  }

}