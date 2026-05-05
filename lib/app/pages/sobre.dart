import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SobreLayout extends StatefulWidget {
  final titulo = 'Lei Sobre A Protecção E Desenvolvimento Itegral Da Criança';

  const SobreLayout({super.key});

  @override
  State<SobreLayout> createState() => _SobreLayoutState();
}

class _SobreLayoutState extends State<SobreLayout> {
  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Não foi possível abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        backgroundColor: Colors.blue[900],
        titleTextStyle: TextStyle(color: Colors.white),
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue[900],
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SOBRE O APLICATIVO',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Versão 1.0.0',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Este aplicativo foi desenvolvido com o objetivo de facilitar o acesso à Lei de Proteção e Desenvolvimento da Criança, permitindo que qualquer cidadão consulte os direitos, deveres e garantias das crianças de forma simples, rápida e em qualquer lugar.',
                      style: TextStyle(height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Todo o conteúdo disponibilizado foi obtido a partir de fontes públicas confiáveis, com o propósito de promover o acesso à informação, a conscientização e a proteção dos direitos da criança.',
                      style: TextStyle(height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      '© Todos os direitos reservados a Nelson Manuel Garcia.',
                      style: TextStyle(height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Desenvolvido por Nelson Manuel Garcia, Desenvolvedor de Software.',
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Image.asset('assets/images/imagem2.png'),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Contactos:',
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  /* SizedBox(height: 12), */

                  // 📧 EMAIL
                  GestureDetector(
                    onTap: () =>
                        openLink('mailto:nelsonmanuelgarcia980@gmail.com'),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.email, color: Colors.black54),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            'nelsonmanuelgarcia980@gmail.com',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // 🌐 LINKEDIN
                  GestureDetector(
                    onTap: () => openLink(
                      'https://www.linkedin.com/in/nelson-manuel-garcia-80424234a',
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.email, color: Colors.black54),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'LinkedIn',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // 💻 GITHUB
                  GestureDetector(
                    onTap: () => openLink('https://github.com/nelsongarcia01'),
                    child: Row(
                      children: [
                        Icon(Icons.email_sharp, color: Colors.black54),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'GitHub',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                ],
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
                    widget.titulo,
                    style: TextStyle(color: Colors.white, fontSize: 16),
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
              leading: Icon(Icons.view_list_rounded),
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
                //Navigator.pushNamed(context, '/sobre');
              },
            ),
          ],
        ),
      ),
    );
  }
}
