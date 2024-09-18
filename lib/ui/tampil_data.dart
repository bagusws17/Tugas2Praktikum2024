import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Perkenalan",
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}