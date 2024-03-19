import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Center(child: Text("Column e Row")),
      ),
      body: body(),
    );
  }
}

// Il widget body() restituisce un SizedBox che si espande per riempire lo schermo.
// Column si comporta come il container
// cerca di allargarsi fino al massimo
// prendendo tutta l'altezza disponibile.
// il Container lo uso quando voglio definire degli stili
// mentre SizedBox quando non ci sono stili.
Widget body() => const SizedBox(
      width: double
          .infinity, // Larghezza massima disponibile, equivalente al 100% dello schermo.
      height: double
          .infinity, // Altezza massima disponibile, equivalente al 100% dello schermo.
      // per la Row l'asse principale è la X, mentre la cross è la Y.
      // child: Row(
      // per la Column l'asse principale è la Y, mentre la cross è la X.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .center, // Allinea i figli al centro dell'asse trasversale (asse X per Column).
        mainAxisSize: MainAxisSize
            .min, // La Column prende lo spazio minimo necessario sull'asse principale (asse Y per Column).
        mainAxisAlignment: MainAxisAlignment
            .center, // Centra i figli sull'asse principale (asse Y per Column).
        children: [
          Text("Riga 1", style: TextStyle(fontSize: 20)),
          Text("Riga 2", style: TextStyle(fontSize: 20)),
          Text("Riga 3", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
