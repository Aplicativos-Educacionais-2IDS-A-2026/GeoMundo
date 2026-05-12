import 'package:flutter/material.dart';
//import 'package:site_geografia/pag_atividade.dart';
//import 'package:site_geografia/pag_conteudo.dart';
//import 'package:site_geografia/sobre.dart';

class PagAtividade extends StatefulWidget {

  const PagAtividade({super.key});

  @override
  State<PagAtividade> createState() => _PagAtividadeState();
}

class _PagAtividadeState extends State<PagAtividade> {

  String? nivelSelecionado; // guarda o nível escolhido
  int perguntaAtual = 0;
  int pontuacao = 0;
  bool respondeu = false; // controla se já respondeu a pergunta

  // perguntas separadas por nível
  final Map<String, List<Map<String, Object>>> perguntas = {

    'Fácil': [
      {
        'pergunta': 'Qual é o maior rio do mundo?',
        'respostas': [
          {'texto': 'Amazonas', 'correta': true},
          {'texto': 'Nilo', 'correta': false},
        ]
      },
      {
        'pergunta':'Qual aquífero abrange o sul e o centro-oeste do Brasil e partes da Argentina e do Uruguai?',
        'respostas':[
          {'texto':'Aquífero Guarani', 'correta':true},
          {'texto':'Aquífero Amazonas', 'correta':false},
        ]
      },
      {
        'pergunta':'Em qual região fica o rio Amazonas?',
        'respostas':[
          {'texto':'Nordeste', 'correta':false},
          {'texto':'Centro-Oeste','correta':false},
          {'texto':'Norte','correta':true},
        ]
      },
      {
        'pergunta':'Como se chama o limite que separa uma bacia hidrográfica de outra vizinha?',
        'respostas':[
          {'texto':'Divisor de águas', 'correta':true},
          {'texto':'Foz','correta':false},
          {'texto':'Leito','correta':false},
          {'texto':'Afluente','correta':false},
        ]
      },
    ],

    'Médio': [
      {
        'pergunta': 'O que é uma bacia hidrográfica?',
        'respostas': [
          {'texto': 'Área drenada por rios', 'correta': true},
          {'texto': 'Um oceano', 'correta': false},
        ]
      },
      {
        'pergunta': 'Qual é a maior bacia hidrográfica do Brasil em termos de volume de água?',
        'respostas':[
          {'texto':'Bacia do Tocantins-Araguaia','correta':false},
          {'texto':'Bacia Amazônica','correta':true},
        ]
      },
      {
        'pergunta':'Qual é o maior rio totalmente brasileiro?',
        'respostas':[
          {'texto':'Rio Amazonas','correta':false},
          {'texto':'Rio Tietê','correta':false},
          {'texto':'Rio São Franciso','correta':true},
          {'texto':'Rio Negro','correta':false},
        ]
      },
      {
        'pergunta': 'Qual é a maior ilha fluvial do mundo?',
        'respostas':[
          {'texto':'Ilha do Bananal','correta':true},
          {'texto':'Ilha dos Faisões','correta':false},
          {'texto':'Ilha de Montreal','correta':false},
        ]
      }
    ],

    'Difícil': [
      {
        'pergunta': 'Qual é o principal afluente do Rio Amazonas?',
        'respostas': [
          {'texto':'Rio Trombetas', 'correta':false},
          {'texto': 'Rio Negro', 'correta': true},
          {'texto': 'Rio Tietê', 'correta': false},
          {'texto':'Rio Japurá', 'correta':false},
        ]
      },
      {
        'pergunta':'Qual rio possui a usina hidrelétrica de Itaipu?',
        'respostas':[
          {'texto':'Rio Amazonas','correta':false},
          {'texto':'Rio Tocantins','correta':false},
          {'texto':'Rio Paraná','correta':true},
          {'texto':'Rio São Francisco','correta':false},
        ]
      },
      {
        'pergunta':'Onde está a nascente do rio Amazonas?',
        'respostas':[
          {'texto':'Brasil', 'correta':false},
          {'texto':'Guiana Francesa','correta':false},
          {'texto':'Peru','correta':true},
        ]
      },
      {
        'pergunta':'Pelo quê o rio Japurá é conhecido?',
        'respostas':[
          {'texto':'abc', 'correta':false},
          {'texto':'Guiana Francesa','correta':false},
          {'texto':'Peru','correta':true},
        ]
      }

    ],
  };

  // função quando responde
  void responder(bool correta) {
    if (respondeu) return; // evita clicar várias vezes

    setState(() {
      respondeu = true;
      if (correta) pontuacao++;
    });

    // espera um pouco antes de ir pra próxima (efeito visual)
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        perguntaAtual++;
        respondeu = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    // se ainda não escolheu nível
    if (nivelSelecionado == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Atividades')),
        body: _selecionarNivel(),
      );
    }

    final lista = perguntas[nivelSelecionado]!;

    bool acabou = perguntaAtual >= lista.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Nível: $nivelSelecionado'),
      ),

      body: Container(
        padding: const EdgeInsets.all(20),

        // fundo azul (tema água)
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF81D4FA),
              Color(0xFFE1F5FE),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: acabou
            ? _resultado(lista.length)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  // PERGUNTA
                  Text(
                    lista[perguntaAtual]['pergunta'] as String,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // RESPOSTAS
                  ...(lista[perguntaAtual]['respostas']
                          as List<Map<String, Object>>)
                      .map((resp) {

                    bool correta = resp['correta'] as bool;

                    return _botaoResposta(
                      texto: resp['texto'] as String,
                      correta: correta,
                    );

                  }).toList(),
                ],
              ),
      ),
    );
  }

  // BOTÃO COM ANIMAÇÃO E COR DE ACERTO/ERRO
  Widget _botaoResposta({
    required String texto,
    required bool correta,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300), // animação suave
      margin: const EdgeInsets.only(bottom: 10),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),

          // muda cor quando responde
          backgroundColor: respondeu
              ? (correta ? Colors.green : Colors.red)
              : Colors.white,

          foregroundColor: Colors.black,
        ),

        onPressed: () => responder(correta),

        child: Text(texto),
      ),
    );
  }

  // TELA DE RESULTADO
  Widget _resultado(int total) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            'Pontuação: $pontuacao / $total',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              // reinicia tudo
              setState(() {
                nivelSelecionado = null;
                perguntaAtual = 0;
                pontuacao = 0;
              });
            },
            child: const Text('Voltar aos níveis'),
          ),
        ],
      ),
    );
  }

  // TELA DE ESCOLHA DE NÍVEL
  Widget _selecionarNivel() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text(
            'Escolha o nível',
            style: TextStyle(fontSize: 22),
          ),

          const SizedBox(height: 20),

          _botaoNivel('Fácil'),
          _botaoNivel('Médio'),
          _botaoNivel('Difícil'),
        ],
      ),
    );
  }

  // BOTÃO DE NÍVEL
  Widget _botaoNivel(String nivel) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(bottom: 10),

      child: ElevatedButton(
        onPressed: () {
          setState(() {
            nivelSelecionado = nivel;
          });
        },
        child: Text(nivel),
      ),
    );
  }
}