import 'package:flutter/material.dart';
/*import 'package:site_geografia/pag_atividade.dart';
import 'package:site_geografia/pag_conteudo.dart';
import 'package:site_geografia/sobre.dart';*/

class PagConteudo extends StatelessWidget {
  
  const PagConteudo({super.key});

  void mostrarDetalhes(BuildContext context, String titulo, String texto) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(titulo),
          content: SingleChildScrollView(child: Text(texto)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Fechar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rios do Brasil"),
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          //AMAZONAS
          Card(
            child: ListTile(
              title: const Text("Rio Amazonas"),
              subtitle: const Text("O Rio Amazonas é o maior rio do mundo em volume de água e um dos mais extensos. Ele nasce na Cordilheira dos Andes, no Peru, e atravessa a região Norte do Brasil até desaguar no Oceano Atlântico."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio Amazonas",
                      "Extensão: 6.937 km a 6.992 km\n"
                      "Nascente: Peru\n"
                      "Região: Norte do Brasil\n"
                      "Importância:\n"
                      "- Biodiversidade da Amazônia\n"
                      "- Transporte na região Norte\n"
                      "- Influencia o clima\n\n"
                      "Curiosidade:\n"
                      "Despeja tanta água que altera o mar.",
                );
              },
            ),
          ),

          //RIO PARANÁ
          Card(
            child: ListTile(
              title: const Text("Rio Paraná"),
              subtitle: const Text("O Rio Paraná é um dos principais rios da América do Sul. Ele nasce da união dos rios Grande e Paranaíba e percorre vários estados brasileiros, sendo importante para a geração de energia."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio Paraná",
                      "Extensão: 4.880 km\n"
                      "Nascente: União dos rios Grande e Paranaíba\n"
                      "Região: Sul, Sudeste e Centro-Oeste\n"
                      "Importância:\n"
                      "- Geração de energia hidrelétrica\n"
                      "- Navegação\n"
                      "- Agricultura\n\n"
                      "Curiosidade:\n"
                      "Abriga a Usina de Itaipu, uma das maiores do mundo.",
                );
              },
            ),
          ),

          //RIO MADEIRA
          Card(
            child: ListTile(
              title: const Text("Rio Madeira"),
              subtitle: const Text("O Rio Madeira é um dos maiores afluentes do Rio Amazonas. Ele atravessa a Amazônia e possui grande importância econômica e ambiental."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio Madeira",
                      "Extensão: 3.315 km\n"
                      "Nascente: Bolívia\n"
                      "Região: Norte do Brasil\n"
                      "Importância:\n"
                      "- Transporte fluvial\n"
                      "- Biodiversidade amazônica\n"
                      "- Geração de energia\n\n"
                      "Curiosidade:\n"
                      "É conhecido pela grande quantidade de sedimentos em suas águas.",
                );
              },
            ),
          ),

          //RIO PURUS
          Card(
            child: ListTile(
              title: const Text("Rio Purus"),
              subtitle: const Text("O Rio Purus é um importante afluente do Rio Amazonas. Seu percurso possui muitas curvas e atravessa áreas preservadas da floresta amazônica."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio Purus",
                      "Extensão: 3.218 km\n"
                      "Nascente: Peru\n"
                      "Região: Norte do Brasil\n"
                      "Importância:\n"
                      "- Sustento de comunidades ribeirinhas\n"
                      "- Biodiversidade\n"
                      "- Transporte regional\n\n"
                      "Curiosidade:\n"
                      "É considerado um dos rios mais sinuosos do mundo.",
                );
              },
            ),
          ),

          //RIO SÃO FRANCISCO
          Card(
            child: ListTile(
              title: const Text("Rio São Francisco"),
              subtitle: const Text("O Rio São Francisco é um dos rios mais importantes do Brasil. Ele atravessa diversas regiões e é conhecido como 'Velho Chico'."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio São Francisco",
                      "Extensão: 2.914 km\n"
                      "Nascente: Serra da Canastra - MG\n"
                      "Região: Sudeste e Nordeste\n"
                      "Importância:\n"
                      "- Abastecimento de água\n"
                      "- Irrigação\n"
                      "- Geração de energia\n\n"
                      "Curiosidade:\n"
                      "É um dos poucos rios totalmente brasileiros.",
                );
              },
            ),
          ),

          //RIO TOCANTINS
          Card(
            child: ListTile(
              title: const Text("Rio Tocantins"),
              subtitle: const Text("O Rio Tocantins é um importante rio brasileiro que atravessa o Centro-Oeste e o Norte do país, sendo muito utilizado para geração de energia."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio Tocantins",
                      "Extensão: 2.699 km\n"
                      "Nascente: Goiás\n"
                      "Região: Centro-Oeste e Norte\n"
                      "Importância:\n"
                      "- Hidrelétricas\n"
                      "- Navegação\n"
                      "- Desenvolvimento econômico\n\n"
                      "Curiosidade:\n"
                      "Possui a Usina Hidrelétrica de Tucuruí.",
                );
              },
            ),
          ),

          //RIO ARAGUAIA
          Card(
            child: ListTile(
              title: const Text("Rio Araguaia"),
              subtitle: const Text("O Rio Araguaia é um dos rios mais importantes do Brasil Central. Ele forma a maior ilha fluvial do mundo, a Ilha do Bananal."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio Araguaia",
                      "Extensão: 2.115 km\n"
                      "Nascente: Goiás\n"
                      "Região: Centro-Oeste e Norte\n"
                      "Importância:\n"
                      "- Turismo\n"
                      "- Pesca\n"
                      "- Biodiversidade\n\n"
                      "Curiosidade:\n"
                      "Forma a Ilha do Bananal, a maior ilha fluvial do mundo.",
                );
              },
            ),
          ),

          //RIO JAPURÁ
          Card(
            child: ListTile(
              title: const Text("Rio Japurá"),
              subtitle: const Text("O Rio Japurá é um importante afluente do Rio Amazonas e atravessa áreas de grande biodiversidade na Amazônia."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Rio Japurá",
                      "Extensão: 2.615 km\n"
                      "Nascente: Colômbia\n"
                      "Região: Norte do Brasil\n"
                      "Importância:\n"
                      "- Biodiversidade amazônica\n"
                      "- Transporte regional\n"
                      "- Recursos naturais\n\n"
                      "Curiosidade:\n"
                      "É conhecido pelas áreas alagadas e rica fauna.",
                );
              },
            ),
          ),

          //BACIAS HIDROGRÁFICAS
          Card(
            child: ListTile(
              title: const Text("Bacias Hidrográficas"),
              subtitle: const Text("As bacias hidrográficas são áreas drenadas por um rio principal e seus afluentes. Elas são fundamentais para o abastecimento de água e geração de energia."),
              onTap: () {
                mostrarDetalhes(
                  context,
                  "Bacias Hidrográficas",
                      "Principais bacias do Brasil:\n"
                      "- Amazônica\n"
                      "- Tocantins-Araguaia\n"
                      "- São Francisco\n"
                      "- Paraná\n\n"
                      "Importância:\n"
                      "- Abastecimento de água\n"
                      "- Agricultura\n"
                      "- Energia hidrelétrica\n"
                      "- Transporte fluvial\n\n"
                      "Curiosidade:\n"
                      "O Brasil possui uma das maiores reservas de água doce do planeta.",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
