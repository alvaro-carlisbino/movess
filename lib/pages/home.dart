import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movess/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "Ordens de Serviço",
                style: GoogleFonts.roboto(
                  fontSize: 24,
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
                        onTap: () => Get.toNamed('/ordem'),
                        title: Text("Ordem de Serviço ${index + 1}"),
                        subtitle: Text("Descrição da ordem de serviço"),
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
