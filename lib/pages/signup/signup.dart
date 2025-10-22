

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotravel/pages/home/home.dart';

class SignUp extends StatefulWidget{
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>{

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


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
                  style: GoogleFonts.plusJakartaSans(fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary),
                ),
                Spacer(flex: 1,),
                Text("Username", style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground)),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      hintText: "Buat username anda....",
                      hintStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                              width: 1.5),
                    ),
                      prefixIcon: Icon(Icons.person_outline, color: Theme.of(context).colorScheme.onBackground,)
                  ),

                ),
                const SizedBox(height: 10,),

                Text("E-mail", style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(height: 2,),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Masukkan e-mail anda...",
                    hintStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                            width: 1.5),
                      ),
                      prefixIcon: Icon(Icons.email_outlined,
                        color: Theme.of(context).colorScheme.onBackground,)
                  ),
                ),
                const SizedBox(height: 10,),

                Text("No. Telepon", style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(height: 2,),
                TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                      hintText: "Masukkan nomor telepon anda...",
                      hintStyle: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                            width: 1.5),
                      ),
                      prefixIcon: Icon(Icons.phone,
                        color: Theme.of(context).colorScheme.onBackground,)
                  ),
                ),
                const SizedBox(height: 10,),

                Text("Password", style: GoogleFonts.plusJakartaSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(height: 2,),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Buat password anda...",
                      hintStyle: GoogleFonts.plusJakartaSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                            width: 1.5),
                      ),
                      prefixIcon: Icon(Icons.key_outlined,
                        color: Theme.of(context).colorScheme.onBackground,)
                  ),
                ),
                Spacer(flex: 9,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20,),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => Home()),
                            (Route<dynamic> route) => false,
                      );
                    },
                    child: Center(
                        child: Text(
                          "SIGN UP", style: GoogleFonts.plusJakartaSans(color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 16, fontWeight: FontWeight.w600),
                        )
                    )
                ),
                Spacer(flex: 1,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah punya akun?"),
                    TextButton(
                        style: TextButton.styleFrom(
                            overlayColor: Colors.transparent
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text("Masuk"))
                  ],
                )


              ],
            ),
          )
      ),
    );
  }
}