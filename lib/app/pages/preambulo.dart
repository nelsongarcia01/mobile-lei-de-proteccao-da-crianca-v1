import 'package:flutter/material.dart';

class PreambuloLayout extends StatelessWidget {
  final titulo = 'Lei Sobre A Protecção E Desenvolvimento Itegral Da Criança';

  const PreambuloLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.blue[900],
        titleTextStyle: TextStyle(color: Colors.white),
        foregroundColor: Colors.white,
      ),

      body: Column(
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

      drawer: Drawer(
        child: Column(
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
                    titulo,
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
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // 👈 fecha drawer
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Síntese'),
              onTap: () {
                Navigator.pop(context); // 👈 fecha drawer
                //Navigator.pushNamed(context, '/sintese');
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
