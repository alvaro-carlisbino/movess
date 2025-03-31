import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movess/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 140, left: 90),
              height: MediaQuery.of(context).size.height / 2.3,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/login_mesa.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                "Movess",
                style: GoogleFonts.righteous(
                  fontSize: 32,
                  wordSpacing: 2,
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),

            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,

                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Olá, seja bem-vindo!",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "CPF",
                        labelStyle: GoogleFonts.roboto(
                          color: AppColors.primaryTextColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primaryTextColor,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: GoogleFonts.roboto(
                          color: AppColors.primaryTextColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primaryTextColor,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/home");
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          AppColors.secondaryColor,
                        ),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: Text(
                        "MONTAR",
                        style: GoogleFonts.righteous(
                          fontSize: 30,
                          color: AppColors.primaryTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
