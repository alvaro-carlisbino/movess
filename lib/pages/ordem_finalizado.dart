import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movess/utils.dart';

class OrdemFinalizado extends StatefulWidget {
  const OrdemFinalizado({super.key});

  @override
  State<OrdemFinalizado> createState() => _OrdemFinalizadoState();
}

class _OrdemFinalizadoState extends State<OrdemFinalizado> {
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
                    "Endereço: Rua 1, 123, São Paulo, SP",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: AppColors.primaryTextColor,
                    ),
                  ),

                  SizedBox(height: 15),
                  Text(
                    "Nome do Cliente: João",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Horário Marcado: 10:00",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Status: Em andamento",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Descrição: Montar uma mesa de jantar",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: AppColors.primaryTextColor,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      Get.dialog(
                        AlertDialog(
                          title: Text(
                            "Imagem da montagem",
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: AppColors.primaryTextColor,
                            ),
                          ),
                          content: Image.asset("assets/movel.png"),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      "Foto do Imóvel",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      Get.dialog(
                        AlertDialog(
                          title: Text(
                            "Assinatura",
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: AppColors.primaryTextColor,
                            ),
                          ),
                          content: Image.asset("assets/assinatura.jpg"),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      "Assinatura",
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        color: AppColors.primaryTextColor,
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Finalizar Ordem",
                        style: GoogleFonts.righteous(
                          fontSize: 18,
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
