import 'package:flutter/material.dart';

class Capitulo2SeccaoLayout extends StatelessWidget {
  final titulo =
      'Lei sobre a Protecção e Desenvolvimento Integral da Criança Angolana';
  final List seccoes = [
    {
      "id": 1,
      "titulo": "Secção I",
      "subtitulo": "Direitos Gerais Da Criança",
      "rota": "/capitulo2-seccao1-artigos",
    },
    {
      "id": 2,
      "titulo": "Secção II",
      "subtitulo": "Direito à Vida e à Saúde",
      "rota": "/capitulo2-seccao2-artigos",
    },
    {
      "id": 3,
      "titulo": "Secção III",
      "subtitulo": "Direitos a Convivência Familiar e Comunitária",
      "rota": "/capitulo2-seccao1-artigos",
    },
    {
      "id": 4,
      "titulo": "Secção IV",
      "subtitulo": "Direitos Especiais de Criança",
      "rota": "/capitulo2-seccao2-artigos",
    },
    {
      "id": 5,
      "titulo": "Secção V",
      "subtitulo": "Deveres Da Criança",
      "rota": "/capitulo2-seccao2-artigos",
    },
  ];

  Capitulo2SeccaoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.blue[900],
        titleTextStyle: TextStyle(color: Colors.white),
        foregroundColor: Colors.white,
      ),

      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue[900],
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CAPÍTULO II',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Direitos e Deveres da Criança',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                itemCount: seccoes.length,
                itemBuilder: (context, index) {
                  final seccao = seccoes[index];
              
                  return Container(
                    margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                        ),
                      ],
                    ),
              
                    child: ListTile(
                      leading: Icon(Icons.window_rounded),
                      title: Text(seccao["titulo"]),
                      subtitle: Text(seccao["subtitulo"]),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.pushNamed(context, seccao["rota"]);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.blue[900],
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Desenvolvido Por Nelson Manuel Garcia.',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    'Versão 1.0.0',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.home_rounded),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // 👈 fecha drawer
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Preâmbulo'),
              onTap: () {
                Navigator.pop(context); // 👈 fecha drawer
                Navigator.pushNamed(context, '/preambulo');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Sobre'),
              onTap: () {
                Navigator.pop(context); // 👈 fecha drawer
                Navigator.pushNamed(context, '/sobre');
              },
            ),
          ],
        ),
      ),
    );
  }
}
