import 'package:flutter/material.dart';

class RioPage extends StatelessWidget {
  final String teste;
  //define e usa uma variavel para receber um CONTEXT(context) do main.dart e conectar as páginas
  const RioPage({super.key, required this.teste});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Principais Rios"),
        backgroundColor: Colors.blue,
      ),
      //permite a scrollagem
      body: SingleChildScrollView(
        child: Column(
          children: [

            // RIO AMAZONAS
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/Rio-amazonas.png",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio Amazonas",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio Amazonas é o maior rio do mundo em volume de água e um dos mais extensos do planeta. Possui enorme importância para o clima, biodiversidade, transporte e economia da região amazônica.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 6.992 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Peru, Colômbia e Brasil, deságua no Oceano Atlântico.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // RIO PARANÁ
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/rio-parana.png",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio Paraná",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio Paraná é o segundo maior rio da América do Sul e possui grande importância econômica, principalmente na geração de energia elétrica.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 4.880 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Brasil, Paraguai e Argentina, deságua no Rio da Prata.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // RIO MADEIRA
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/rio-madeira.webp",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio Madeira",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio Madeira é um importante afluente do Rio Amazonas, utilizado para transporte e geração de energia.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 3.250 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Bolívia, Rondônia e Amazonas, deságua no Rio Amazonas.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // RIO PURUS
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/rio-purus.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio Purus",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio Purus é um dos principais afluentes do Rio Amazonas e possui grande importância para transporte e pesca.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 3.200 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Peru, Acre e Amazonas, deságua no Rio Amazonas.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // RIO SÃO FRANCISCO
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/rio-saofrancisco.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio São Francisco",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio São Francisco é um dos mais importantes do Brasil, utilizado para abastecimento, irrigação e geração de energia.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 2.914 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Minas Gerais até Alagoas e Sergipe, deságua no Oceano Atlântico.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // RIO TOCANTINS
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/rio-tocantins.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio Tocantins",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio Tocantins possui grande importância para geração de energia elétrica e transporte na região Norte.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 2.699 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Goiás, Tocantins e Pará, deságua no Rio Pará.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // RIO ARAGUAIA
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/rio-araguaia.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio Araguaia",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio Araguaia é conhecido pela pesca, turismo e pela Ilha do Bananal, a maior ilha fluvial do mundo.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 2.115 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Goiás, Mato Grosso, Tocantins e Pará, deságua no Rio Tocantins.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // RIO NEGRO
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  Image.asset(
                    "assets/rio-negro.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Rio Negro",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "O Rio Negro é um dos maiores afluentes do Rio Amazonas e é conhecido por suas águas escuras.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text("Extensão: 2.250 km"),

                  const SizedBox(height: 5),

                  const Text(
                    "Colômbia, Venezuela e Amazonas, deságua no Rio Amazonas.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
