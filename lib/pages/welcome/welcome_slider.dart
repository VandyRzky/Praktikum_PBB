
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeSlider extends StatefulWidget{
  final Map<String, String> message;

  const WelcomeSlider({super.key, required this.message});

  @override
  _WelcomeSliderState createState() => _WelcomeSliderState();
}

class _WelcomeSliderState extends State<WelcomeSlider>{

  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final title = widget.message.keys.toList();
    final subtitle = widget.message.values.toList();
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.message.length,
            onPageChanged: (index){
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index){
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title[index], textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w600, fontSize: 16,
                    color: Theme.of(context).colorScheme.onBackground),
                    ),
                    const SizedBox(height: 8,),
                    Text(subtitle[index], textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(fontSize: 12, fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary,)
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.message.length,
                (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              width: _currentPage == index ? 12 : 8,
              height: _currentPage == index ? 12 : 8,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? Theme.of(context).primaryColor
                    : Colors.grey[400],
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );

  }
  
}