import 'package:flutter/material.dart';
import 'package:site_geografia/pag_atividade.dart';
import 'package:site_geografia/pag_conteudo.dart';
import 'package:site_geografia/sobre.dart';
import 'package:site_geografia/pag_detalhes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeoMundo',

      theme: ThemeData(primaryColor: Color(0xFF2E7D32), useMaterial3: true),

      home: const PagInicialWrapper(),
    );
  }
}

class PagInicialWrapper extends StatelessWidget {
  const PagInicialWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // permite sobrepor o fundo e o conteúdo
        children: [
          // fundo com degradê
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2E7D32), Color(0xFFA5D6A7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // conteúdo principal por cima do fundo
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo em formato circular com sombra
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 10),
                      ],
                    ),
                    child: ClipOval(
                      // corta a imagem em círculo
                      child: Image.asset(
                        'assets/logo.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'GeoMundo',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'Disciplina: Geografia',
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),

                  const SizedBox(height: 40),
                  //segundo o gabriel, é mais facil ficar reescrevendo o código do que usar classes
                  //conteudos
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 15),

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green[800],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PagConteudo(),
                          ),
                        );
                      }, // aqui você pode colocar navegação depois
                      child: Text('📚 Conteúdos'),
                    ),
                  ),

                  //atividades/quiz
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 15),

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green[800],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PagAtividade(),
                          ),
                        );
                      }, // aqui você pode colocar navegação depois
                      child: Text('📝 Atividades / Quiz'),
                    ),
                  ),

                  //sobre nos
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 15),

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green[800],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sobre(
                              nomeApp: 'GeoMundo',
                              turma: '3ºEM-A',
                              disciplina: 'Geografia - Hidrografia',
                            ),
                          ),
                        );
                      }, // aqui você pode colocar navegação depois
                      child: Text('Sobre Nós'),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 15),

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green[800],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RioPage(teste: ''),
                          ),
                        );
                      }, // aqui você pode colocar navegação depois
                      child: Text('Mais informações'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
