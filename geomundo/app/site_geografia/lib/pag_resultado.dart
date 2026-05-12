import 'package:flutter/material.dart';
//import 'package:site_geografia/pag_atividade.dart';
//import 'package:site_geografia/pag_conteudo.dart';
//import 'package:site_geografia/sobre.dart';

// Classe da página de resultado
class ResultadoPage extends StatelessWidget {

  // Recebe os dados da atividade
  final int acertos;
  final int erros;

  const ResultadoPage({
    super.key,
    required this.acertos,
    required this.erros,
  });

  // Função para calcular a pontuação
  int calcularPontuacao() {
    return acertos * 10; // cada acerto vale 10 pontos (pode mudar)
  }

  // Função para gerar mensagem de desempenho
  String mensagemDesempenho() {
    if (acertos == 0) {
      return "😅 Tente novamente!";
    } else if (acertos <= 3) {
      return "🙂 Dá pra melhorar!";
    } else if (acertos <= 7) {
      return "👏 Bom trabalho!";
    } else {
      return "🏆 Excelente!";
    }
  }

  @override
  Widget build(BuildContext context) {

    int pontuacao = calcularPontuacao();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultado"),
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Título
              const Text(
                "Seu Desempenho",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              // Acertos
              Text(
                "✅ Acertos: $acertos",
                style: const TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 10),

              // Erros
              Text(
                "❌ Erros: $erros",
                style: const TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 10),

              // Pontuação
              Text(
                "⭐ Pontuação: $pontuacao",
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Mensagem de desempenho
              Text(
                mensagemDesempenho(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 40),

              // Botão refazer atividade
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // volta pra atividade
                  },
                  child: const Text("🔄 Refazer Atividade"),
                ),
              ),

              const SizedBox(height: 10),

              // Botão voltar ao início
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/', // rota inicial
                      (route) => false,
                    );
                  },
                  child: const Text("🏠 Página Inicial"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}