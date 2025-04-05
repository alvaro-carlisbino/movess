import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movess/utils.dart';

class CameraOrdem extends StatefulWidget {
  const CameraOrdem({super.key});

  @override
  State<CameraOrdem> createState() => _CameraOrdemState();
}

class _CameraOrdemState extends State<CameraOrdem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/camera");
        },
        backgroundColor: AppColors.secondaryColor,
        child: Icon(Icons.camera_alt, color: AppColors.primaryTextColor),
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

            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    "Ordem de Serviço",
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Fotos do Serviço:",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      "Enviar Fotos",
                      style: GoogleFonts.roboto(fontSize: 18, color: AppColors.primaryTextColor),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/ordem_final");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Confirmar",
                        style: GoogleFonts.righteous(
                          fontSize: 22,
                          color: AppColors.primaryColor,
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
