import 'package:flutter/material.dart';
import 'package:movess/pages/camera_ordem.dart';
import 'package:movess/pages/conta.dart';
import 'package:movess/pages/historico.dart';
import 'package:movess/pages/home.dart';
import 'package:movess/pages/login.dart';
import 'package:get/get.dart';
import 'package:movess/pages/ordem_de_servico.dart';
import 'package:movess/pages/ordem_finalizado.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ' Movess',
      home: const LoginPage(),
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/ordem',
          page: () => const OrdemDeServico(),
        ),
        GetPage(
          name: "/historico",
          page: () => const HistoricoPage(),
        ),
        GetPage(
          name: "/conta",
          page: () => const AccountPage(),
        ),
        GetPage(
          name: "/camera",
          page: () => const CameraOrdem(),
        ),
        GetPage(
          name: "/ordem_final",
          page: () => const OrdemFinalizado(),
        )
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
