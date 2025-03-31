import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movess/utils.dart';

class HistoricoPage extends StatefulWidget {
  const HistoricoPage({super.key});

  @override
  State<HistoricoPage> createState() => _HistoricoPageState();
}

class _HistoricoPageState extends State<HistoricoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
            Container(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Pesquisar",

                  labelStyle: GoogleFonts.roboto(
                    fontSize: 16,
                    color: AppColors.primaryTextColor,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.primaryTextColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColors.primaryTextColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Text(
                "Histórico de Ordens de Serviço",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(
                          "Ordem de Serviço #${index + 1}",
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        subtitle: Text(
                          "Data: 01/01/2099",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
