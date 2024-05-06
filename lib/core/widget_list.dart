import 'package:flutter/material.dart';

  //Classe sem manipulação de estado
class WidgetList extends StatelessWidget {
  final List<Hamburgueria> hamburguerias = [
    Hamburgueria(nome: 'McDonalds', rating: 5.0, valorMedio: 22),
    Hamburgueria(nome: 'Burger King', rating: 4.4, valorMedio: 24),
    Hamburgueria(nome: 'Bob\'s', rating: 3.8, valorMedio: 26),
    Hamburgueria(nome: 'Spot', rating: 4.4, valorMedio: 23),
    Hamburgueria(nome: 'Porpino', rating: 3.0, valorMedio: 40),
    Hamburgueria(nome: 'Gato Comeu', rating: 4.2, valorMedio: 22),
    Hamburgueria(nome: 'Jack Garage', rating: 4.5, valorMedio: 26),
    Hamburgueria(nome: 'Big Mengão', rating: 4.5, valorMedio: 18),
    Hamburgueria(nome: 'AussieGrill', rating: 4.9, valorMedio: 28),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromARGB(255, 131, 31, 31),
        title: const Center(
          child: Text('BelBurgers', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.builder(
          itemCount: hamburguerias.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color.fromARGB(255, 224, 224, 224), Color.fromARGB(255, 187, 187, 187)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10),        
                ),
                child: ListTile(
                  title: Center(
                    child: Text(hamburguerias[index].nome),
                  ),
                  subtitle: Center(
                    child: Text('Rating: ${hamburguerias[index].rating.toString()} - Valor Médio: R\$ ${hamburguerias[index].valorMedio.toStringAsFixed(2)}'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Hamburgueria {
  final String nome;
  final double rating;
  final double valorMedio;

  Hamburgueria({required this.nome, required this.rating, required this.valorMedio});
}