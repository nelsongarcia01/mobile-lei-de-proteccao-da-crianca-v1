import 'package:flutter/material.dart';
import 'package:lei_sobre_preteccao_das_criancas_angolana/app/pages/capitulo_01/artigos/capitulo01_artigos.dart';
import 'package:lei_sobre_preteccao_das_criancas_angolana/app/pages/capitulo_02/seccoes/capitulo_02_seccao.dart';
import 'package:lei_sobre_preteccao_das_criancas_angolana/app/pages/home.dart';
import 'package:lei_sobre_preteccao_das_criancas_angolana/app/pages/preambulo.dart';
import 'package:lei_sobre_preteccao_das_criancas_angolana/app/pages/sobre.dart';
import 'package:lei_sobre_preteccao_das_criancas_angolana/app/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lei sobre Proteção das Crianças Angolana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome' : (context) => const WelcomePage(),
        '/home' : (context) => const HomePage(),
        '/preambulo' : (context) => const PreambuloLayout(),
        '/sobre' : (context) => const SobreLayout(),
        '/capitulo01_artigos' : (context) => const Capitulo1ArtigosLayout(),
        '/capitulo02_seccao' : (context) => Capitulo2SeccaoLayout(),
      },
    );
  }
}