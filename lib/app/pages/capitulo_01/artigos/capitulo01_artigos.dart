import 'package:flutter/material.dart';

class Capitulo1ArtigosLayout extends StatelessWidget {
  final titulo = 'Lei Sobre A Protecção E Desenvolvimento Itegral Da Criança';

  const Capitulo1ArtigosLayout({super.key});

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
            height: 100,
            width: double.infinity,
            color: Colors.blue[900],
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CAPÍTULO I',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Disposições Comuns',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 1.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Objecto e Fins)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: [
                              WidgetSpan(
                                child: SizedBox(width: 20), // 👈 indent real
                              ), // 👈 indentação da primeira linha
                              TextSpan(
                                text:
                                    "1. A presente lei tem por objecto a definição de regras e princípios jurídicos sobre a protecção e o desenvolvimento integral da criança.",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
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
                                    '2. A presente lei visa reforçar e harmonizar os instrumentos legais e institucionais destinados a assegurar os direitos da criança.',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
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
                                    '3. A presente lei tem como finalidade estender e promover os direitos da criança, tal como se encontram definidos na Constituição da República de Angola, na Convenção sobre os Direitos da Criança, na Carta Africana sobre os Direitos e o Bem-Estar da Criança e em demais legislação aplicável.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 2.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Âmbito)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
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
                                    'A presente lei aplica-se a toda a pessoa com menos de 18 (dezoito) anos de idade.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 3.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Direitos Fundamentais)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: [
                              WidgetSpan(
                                child: SizedBox(width: 20), // 👈 indent real
                              ), // 👈 indentação da primeira linha
                              TextSpan(
                                text:
                                    "A criança goza de todos os direitos fundamentais inerentes à pessoa humana em geral, sem prejuízo dos direitos fundamentais especialmente destinados à protecção e ao desenvolvimento da criança ou do sistema de protecção e de desenvolvimento integral da criança previsto pela presente lei.",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 4.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Universalidade)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: [
                              WidgetSpan(
                                child: SizedBox(width: 20), // 👈 indent real
                              ),
                              TextSpan(
                                text:
                                    "1. A presente lei é aplicável à criança, independentemente da cor, raça, sexo, origem étnica, lugar de nascimento, religião, grau de instrução, posição social, estado civil dos pais, condição física e psíquica ou qualquer outra particularidade objectiva ou subjectiva, relativa à criança, aos seus progenitores ou representantes legais.",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 20)),
                              TextSpan(
                                text:
                                    '2. Compete ao Estado, através dos seus órgãos vocacionados para o efeito, criminalizar todas as práticas discriminatórias e adoptar mecanismos que visam minimizar os prejuízos decorrentes das mesmas.',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 20)),
                              TextSpan(
                                text:
                                    '3. Dada a sua particular vulnerabilidade, sempre que as circunstâncias o justificarem, a criança de 0 (zero) aos 5 (cinco) anos de idade deve ser tratada com prioridade, nos termos estabelecidos pela presente lei.',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 20)),
                              TextSpan(
                                text:
                                    '4. Os princípios estabelecidos nos números anteriores são aplicáveis sem restrições à criança que se encontre no território nacional, especialmente àquela que se encontre na condição de refugiada.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 5.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Efectivação de Direitos)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: [
                              WidgetSpan(
                                child: SizedBox(width: 20), // 👈 indent real
                              ),
                              TextSpan(
                                text:
                                    "1. Sem prejuízo do disposto no Código da Família e em outros diplomas que protejam os direitos da criança, é dever da família, da comunidade, da sociedade em geral e do Estado, assegurar à criança, com absoluta prioridade, a efectivação dos seus direitos.",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 20)),
                              TextSpan(
                                text:
                                    '2. A prioridade dos direitos da criança é efectivada através de, designadamente:',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        Container(
                          width: double.infinity,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: [
                                WidgetSpan(child: SizedBox(width: 40)),
                                TextSpan(
                                  text:
                                      'a) - Primazia na recepção de protecção e socorro em quaisquer circunstâncias;',
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 6),

                        Container(
                          width: double.infinity,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: [
                                WidgetSpan(child: SizedBox(width: 40)),
                                TextSpan(
                                  text:
                                      'b) - Precedência de atendimento nos serviços prestados por entes públicos ou privados;',
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: [
                                WidgetSpan(child: SizedBox(width: 40)),
                                TextSpan(
                                  text:
                                      'c) - Preferência na formulação e na execução de políticas públicas na área social e económica;',
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: [
                                WidgetSpan(child: SizedBox(width: 40)),
                                TextSpan(
                                  text:
                                      'b) - Afectação privilegiada de recursos públicos nas áreas relacionadas com a protecção à criança.',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 6.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Superior Interesse da Criança)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: [
                              WidgetSpan(
                                child: SizedBox(width: 20), // 👈 indent real
                              ), // 👈 indentação da primeira linha
                              TextSpan(
                                text:
                                    "1. Na interpretação e aplicação da lei e na composição dos litígios que envolva a criança, deve- se ter em conta o superior interesse da criança, os bens e os fins sociais que ela representa e a condição especial da criança como pessoa em desenvolvimento.",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
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
                                    '2. No conflito entre duas normas, prevalece aquela que, em concreto, melhor protege os interesses da criança, de harmonia com o estabelecido no número anterior.',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
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
                                    '3. Para efeito da presente lei, entende-se por superior interesse da criança tudo o que concorra para a defesa e salvaguarda da sua integridade, identidade, manutenção e desenvolvimento são e harmonioso.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 7.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Tratamentos Proibidos)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
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
                                    'A criança não deve ser tratada de forma negligente, discriminatória, violenta ou cruel, nem ser objecto de qualquer forma de exploração ou opressão, sendo punidos por lei todos os comportamentos que se traduzam em violação a estas proibições.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 8.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Salvaguarda da Dignidade)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
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
                                    'É dever de todo o cidadão zelar pela dignidade da criança, protegendo-a de qualquer tratamento desumano, cruel, violento, exploratório, humilhante, constrangedor, discriminatório ou que de qualquer outra forma atente contra a dignidade e integridade da criança.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ARTIGO 9.º',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '(Deveres Gerais dos Pais)',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 10),

                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.5,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: [
                              WidgetSpan(
                                child: SizedBox(width: 20), // 👈 indent real
                              ), // 👈 indentação da primeira linha
                              TextSpan(
                                text:
                                    "1. Sem prejuízo do disposto na lei, incumbe aos pais o dever de sustento, guarda e educação da criança.",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
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
                                    '2. No interesse da criança, aos pais cabe o dever de orientar a sua educação e de prover o seu são e harmonioso desenvolvimento, bem como a obrigação de cumprir e fazer cumprir as decisões judiciais relativas à criança.',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 6),

                        RichText(
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
                                    '3.     Os pais estão ainda obrigados a assumir as despesas relativas à segurança, saúde, educação e desenvolvimento integral da criança até que esta esteja legalmente em condições de se auto-sustentar.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      backgroundColor: Colors.blue[900],

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
