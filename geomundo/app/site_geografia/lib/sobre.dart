import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  final String nomeApp;
  final String disciplina;
  final String turma;

  const Sobre({
    super.key,
    required this.nomeApp,
    required this.disciplina,
    required this.turma,
  });

  @override
  Widget build(BuildContext context) {
    // Lista dos integrantes
    final List<Map<String, String>> integrantes = [
      {
        'nome': 'Fernanda Machado',
        'foto': 'assets/fernanda.jpg',
      },
      {
        'nome': 'Laura Ubaldo',
        'foto': 'assets/laura.jpg',
      },
      {
        'nome': 'Sophia Peron',
        'foto': 'assets/sophia.jpg',
      },
      {
        'nome': 'Yasmin Francischelli',
        'foto': 'assets/yasmin.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoMundo - Sobre Nós'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              nomeApp,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Disciplina escolhida: $disciplina',
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              'Turma: $turma do SESI CE-370',
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            const Text(
              'Objetivo do App',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'O aplicativo GeoMundo foi desenvolvido com o objetivo de auxiliar os estudantes no aprendizado de Geografia de forma interativa e educativa.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            const Text(
              'Integrantes do Grupo',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Fotos dos integrantes
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: integrantes.map((integrante) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage(integrante['foto']!),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      integrante['nome']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            const Text(
              'Professor: Gabriel Evaristo',
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            const Text(
              'Tecnologias Utilizadas',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Foram utilizados o Visual Studio Code e a linguagem Flutter para o desenvolvimento do aplicativo educacional GeoMundo.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}