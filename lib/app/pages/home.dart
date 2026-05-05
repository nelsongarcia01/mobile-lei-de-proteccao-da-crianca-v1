import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final titulo = 'Lei Sobre A Protecção E Desenvolvimento Itegral Da Criança';

  int _currentIndex = 0;

  final List capitulos = [
    {
      "id": 1,
      "titulo": "Capítulo I",
      "subtitulo": "Disposições Comuns",
      "rota": "/capitulo01_artigos",
    },
    {
      "id": 2,
      "titulo": "Capítulo II",
      "subtitulo": "Direitos e Deveres da Criança",
      "rota": "/capitulo02_seccao",
    },
    {
      "id": 3,
      "titulo": "Capítulo III",
      "subtitulo": "Medidas De Atendimento à Criança",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 4,
      "titulo": "Capítulo IV",
      "subtitulo": "Medidas De Protecção Judiciária Da Criança",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 5,
      "titulo": "Capítulo V",
      "subtitulo": "Compromissos Em Prol Da Criança",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 6,
      "titulo": "Capítulo VI",
      "subtitulo": "Sistema De Protecção E Desenvolvimeto Integral Da Criança",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 7,
      "titulo": "Capítulo VII",
      "subtitulo": "Protecção Multi-Sectorial Da Criança",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 8,
      "titulo": "Capítulo VIII",
      "subtitulo": "Instrumentos Operacionais De Apoio Aos Direitos Da Criança",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 9,
      "titulo": "Capítulo IX",
      "subtitulo": "Actividade Financeira Corrente",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 10,
      "titulo": "Capítulo X",
      "subtitulo": "Avaliação Das Tarefas Em Prol Da Criança",
      "rota": "/capitulo3-codigos",
    },
    {
      "id": 11,
      "titulo": "Capítulo XI",
      "subtitulo": "Disposições Finais",
      "rota": "/capitulo3-codigos",
    },
  ];

  final List items = [
    {
      "image": "assets/images/crianca1.jpg",
      "title": "Direitos da Criança",
      "subtitle":
          "Descubra os direitos fundamentais que garantem proteção, dignidade e bem-estar para todas as crianças.",
    },
    {
      "image": "assets/images/crianca2.jpg",
      "title": "Proteção e Segurança",
      "subtitle":
          "Saiba como a lei protege as crianças contra abusos, negligência e qualquer forma de violência.",
    },
    {
      "image": "assets/images/crianca3.jpg",
      "title": "Educação e Desenvolvimento",
      "subtitle":
          "Entenda a importância da educação, saúde e acompanhamento no crescimento saudável da criança.",
    },
    {
      "image": "assets/images/crianca4.jpg",
      "title": "Deveres da Sociedade",
      "subtitle":
          "Conheça o papel da família, do Estado e da sociedade na proteção e no desenvolvimento infantil.",
    },
  ];
  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Não foi possível abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      // 🔵 HOME (tua tela atual)
      Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 20, top: 10),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction:
                    1.0, // Exibe um item por vez, ou seja dimensiona a imagem para ocupar toda a largura disponível, posso remover isso se quiser que a imagem ocupe apenas parte da largura, ou seja, se quiser que a imagem ocupe 80% da largura, posso colocar viewportFraction: 0.8,
                enlargeCenterPage: true,
              ),
              items: items.map((item) {
                return Container(
                  //margin: EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          item["image"],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 16,
                        left: 16,
                        right: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["title"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item["subtitle"],
                              style: TextStyle(color: Colors.white70),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView.builder(
                itemCount: capitulos.length,
                itemBuilder: (context, index) {
                  final capitulo = capitulos[index];

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
                      title: Text(capitulo["titulo"]),
                      subtitle: Text(capitulo["subtitulo"]),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.pushNamed(context, capitulo["rota"]);
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),

      // 🟣 SÍNTESE
      Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.blue[900],
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ASSEMBLEIA NACIONAL',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 10),

                Text(
                  'Lei n.º 25/12 De 22 De agosto',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(height: 10),
                Text(
                  'Diário da República Iª Série n.º 162 de 22 de Agosto de 2012 (Pág. 3692)',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textAlign: TextAlign.center,
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
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        children: [
                          WidgetSpan(child: SizedBox(width: 20)),
                          TextSpan(
                            text:
                                'A Constituição da República de Angola consagra os direitos da criança como um direito fundamental e, para a garantia deste direito, o Estado, a família e a sociedade estão constitucionalmente obrigados a criar condições com vista a educação integral e harmoniosa da criança, a protecção da sua saúde física e mental, bem como para o seu pleno desenvolvimento.',
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        children: [
                          WidgetSpan(child: SizedBox(width: 20)),
                          TextSpan(
                            text:
                                'Visando a materialização deste princípio constitucional, o Estado aprovou um pacote legislativo, reforçado com compromissos políticos e sociais, de carácter multi-sectorial, para promover e assegurar os direitos da criança à sobrevivência, ao desenvolvimento, à participação e à protecção, fazendo parte deste conjunto de medidas os designados “11 Compromissos” que definem um conjunto de tarefas essenciais que devem ser desenvolvidas a favor da criança.',
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        children: [
                          WidgetSpan(child: SizedBox(width: 20)),
                          TextSpan(
                            text:
                                'Como resultado dos diagnósticos legais e institucionais realizados no quadro da promoção e da protecção à criança, foi identificada a necessidade de ser aprovada uma lei que estabeleça o elo entre os vários diplomas que concorrem para a promoção e defesa dos direitos da criança, ao mesmo tempo que dá carácter vinculativo às recomendações feitas pela sociedade no quadro dos “11 Compromissos”.',
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        children: [
                          WidgetSpan(child: SizedBox(width: 20)),
                          TextSpan(
                            text:
                                'A Assembleia Nacional aprova, por mandato do povo, nos termos das disposições combinadas do n.º 6 do artigo 35.º, do artigo 80.º, das alíneas b) do artigo 164.º e c) do artigo 166.º, todos da Constituição da República de Angola, a seguinte:',
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'LEI SOBRE A PROTECÇÃO E DESENVOLVIMENTO INTEGRAL DA CRIANÇA',
                      style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // 🟢 SOBRE
      Column(
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

    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.blue[900],
        titleTextStyle: TextStyle(color: Colors.white),
        foregroundColor: Colors.white,
      ),

      body: IndexedStack(index: _currentIndex, children: pages),
      backgroundColor: Colors.blue[900],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue[900],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.view_list_rounded), label: 'Preâmbulo'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre'),
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
                    style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,
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
                //Navigator.pushNamed(context, '/home');
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
                Navigator.pushNamed(context, '/sobre');
              },
            ),
          ],
        ),
      ),
    );
  }
}
