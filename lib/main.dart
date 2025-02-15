import 'package:flutter/material.dart';
import 'match_history.dart';
import 'profile.dart';
import 'login.dart';
import 'cadastro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4, // Altere o comprimento para 5 para incluir a guia de cadastro
        child: Scaffold(
          body: TabBarView(children: [
            MatchHistory(),
            Profile(),
            Login(),
            Cadastro(), // Adicione a guia de cadastro aqui
          ]),
          appBar: AppBar(
            backgroundColor: const Color(0XFFBfa2632),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.history)),
                // Tab(icon: Icon(Icons.groups_2_rounded)),
                Tab(icon: Icon(Icons.switch_account_rounded)),
                Tab(icon: Icon(Icons.account_circle)), // Ícone para a guia de login
                Tab(icon: Icon(Icons.person_add)), // Ícone para a guia de cadastro
              ],
            ),
            title: Row(
              children: [
                Image.asset(
                  'assets/images/truconato.jpeg',
                  height: 60,
                ),
                const SizedBox(width: 5),
                const Text("TrucoNato"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
