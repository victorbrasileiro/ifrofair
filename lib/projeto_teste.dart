import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

// O widget principal do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'IFROAppFair'; // Titulo do aplicativo

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle, // Define o titulo do aplicativo
      home: const MyHomePage(
        title: appTitle, // Passa o titulo para a página inicial
      ),
    );
  }
}

// Página Inicial do aplicativo
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Índice do item selecionado no menu
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold); // Estilo do texto das telas
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Tela Inicial',
      style: optionStyle,
    ),
    Text(
      'Despesas Parlamentares',
      style: optionStyle,
    ),
    Text(
      'Profissões dos Deputados',
      style: optionStyle,
    ),
    Text(
      'Solicitações',
      style: optionStyle,
    ),
  ]; // Lista de telas disponíveis no menu



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Atualiza o indice do item selecionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700),
        backgroundColor: Color.fromARGB(255, 2, 132, 199),
        title: Text(
          widget.title, // Título da página, definido no construtor
        ),

      ),
      body: Center(
        child: _widgetOptions[_selectedIndex], // Corpo da página, exibindo o conteúdo da tela selecionada
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 110,
              child: const DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 2, 132, 199)),
                child: Text(
                  'IFROAppFair', // Cabeçalho da gaveta
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
            ),
            // Itens do menu lateral
            ListTile(
              title: const Text(
                'Tela Inicial',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              selected: _selectedIndex == 0, // Verifica se o item está selecionado
              onTap: () {
                _onItemTapped(0); // Atualiza o indice para a tela selecionada
                Navigator.pop(context); // Fecha a gaveta
              },
            ),
            ListTile(
              title: const Text('Despesas Parlamentares',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profissões dos Deputados',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Solicitações',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
