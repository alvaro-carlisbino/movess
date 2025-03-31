import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movess/utils.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  final String userName = "João";
  final int servicesCompleted = 25;
  final String accountCreated = "10 de Março de 2023";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.primaryColor,
        onTap: (value) {
          if (value == 0) {
            Get.toNamed("/home");
          } else if (value == 1) {
            Get.toNamed("/historico");
          } else if (value == 2) {
            Get.toNamed("/conta");
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.handyman), label: 'Ordens'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Histórico',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Conta'),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Movess",
                    style: GoogleFonts.righteous(
                      fontSize: 32,
                      wordSpacing: 2,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  Text(
                    "Olá, João!",
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                ],
              ),
            ),


           Text(
                "Conta",
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryTextColor,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nome: $userName", style: GoogleFonts.roboto(fontSize: 18)),
                      const SizedBox(height: 10),
                      Text("Serviços concluídos: $servicesCompleted", style: GoogleFonts.roboto(fontSize: 18)),
                      const SizedBox(height: 10),
                      Text("Conta criada em: $accountCreated", style: GoogleFonts.roboto(fontSize: 18)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed("/login");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    "Logout",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            
           
          ],
        ),
      ),
    );
  }
}
