
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  bool rememberMe = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Selamat Datang Kembali!",
                  style: GoogleFonts.plusJakartaSans(fontSize: 20,
                      fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onBackground),),
                Text("Siap menjelajahi tempat wisata impianmu hari ini?",
                  style: GoogleFonts.plusJakartaSans(fontSize: 12, fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.secondary),),

                Spacer(flex: 2,),
                Center(
                  child: Image.asset('assets/login-ills.png', height: 200,),
                ),
                Spacer(flex: 5,),
                Text("E-mail",
                    style: GoogleFonts.plusJakartaSans(fontSize: 12, fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(height: 2,),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Masukkan email anda...",
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
                    prefixIcon: Icon(Icons.email_outlined, color: Theme.of(context).colorScheme.onBackground,)
                  ),
                ),
                SizedBox(height: 10,),
                Text("Password",
                    style: GoogleFonts.plusJakartaSans(fontSize: 12, fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.onBackground)),
                const SizedBox(height: 2,),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Masukkan password anda...",
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
                      prefixIcon: Icon(Icons.key_outlined, color: Theme.of(context).colorScheme.onBackground,)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: rememberMe,
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value ?? false;
                            });
                          },

                        ),
                        Text("Remember Me", style: GoogleFonts.plusJakartaSans(fontSize: 12, fontWeight: FontWeight.w400, color: Theme.of(context).colorScheme.onBackground))
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          overlayColor: Colors.transparent
                        ),

                        child: Text("Forgot Password",
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.error))),

                  ],
                ),
                Spacer(flex: 1,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20,),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                    onPressed: (){
                      // Belum dibuat
                    },
                    child: Center(
                        child: Text(
                          "LOGIN", style: GoogleFonts.plusJakartaSans(color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 16, fontWeight: FontWeight.w600),
                        )
                    )
                ),
                Spacer(flex: 1,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?"),
                    TextButton(
                        style: TextButton.styleFrom(
                            overlayColor: Colors.transparent
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text("Daftar"))
                  ],
                )
              ],
            ),
          )
      ),
    );

  }
}